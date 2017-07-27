#' Title
#'
#' @param ... additional arguments passed to \code{\link[ggplot2]{discrete_scale}}
#' @param palette One of core, primary, secondary
#'
#' @return
#' @export
#'
#' @examples
scale_colour_csiro <- function(..., palette = "core") {
  ggplot2::discrete_scale("colour", "csiro", csiro_pal(palette), ...)
}

csiro_pal <- function(pal) {
  function(n) {
    switch(pal,
           core = sample(c("#00A9CE", "#00313C"), n),
           primary = sample(c("#9FAEE5","#1E22AA","#41B6E6","#004B87","#2DCCD3","#007377","#71CC98","#007A53","#78BE20","#44693D"), n),
           secondary = sample(c("#6D2077","#DF1995","#E4002B","#E87722","#FFB81C"), n)
    )
  }
}
