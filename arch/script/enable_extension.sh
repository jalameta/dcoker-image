#!/bin/bash

read -ra extension_array <<< "${EXTENSIONS}"

echo "There are ${#extension_array[*]} extensions that will be enabled."

for ext in "${extension_array[@]}";
do
    sed -i "s/;extension=${ext}/extension=${ext}/" /etc/php/php.ini
    echo "extension ${ext} enabled!"
done