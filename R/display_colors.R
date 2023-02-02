#' @title display_colors
#' @description display the colors of character
#' @param Name character names, you can see all names using get_character_name

#' @return a color plot
#' @export
#'
#' @examples display_colors('ZHONGLI')

display_colors=function(Name){
  color=internal_da[['colorlist']][,Name]
  scales::show_col(color)
}
