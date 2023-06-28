#!/bin/bash
if [ "$1" = "--date" ]; then
  date
elif [ "$1" = "--logs" ]; then
  if [ -z "$2" ]; then
    num_logs=100
  else
    num_logs="$2"
  fi
  for ((i=1; i<=num_logs; i++)); do
    filename="log${i}.txt"
    echo -e "Plik: $filename\n Skrypt: $0\nData: $(date)" > "$filename"
  done
elif [ "$1" = "--help" ]; then
  echo "- --date"
  echo "- --logs"
  echo "- --help."
else
  echo ":("
fi
