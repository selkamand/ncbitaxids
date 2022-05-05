
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
