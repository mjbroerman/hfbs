#' Lyrics from a good song
#'
#' @param line which line? defaults to random
#'
#' @return character
#' @export
#'
#' @examples
#' daft_lyric()

data("hfbs")

daft_lyric <- function(line = NA) {
  lyric <- hfbs

  line <- dplyr::coalesce(
    line,
    sample(seq(nrow(lyric)), 1)
  )

  lyric %>%
    dplyr::slice({{line}}) %>%
    dplyr::pull(lyric)
}

