#!/bin/bash

for file in files/*; do
    [ -f "$file" ] || continue

    filename=$(basename "$file")
    first_letter=${filename:0:1}
    folder=${first_letter,,}

    mv -- "$file" "$folder/"
done