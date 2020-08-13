# `platformio-freebsd-tool-avrdude`

Trick `platformio` so that it thinks `tool-avrdude`, a `platformio` package,
is installed.

## Rationale

Same as in
[`trombik/platformio-freebsd-toolchain-xtensa`](https://github.com/trombik/platformio-freebsd-toolchain-xtensa).


## What it does

`init.sh` creates symlinks to the directories where the system package
installed files, and creates `package.json`.

## Requirements

Install the following packages.

- `devel/avrdude`

## Usage

```console
cd ~/.platformio/packages
git clone https://github.com/trombik/platformio-freebsd-tool-avrdude.git tool-avrdude
cd tool-avrdude
./init.sh
```

`init.sh` creates symlinks and `package.json`.

## Further improvement

The script should be able to support other OSes, such as OpenBSD as long as a
package for the OS is provided.
