user_agent <- c("User-Agent" = "github.com/skvrnami/uwebasr2")

#' Handle response other than 200
#'
#' @param response Response from the server
#' @return No return value, called for side effects
handle_error_response <- function(response){
    if(response$status_code != 200){
        msg <- paste("HTTP Error", response$status_code)
        uwebasr_msg <- stringr::str_conv(response$content, "UTF-8")
        msg <- paste(msg, "Error message from UWebASR:", uwebasr_msg)
        usethis::ui_stop(msg)
    }
}

#' Post audio file to UWebASR speech recognition engine and retrieve transcription
#'
#' @param lang_model Language of speech recognition model (CZ or SK)
#' @param path_file Path to file to upload and recognize speech
#' @param format Format of output
#' @export
uwebasr_post <- function(lang_model = "CZ",
                         path_file,
                         format = "plaintext"){
    httr::POST(url = glue::glue("https://lindat.cz/services/uwebasr/api/v1/CLARIN_ASR/{lang_model}"),
               httr::add_headers(user_agent),
               body = httr::upload_file(path_file),
               query = list(format = format)) -> out

    handle_error_response(out)

    if(format == "json"){
        jsonlite::fromJSON(stringr::str_conv(out$content, "UTF-8"))
    }else{
        stringr::str_conv(out$content, "UTF-8")
    }
}

#' Get audio transcription from UWebASR speech recognition engine
#'
#' @param lang_model Language of speech recognition model (CZ or SK)
#' @param audio_url URL to audio file
#' @param format Format of output
#' @export
uwebasr_get <- function(lang_model,
                        audio_url,
                        format = "plaintext"){
    httr::GET(url = glue::glue("https://lindat.cz/services/uwebasr/api/v1/CLARIN_ASR/{lang_model}"),
              httr::add_headers(user_agent),
              query = list(url = audio_url,
                           format = format)) -> out

    handle_error_response(out)

    if(format == "json"){
        jsonlite::fromJSON(stringr::str_conv(out$content, "UTF-8"))
    }else{
        stringr::str_conv(out$content, "UTF-8")
    }
}
