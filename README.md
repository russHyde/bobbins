
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bobbins

<!-- badges: start -->

<!-- badges: end -->

The goal of `bobbins` is to compute various metrics of code quality
within R projects and provide a consistent report on those metrics.

This is barely even experimental at the moment, but builds on some work
I’ve been doing on detecting code duplication in *R*
[dupree](https://github.com/russHyde/dupree) and some other projects /
books that I’m a big fan of or have been reading recently:

  - [lintr](https://github.com/jimHester/lintr),

  - [goodpractice](https://github.com/mangoTheCat/goodpractice),

  - [pkgnet](https://github.com/uptake/pkgnet)

  - [clean
    architecture](https://books.google.co.uk/books?id=8ngAkAEACAAJ&dq=clean+architecture&hl=en&sa=X&ved=0ahUKEwjai_CJwM3kAhWVi1wKHSNzBfEQ6AEIKjAA)

<!--
  - I don't think the contents of this package have any place in lintr, styler
  or goodpractice.
  - lintr is about finding bits of a package / project that deviate from a
  user-specified style guide
  - styler is about modifying code to fit a style guide
  - goodpractice is about flagging parts of a code base that deviate from
  generally-accepted code standards
  - bobbins isn't going to modify code or tell you off; I'm principally going
  to use it to find bits of packages that need rethinking, and to compare
  how different packages change over time
-->

What metrics / phenomena could be interesting:

  - ‘push’ volume (how many lines of code are typically modified when
    fixing a bug or implementing a feature?)

  - ‘push’ skew (does a small subset of the code get modified over and
    over?)

  - dependency footprint (how many lines of code would need to be
    modified if any of the dependencies were altered)

  - function lengths / duplication volume / \[?\] coupling / \[?\]
    cohesion

<!--

- it might be interesting to view how packages evolve over time, relative to
  the dates when new R releases are introduced: maybe a fragile package would
  need more changes in the wake of a new R release than a well designed package
  
- also interesting to see how changes within a package influence other parts of
  the same package: If I rename this function / variable, how many places would
  need to be modified to get the package working again?

-->

[Why
`bobbins`?](https://www.urbandictionary.com/define.php?term=bobbins).
Firstly, it’s a term my dad uses to desribe stuff that’s useless /
rubbish. But also suggested entwined strands of cotton. Much like my
code does.

## Installation

You can install the development version of bobbins from
[github](https://github.com/russHyde/bobbins) with:

``` r
# devtools::install_github("russHyde/bobbins")
```

## Example

I’d like to implement `bobbins` in a similar way to `lintr`, so that you
can assess a particular metric on a package using `bobbins::bob(package
= "path/to/repo", metrics = list(my_metric = some_function))`

But I haven’t thought it through fully. So be patient.

This is a basic example which shows you how to solve a common problem:

``` r
library(bobbins)
## basic example code
```

TODO
