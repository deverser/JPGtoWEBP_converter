#!/bin/bash

mkdir converted

for file in *.jpg; do
   echo -n Converting ${file}...
   convert -auto-orient -quality 70% "$file" "converted/$file.webp"
   echo done
done

for file in *.JPG; do
   echo -n Converting ${file}...
   convert -auto-orient -quality 70% "$file" "converted/$file.webp"
   echo done
done

rename 's/(\.jpg|\.JPG).webp/.webp/' converted/*
echo All done

