
<!-- README.md is generated from README.Rmd. Please edit that file -->

# rascut

<!-- badges: start -->
<!-- badges: end -->

The goal of rascut is to compile utility functions for Adult Social Care
team at the Department of Health and Social Care. The package helps the
team to maintain reproducibility across various projects and reduces
code duplication caused by copying entire function. The functions
included in the package can cover various situations. The package is
available only from [GitHub](https://github.com/) and devtools are
required to install the package.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("martincadek/rascut")
```

## Example

Typically the package is used in setup.R or similar. This is a basic
example which shows you how to solve a common problem:

``` r
library(rascut) # loading all functions from the package
library(rascut, lib.loc = "all_na_rows") # loading selected functions from the package

# Running the function
mtcars[1,] <- NA
head(mtcars)
#>                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
#> Mazda RX4           NA  NA   NA  NA   NA    NA    NA NA NA   NA   NA
#> Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
#> Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
#> Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
#> Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
#> Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
all_na_rows(mtcars)
#>           Mazda RX4       Mazda RX4 Wag          Datsun 710      Hornet 4 Drive 
#>               FALSE                TRUE                TRUE                TRUE 
#>   Hornet Sportabout             Valiant          Duster 360           Merc 240D 
#>                TRUE                TRUE                TRUE                TRUE 
#>            Merc 230            Merc 280           Merc 280C          Merc 450SE 
#>                TRUE                TRUE                TRUE                TRUE 
#>          Merc 450SL         Merc 450SLC  Cadillac Fleetwood Lincoln Continental 
#>                TRUE                TRUE                TRUE                TRUE 
#>   Chrysler Imperial            Fiat 128         Honda Civic      Toyota Corolla 
#>                TRUE                TRUE                TRUE                TRUE 
#>       Toyota Corona    Dodge Challenger         AMC Javelin          Camaro Z28 
#>                TRUE                TRUE                TRUE                TRUE 
#>    Pontiac Firebird           Fiat X1-9       Porsche 914-2        Lotus Europa 
#>                TRUE                TRUE                TRUE                TRUE 
#>      Ford Pantera L        Ferrari Dino       Maserati Bora          Volvo 142E 
#>                TRUE                TRUE                TRUE                TRUE

# Running the function without calling library()
mtcars[1,] <- NA
head(mtcars)
#>                    mpg cyl disp  hp drat    wt  qsec vs am gear carb
#> Mazda RX4           NA  NA   NA  NA   NA    NA    NA NA NA   NA   NA
#> Mazda RX4 Wag     21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
#> Datsun 710        22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
#> Hornet 4 Drive    21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
#> Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
#> Valiant           18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
rascut::all_na_rows(mtcars)
#>           Mazda RX4       Mazda RX4 Wag          Datsun 710      Hornet 4 Drive 
#>               FALSE                TRUE                TRUE                TRUE 
#>   Hornet Sportabout             Valiant          Duster 360           Merc 240D 
#>                TRUE                TRUE                TRUE                TRUE 
#>            Merc 230            Merc 280           Merc 280C          Merc 450SE 
#>                TRUE                TRUE                TRUE                TRUE 
#>          Merc 450SL         Merc 450SLC  Cadillac Fleetwood Lincoln Continental 
#>                TRUE                TRUE                TRUE                TRUE 
#>   Chrysler Imperial            Fiat 128         Honda Civic      Toyota Corolla 
#>                TRUE                TRUE                TRUE                TRUE 
#>       Toyota Corona    Dodge Challenger         AMC Javelin          Camaro Z28 
#>                TRUE                TRUE                TRUE                TRUE 
#>    Pontiac Firebird           Fiat X1-9       Porsche 914-2        Lotus Europa 
#>                TRUE                TRUE                TRUE                TRUE 
#>      Ford Pantera L        Ferrari Dino       Maserati Bora          Volvo 142E 
#>                TRUE                TRUE                TRUE                TRUE
```
