
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ncbitaxids

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of ncbitaxids is to provide a simple interface for accessing
complete lists of ncbi taxids belonging to important groups - such as
bacteria, fungi, viruses, etc

## Installation

You can install the ncbitaxids from
[GitHub](https://github.com/selkamand/ncbitaxids) with:

``` r
# install.packages("devtools")
devtools::install_github("selkamand/ncbitaxids")
```

## Example

To get a list of available taxid lists, run:

``` r
library(ncbitaxids)

taxids_available_lists()
#> [1] "all_bacterial_taxids.05_05_2022" "all_chordata_taxids.05_05_2022" 
#> [3] "all_fungal_taxids.05_05_2022"    "all_sar_taxids.05_05_2022"      
#> [5] "all_viral_taxids.05_05_2022"
```

To load one of these lists, run `taxids_load_list("name_of_taxid_list")`
again but with one of the available taxid lists specified

``` r
taxids_load_list("all_bacterial_taxids.05_05_2022")
```

# Data source

Data was downloaded by navigating to the [NCBI taxonomy
browser](https://www.ncbi.nlm.nih.gov/Taxonomy/Browser/wwwtax.cgi?mode=Info&id=2&lvl=3&lin=f&keep=1&srchmode=1&unlock)
for major groups such as bacteria. Then selecting subtree links and
sending the results to file in `taxid list` format.

To add more taxid sets, write newline separated taxids to a file called
`<group_taxids_belong_to.date.txt>`. Make sure taxid file is in
inst/taxid_lists and the scripts of this package should automatically
find it
