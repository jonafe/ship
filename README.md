# Ship

Transfer shell scripts with ease.

## Usage

```shell
$ ship

Transfer shell scripts with ease

Usage:
  ship <file>...

Options:
  -h, --help                 Get help
  -v, --version              Print version

Examples:
  ship script.sh             Transfer 'script.sh'
  ship script.sh script2.sh  Transfer 'script.sh' and 'script2.sh'
  ship .                     Transfer all scripts (*.sh) in current working directory
```

## Installation

```shell
$ curl -sSL https://github.com/jonafe/ship/releases/download/v0.2.0/ship.sh > /usr/local/bin/ship && chmod 755 /usr/local/bin/ship
```