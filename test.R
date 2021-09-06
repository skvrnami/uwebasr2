# system("youtube-dl -x --audio-format mp3 -o '%(id)s.%(ext)s' https://www.youtube.com/watch?v=91XB8c8g3Z0")
#
# httr::GET()
#
# mp3_files <- list.files(".", pattern = "*.mp3")
#
# httr::POST(url = "https://lindat.cz/services/uwebasr/api/v1/CLARIN_ASR/CZ",
#            body = httr::upload_file(mp3_files[1])) -> out
#
# intToUtf8(out$content)
# stringr::str_conv(out$content, "UTF-8")

# system("youtube-dl -x --audio-format mp3 -o '%(id)s.%(ext)s' https://www.facebook.com/watch/?v=571824420515181")

# system("youtube-dl -o '%(id)s.%(ext)s' https://facebook.com/petr.fiala1964/posts/4266063623474488")
# system("youtube-dl -o '%(id)s.mp4' https://facebook.com/AndrejBabis/posts/2326969490773015")
# system("youtube-dl -o '%(id)s.mp4' https://www.facebook.com/ads/library/?active_status=all&ad_type=political_and_issue_ads&country=CZ&id=556362392232273&view_all_page_id=214827221987263&search_type=page&media_type=all")

# system("youtube-dl -o '%(id)s.%(ext)s' https://xtv.cz/x-talk/s-jagrem-jsme-pratele-ivan-bartos-chce-aby-nas-ridila-evropska-unie-novinari-zamerne-skodi-ceske-republice-prekvapil-me-podraz-od-ctk-rika-andrej-babis")

# library(Radlibrary)
# token <- token_get()$token
# leaders_ads <- readRDS("../fbads/output/leaders_ads_2021-09-01.RData")
