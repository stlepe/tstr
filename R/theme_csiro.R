#' CSIRO theme
#'
#' Produce a ggplot \code{\link[ggplot2]{theme}} in line with the CSIRO Brand Identity Guidelines
#'
#' @param base_size Base font size from plot
#' @param base_family Base font family
#'
#' @importFrom ggplot2 element_blank element_line element_text
#'
#' @return A ggplot theme
#' @export
theme_csiro <- function(base_size = 12, base_family = "Calibri") {
  ggplot2::theme_minimal(base_size, base_family) +
    ggplot2::theme(
      panel.grid.minor = element_blank(),
      panel.grid.major.x = element_blank(),
      panel.grid.major.y = element_line(size = 0.5, colour="#c2c2c2"),
      axis.line.x = element_line(colour = "black", size = 0.75),
      legend.position = "bottom",
      legend.justification = "left",
      axis.ticks.x = element_line(colour="black", size = 0.75),
      axis.title.x = element_text(hjust = 1),
      strip.text = element_text(family=base_family, face = "bold"),
      plot.title = element_text(family=base_family, face = "bold")
    )
}

#' Title
#'
#' @param title
#' @param subtitle
#' @param x
#' @param y
#'
#' @return
#' @export
#'
#' @examples
title_csiro <- function(title = NULL, subtitle = NULL, x = NULL, y = NULL) {
  list(
    ggplot2::ggtitle(toupper(title), toupper(subtitle)),
    ggplot2::xlab(toupper(x)),
    ggplot2::ylab(toupper(y))
  )
}
