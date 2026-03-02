#!/bin/bash
SSD="/mnt/ssd"
PROJECT="amaqela"

# Change directory
directory="${SSD}/projects/ingwaneorg/${PROJECT}"
if [ ! -d ${directory} ]; then
  echo "$0 ERROR: Directory not found - ${directory}"
  exit 1
fi
cd ${directory}

# Activate virtual enviroment
filename="venv/bin/activate"
if [ ! -f ${filename} ]; then
  echo "$0 ERROR: File not found - ${filename}"
  exit 2
fi
source ${filename}

# Run the program
filename="${PROJECT}.py"
if [ ! -f ${filename} ]; then
  echo "$0 ERROR: File not found - ${filename}"
  exit 3
fi
python ${filename} "$@"

#EOF
