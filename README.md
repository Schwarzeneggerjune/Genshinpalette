# Genshinpalette

`Genshinpalette` offers a collection of  color palettes inspired by Genshin character.
Palettes for all characters are included in the package, which will be updated from time to time.
# <img src="https://img.139y.com/m00/e7/6e/e8d93cb89fad7acfd6bdfd3e67bc54c6.jpg" alt="img" style="zoom: 25%;" />

## Installation

You can install `Genshinpalette` from GitHub:

```R
remotes::install_github("Schwarzeneggerjune/Genshinpalette",force = T)
```

## Usage

There are some simple  functions in this package, `get_character_name` can get the character names in Genshin. You can get theme color from characters using `Genshinpalette` , and `display_colors` can provide a preview of the color palette. `scale_color_Genshin` can provide color scale for ggplot object.

```R
library(Genshinpalette)
char_name=get_character_name(Country = "All")
head(char_name,10)
  ALBEDO     ALOY    AMBER  BARBARA  BENNETT    DIONA    DILUC   FISCHL    KAEYA     KLEE 
"阿贝多" "埃洛伊"   "安柏" "芭芭拉" "班尼特" "迪奥娜" "迪卢克" "菲谢尔"   "凯亚"   "可莉" 

Genshinpalette('BARBARA',6)
[1] "#2C3350" "#727782" "#9C9997" "#BEB8BA" "#CDC2B9" "#F4EFEA"

display_colors('FISCHL')

```


## Gallery

```R
library(ggplot2)
data("diamonds")

 ggplot(
  subset(diamonds, carat > 2.3 & depth > 10 & depth < 100),
  aes(x = depth, fill = cut)
) +
  geom_histogram(colour = "black", binwidth = 1, position = "dodge") +
  theme_bw()+
  scale_fill_Genshin(palette='JEAN')#same as `scale_fill_manual` in ggplot2
```

![JEAN](https://user-images.githubusercontent.com/102496771/216555468-682f7e17-e91f-4e56-a472-a15d0bafbefd.png)




```R
ggplot(
  subset(diamonds, carat > 2.3 & depth > 10 & depth < 100),
  aes(x = depth, fill = cut)
) +
  geom_histogram(colour = "black", binwidth = 1, position = "dodge") +
  theme_bw()+
  scale_fill_Genshin(palette='GANYU')
```
![GANYU](https://user-images.githubusercontent.com/102496771/216555533-de4edc6d-c58e-4635-a029-1175dae0ac6a.png)


## Palette display

![组合10](https://user-images.githubusercontent.com/102496771/216555571-c0c134db-4982-42c5-b2ce-42a84b79a32f.png)
![组合7](https://user-images.githubusercontent.com/102496771/216555636-c34656f8-a368-4b9a-93c4-cbc24bab1467.jpg)
![组合8](https://user-images.githubusercontent.com/102496771/216555646-e5646630-a3a2-41c5-9d8e-676328b2f6eb.jpg)
![组合9](https://user-images.githubusercontent.com/102496771/216555650-4f5ac18e-7a06-4b04-b90e-47d967c516a5.jpg)
![组合5](https://user-images.githubusercontent.com/102496771/216555652-919a555d-d9a6-4e33-b4ca-d47eb0ecd281.jpg)
![组合6](https://user-images.githubusercontent.com/102496771/216555656-8868ac8a-3884-4b70-b1df-ff8acef23ed6.jpg)


