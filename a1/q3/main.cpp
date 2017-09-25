// Program for Question 3

// Author: Matthew Knight
// File Name: main.cpp
// Date: 2017-09-24

// This program generates an image as described in question 3 of 
// assignment 1 in ELEX 7815.

#include <random>
#include <CImg/CImg.h>

using namespace cimg_library;

int main(void)
{
    int height = 256;
    int width = 256;

    CImg<unsigned char> testImage(width, height, 1, 1, 64);

    // define the grays
    unsigned char outerGray[] = {128};
    unsigned char innerGray[] = {192};
    
    // draw circles
    testImage.draw_circle(width/2, height/2, 100, outerGray);
    testImage.draw_circle(width/2, height/2, 50, innerGray);

    // Set up random generator
    std::default_random_engine generator;
    std::uniform_int_distribution<unsigned char> distribution(0, 32);
    auto noise = std::bind(distribution, generator);

    // add noise to image
    for (int i = 0; i < testImage.width(); i++)
	for (int j = 0; j < testImage.height(); j++)
	    testImage(i, j) += noise() - 16;

    // save image
    testImage.save_tiff("../testImage.png"); 
    
}
