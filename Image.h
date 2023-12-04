#include "string.h"
#include <iostream>

enum ImageType {
    PNG,JPG,BMP, INVALID
};

struct Image {
    unsigned char* data = nullptr; // Image data
    size_t size = 0; // Size of the image data in bytes
    int w; // Width of the image
    int h; // Height of the image
    int channels; // Number of color channels

    // Constructor: Reads image from file and initializes data
    Image (const char* filename);
    // Destructor: Frees the allocated image data
    ~Image();

    // Reads image from file and returns true if successful
    bool read(const char* filename);

    // Determines the file type based on the file extension
    static ImageType getFileType(const char* filename);

    // Converts the image to grayscale using luminosity method
    Image& grayscale_lum();

    // Converts the image to grayscale using average method
    // Image& grayscale_avg();
};