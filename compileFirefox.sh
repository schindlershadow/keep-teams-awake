#!/bin/bash

rm firefox.xpi
zip -r firefox.zip src/*
mv firefox.zip firefox.xpi
