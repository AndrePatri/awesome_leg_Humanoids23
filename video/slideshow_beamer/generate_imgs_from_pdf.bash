#!/bin/bash

echo "Exctracting images from pdf...."
pdftoppm beamer.pdf extrctd_beam_imgs/slide0 -png -rx 300 -ry 300
