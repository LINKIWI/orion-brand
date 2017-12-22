#!/usr/bin/env bash

#
# Generate a favicon from the logo asset.
#

# Transparently padded version of the logo
convert -background none -gravity center -extent 250x250 orion-logo.svg orion-logo.png

# Favicon background
convert -size 250x250 xc:none -fill 'xc:#f1f1f1' -draw "circle 125,125 125,0" favicon-bg.png

# Overlay the intermediary images
convert favicon-bg.png orion-logo.png -gravity center -composite favicon.png

# Clean up
rm orion-logo.png favicon-bg.png
