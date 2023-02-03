#' @title get_character_name
#' @param Country a country name could be one of All, Mondstadt, Liyue, Inazuma, Sumeru, Fontaine, Natlan, Snezhnaya
#' @description get_character_name can obtain the character name in Teyvat
#' @return a vector that contains character name, you can use these name to Genshinpalette
#' @export
#'
#' @examples
#' get_character_name('Liyue')
#'
get_character_name=function(Country='All'){

  rt=internal_da[['countrylist']][[Country]]
rt
}

