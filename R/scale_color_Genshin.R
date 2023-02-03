

#'  Genshin Color Scales
#'  including
#'  \code{scale_color_Genshin()}
#'  \code{scale_colour_Genshin()}
#'  \code{scale_fill_Genshin()}
#'
#'
#' @param palette character name, same as Name in Genshinpalette()
#' @param alpha default 1
#' @param ... additional parameters for \code{\link[ggplot2]{discrete_scale}}
#'
#' @export scale_color_Genshin
#' @importFrom ggplot2 discrete_scale
#' @examples
#' library("ggplot2")
#' data("diamonds")
#'
#' ggplot(
#'   subset(diamonds, carat >= 2.2),
#'   aes(x = table, y = price, colour = cut)
#' ) +
#'   geom_point(alpha = 0.7) +
#'   geom_smooth(method = "loess", alpha = 0.1, size = 1, span = 1) +
#'   theme_bw() + scale_color_Genshin('ZHONGLI')
#'
#' ggplot(
#'   subset(diamonds, carat > 2.2 & depth > 55 & depth < 70),
#'   aes(x = depth, fill = cut)
#' ) +
#'   geom_histogram(colour = "black", binwidth = 1, position = "dodge") +
#'   theme_bw() + scale_fill_Genshin('ZHONGLI')
scale_color_Genshin <- function(palette = names(internal_da$countrylist$All), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("colour",
                 palette,
                 palette = function(n){
                   color=internal_da[['colorlist']][,palette]
                   colorRampPalette(colors = color)(n)
                 })
}
#' @export scale_color_Genshin
#' @rdname scale_Genshin
scale_colour_Genshin=scale_color_Genshin

#' @export scale_fill_Genshin
#' @importFrom ggplot2 discrete_scale
#' @rdname scale_Genshin
scale_fill_Genshin <- function(palette = names(internal_da$countrylist$All), alpha = 1, ...) {
  palette <- match.arg(palette)
  discrete_scale("fill",
                 palette,
                 palette = function(n){
                   color=internal_da[['colorlist']][,palette]
                   colorRampPalette(colors = color)(n)
                 })
}






