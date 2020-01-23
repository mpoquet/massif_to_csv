#!/usr/bin/env Rscript
suppressWarnings(suppressMessages(library(tidyverse)))
suppressWarnings(suppressMessages(library(docopt)))

'Comparator script used in testing massif_to csv

Usage:
  test_comparator.R <massif_to_csv_output_csv> <sed_output_csv>

Options:
  -h --help     Show this screen.
' -> doc
args <- docopt(doc)

result = read_csv(args$"<massif_to_csv_output_csv>") %>%
    mutate(total=stack+heap+heap_extra)

result_sed = read_csv(args$"<sed_output_csv>") %>% select(-n)

are_equal = all.equal(result, result_sed)
if (are_equal != TRUE) {
    print('The two files differ in content.')
    print(are_equal)
    quit(status=1)
} else {
    print('The two files have the same content.')
}
