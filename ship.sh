#!/usr/bin/env bash

print_usage() {
    printf "\nTransfer shell scripts with ease\n\n"
    printf "Usage:\n"
    printf "  ship <files>...\n\n"
    printf "Options\n"
    printf "  -h, --help                 Get help\n"
    printf "  -v, --version              Print version\n\n"
    printf "Examples\n"
    printf "  ship script.sh             Transfer 'script.sh'\n"
    printf "  ship script.sh script2.sh  Transfer 'script.sh' and 'script2.sh'\n"
    printf "  ship .                     Transfer all scripts (*.sh) in current working directory\n\n"
    exit 0
}

print_version() {
  echo "ship v0.1.0"
  exit 0
}

copy_file() {
  file_name=$(basename "$1")
  file_name=${file_name/.sh/}
  cp "$1" "/usr/local/bin/$file_name"
}

if [ -z "$1" ]; then
  print_usage
fi

while [ -n "$1" ]; do
  case "$1" in
    -h|--help)
      print_usage
      ;;
    -v|--version)
      print_version
      ;;
    .)
      for f in ./*
      do
        if [[ "$f" == *.sh ]]; then
        copy_file "$f"
        fi
      done
      ;;
    *.sh)
      if [ -f "$1" ]; then
        copy_file "$1"
      else
        echo "$0: '$1' does not exist"
        exit 1
      fi
      ;;
    *)
      print_usage
      ;;
  esac
shift
done

echo "Shipping complete 🛥"

