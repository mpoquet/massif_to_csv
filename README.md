# massif_to_csv
A python script/module that converts [Valgrind's Massif tool](https://valgrind.org/docs/manual/ms-manual.html) traces to [CSV](https://en.wikipedia.org/wiki/Comma-separated_values).

## Usage
```
massif-to-csv <MASSIF-INPUT-TRACE-FILE> <CSV-OUTPUT-FILE>
```

## Installation
- [pip](https://pip.pypa.io/en/stable/) `pip install massif_to_csv`
- [Nix](https://nixos.org/nix/) `nix-env -f https://github.com/mpoquet/massif_to_csv/archive/master.tar.gz -iA massif_to_csv`
