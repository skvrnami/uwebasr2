
<!-- README.md is generated from README.Rmd. Please edit that file -->

# uwebasr2

<!-- badges: start -->
<!-- badges: end -->

The goal of uwebasr2 is to provide access to UWebASR API for audio
transcription.

## Installation

You can install the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("skvrnami/uwebasr2")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(uwebasr2)
```

``` r
babis_dopis <- uwebasr_post(lang_model = "CZ", "babis_dopis.mp3")
babis_dopis
#> [1] "Vážení spoluobčané dámy a pánové když dnes nebo zítra nebo v následujících dnech půjdete do vaši poštovní schránky tak tam najdete dopis můj dopis a určitého poznáte a v tom dopise vám píšu prosím abyste mu věnovali pět minut pět minut vašeho drahocenného času i kdyby to mělo být posledních pět minut kterém mě věnujete ve vašem životě a byl bych velice rád když po přečtení si řeknete no tak vláda ČR plnila ten program plnila sliby a udělala velice konkrétní věci a ten dopis obsahuje data fakta konkrétní věci co jsme udělali takže prosím vás hoďte to ty schránky hoďte si to přečíst já mám za to moc děkuju\n"
```
