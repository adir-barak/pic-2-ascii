#define STB_IMAGE_IMPLEMENTATION
#define STB_IMAGE_WRITE_IMPLEMENTATION
#include "Image.h"
#include "stb_image.h"
#include "stb_image_write.h"

Image::Image (const char* filename) {
  if (read (filename)) {
    std::cout << "Read: " << filename << std::endl;
    size = w*h*channels;
  }
  else {
    throw std::invalid_argument("Failed to read the image file.");
  }
}



Image::~Image() {
  stbi_image_free (data);
}

bool Image::read(const char* filename) {
  data = (unsigned char*) stbi_load(filename, &w, &h, &channels, 0);
  return data != nullptr;
}


ImageType Image::getFileType(const char* filename) {
  const char* ext = strrchr (filename, '.');
  if (ext != nullptr) {
    if (strcmp(ext, ".png") == 0) {
      return PNG;
    }
    if (strcmp(ext, ".jpg") == 0) {
      return JPG;
    }
    if (strcmp(ext, ".bmp") == 0) {
      return BMP;
    }
  }
  return INVALID;
}

//Image& Image::grayscale_avg() {
//  if (channels < 3) {
//    std::cout << "Image has less than 3 channels. assumed to be "
//                 "grayscale." << std::endl;
//  }
//  else {
//    for (int i = 0; i < size; i+=channels) {
//      int gray = (data[i] + data[i+1] + data[i+2]) / 3;
//      memset(data + i, gray, 3);
//    }
//  }
//  return *this;
//}

Image& Image::grayscale_lum() {
  if (channels < 3) {
    std::cout << "Image has less than 3 channels. assumed to be "
                 "grayscale." << std::endl;
  }
  else {
    for (int i = 0; i < size; i+=channels) {
      // values pulled from wikipedia.
      int gray = 0.2126*data[i] + 0.7152*data[i+1] + 0.0722*data[i+2];
      memset(data + i, gray, 3);
    }
  }
  return *this;
}