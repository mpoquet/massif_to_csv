#!/usr/bin/env bash
set -eu
massif-to-csv massif.out.example result.csv
./sed-parser.bash massif.out.example > ./result-sed.csv
./comparator.R result.csv result-sed.csv
