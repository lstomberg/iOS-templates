#!/bin/bash

mkdir ~/Library/Developer/Xcode/Templates &>/dev/null
cp -r ViewController.xctemplate ~/Library/Developer/Xcode/Templates/

echo 
echo Installing Xcode templates...
echo Using template path: ~/Library/Developer/Xcode/Templates/
echo Copied ViewController.xctemplate.
echo Done
echo
