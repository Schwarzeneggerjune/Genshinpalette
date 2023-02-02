#' @title Genshinpalette
#' @description Genshinpalette Generate a color palette based on the theme
#'  color of Genshin character creation
#' @param Name character names, you can see all names using get_character_name
#' @param Count the number of colors you want to generate
#'
#' @return a vector of colors
#' @export
#'
#' @examples Genshinpalette('ZHONGLI',8)
#'
Genshinpalette=function(Name,Count=6){
  color=internal_da[['colorlist']][,Name]
  colorRampPalette(colors = color)(Count)
}
