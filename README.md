
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

## Usage

``` r
library(uwebasr2)
```

The library contains two functions that provide access to UWebASR API:
`uwebasr_post` and `uwebasr_get`.

Both of the functions have similar parameters:

-   `lang_model` - Language model that is to be used for speech
    transcription. The available models are `CZ` for Czech language
    model and `SK` for Slovak language model.
-   `file_path` (in the case of `uwebasr_post`) / `audio_url` (in the
    case of `uwebasr_get`) - path or URL to the audio.
-   `format` - Format of the output. Available formats include:
    `plaintext` (default option) and `json`. The API also accepts
    formats `trs`, `extended_trs` and `webvtt`, but the working of the
    package is not tested for using these formats.

The `uwebasr_post` uploads file from local filesystem to the API and
returns the transcription.

``` r
download.file("http://skvrnami.github.io/uwebasr/babis_dopis.mp3", "babis_dopis.mp3")
babis_dopis <- uwebasr_post(lang_model = "CZ", "babis_dopis.mp3")

cat(babis_dopis)
#> Vážení spoluobčané dámy a pánové když dnes nebo zítra nebo v následujících dnech půjdete do vaši poštovní schránky tak tam najdete dopis můj dopis a určitého poznáte a v tom dopise vám píšu prosím abyste mu věnovali pět minut pět minut vašeho drahocenného času i kdyby to mělo být posledních pět minut kterém mě věnujete ve vašem životě a byl bych velice rád když po přečtení si řeknete no tak vláda ČR plnila ten program plnila sliby a udělala velice konkrétní věci a ten dopis obsahuje data fakta konkrétní věci co jsme udělali takže prosím vás hoďte to ty schránky hoďte si to přečíst já mám za to moc děkuju
```

``` r
# Doesn't work for some reason
grospic_intro <- uwebasr_get("CZ", "http://skvrnami.github.io/uwebasr/grospic.mp3", "plaintext")
cat(grospic_intro)
```
