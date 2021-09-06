# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

#' Post audio file to UWebASR speech recognition engine and retrieve transcription
#'
#' @param lang_model Language of speech recognition model (CZ or SK)
#' @param path_file Path to file to upload and recognize speech
#' @param format Format of output
post_uwebasr <- function(lang_model = "CZ",
                         path_file,
                         format = "plaintext"){
    httr::POST(url = glue::glue("https://lindat.cz/services/uwebasr/api/v1/CLARIN_ASR/{lang_model}"),
               body = httr::upload_file(path_file)) -> out

    stringr::str_conv(out$content)

}

#' Get audio transcription from UWebASR speech recognition engine
#'
#' @param lang_model Language of speech recognition model (CZ or SK)
#' @param path_file Path to file to upload and recognize speech
#' @param format Format of output
get_uwebasr <- function(lang_model,
                        audio_url,
                        format = "plaintext"){
    stop("Not implemented")
}
