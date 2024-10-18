#!/bin/bash

# Remove the previously compiled version, if present.
# Will give a warning if the files don't exist.
rm firefox.xpi
rm chrome.zip

# Go into the source directory before zipping.
# This is important for the directory structure of the zip file.
cd src

# Zip the entire contents of the src directory.
zip -r chrome.zip *

# Duplicate the zip file and give it a different name.
# Firefox addons have an xpi extension, whereas chrome extensions
# use crx or zip.
# xpi files are still just zip files though. So copying the zip file
# and renaming it should suffice.
cp chrome.zip firefox.xpi

# Move the files out of the source directory.
mv chrome.zip firefox.xpi ../
