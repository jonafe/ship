# Ship

Transfer shell scripts with ease

## Usage

```console
$ ship

Transfer shell scripts with ease

Usage:
  ship <files>...

Options:
  -h, --help                 Get help
  -v, --version              Print version

Examples:
  ship script.sh             Transfer 'script.sh'
  ship script.sh script2.sh  Transfer 'script.sh' and 'script2.sh'
  ship .                     Transfer all scripts (*.sh) in current working directory
```

## Installation

```console
curl -sS https://raw.githubusercontent.com/jonafe/ship/HEAD/ship.sh > /usr/local/bin/ship && chmod 755 /usr/local/bin/ship
```