#include "string.h"
#include <iostream>

enum ImageType {
    PNG,JPG,BMP, INVALID
};

struct Image {
    unsigned char* data = nullptr;
    size_t size = 0;
    int w;
    int h;
    int channels;

    Image (const char* filename);
    ~Image();

    bool read(const char* filename);

    static ImageType getFileType(const char* filename);

//    Image& grayscale_avg();

    Image& grayscale_lum();
};