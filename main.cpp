#include "Image.h"
#include <algorithm>

char ascii_scale[] = " .-=+*xILN#%0MW@";


int main(int argc, char *argv[]) {
  // Check if the correct number of arguments is provided and the file type
  // is valid, or the 'alt' option is given
  if (!(argc == 2 || argc == 3) || Image::getFileType (argv[1]) == INVALID ||
  (argc == 3 && strcmp (argv[2],"alt"))) {
    std::cout << "Usage: PATH-TO/filename.<png,jpg,bmp>." << std::endl;
    return 1;
  }

  // If given the 'alt' argument, reverse the ASCII brightness scale
  if (argc == 3) {
    int current = 0;
    size_t end = strlen(ascii_scale) - 1;

    while (current < end) {
      std::swap(ascii_scale[current], ascii_scale[end]);
      current++;
      end--;
    }
  }

  // Read the image file and turn it into a grayscale image.
  Image image = Image(argv[1]);
  image.grayscale_lum();

  // Calculate the actual width of the processed image.
  int grayscale_image_stride = image.w*image.channels;

  // Print the ASCII character matching the brightness level of the pixel.
  // with '.' for spacing and better preserving the aspect ratio
  for (int i=0; i<image.h; i++) {
    for (int j=0;j<grayscale_image_stride;j+=image.channels) {
  std::cout << ascii_scale[(image.data[i*grayscale_image_stride+j]/16)] <<
  ".";
    }
    std::cout << std::endl;
  }

  return 0;
}
