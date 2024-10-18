#!/bin/bash

rm firefox.xpi
cd src
zip -r firefox.zip *
mv firefox.zip ../firefox.xpi
