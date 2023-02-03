# Genshinpalette

`Genshinpalette` offers a collection of  color palettes inspired by Genshin character.

# <img src="https://img.139y.com/m00/e7/6e/e8d93cb89fad7acfd6bdfd3e67bc54c6.jpg" alt="img" style="zoom: 25%;" />

## Installation

You can install `Genshinpalette` from GitHub:

```R
remotes::install_github("Schwarzeneggerjune/Genshinpalette",force = T)
```

## Usage

There are three simple  functions in this package, `get_character_name` can get the character names in Genshin. You can get theme color from characters using `Genshinpalette` , and `display_colors` can provide a preview of the color palette.

```R
char_name=get_character_name(Country = "All")
head(char_name,10)
  ALBEDO     ALOY    AMBER  BARBARA  BENNETT    DIONA    DILUC   FISCHL    KAEYA     KLEE 
"阿贝多" "埃洛伊"   "安柏" "芭芭拉" "班尼特" "迪奥娜" "迪卢克" "菲谢尔"   "凯亚"   "可莉" 

Genshinpalette('BARBARA',6)
[1] "#2C3350" "#727782" "#9C9997" "#BEB8BA" "#CDC2B9" "#F4EFEA"

display_colors('FISCHL')

```

![Rplot](C:\Users\Administrator\Desktop\GenshinPalette\Rplot.png)

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
  scale_fill_manual(values = Genshinpalette('JEAN'))
```

![JEAN](F:\MZBJ\Genshin\JEAN.png)



```R
ggplot(
  subset(diamonds, carat > 2.3 & depth > 10 & depth < 100),
  aes(x = depth, fill = cut)
) +
  geom_histogram(colour = "black", binwidth = 1, position = "dodge") +
  theme_bw()+
  scale_fill_manual(values = Genshinpalette('GANYU'))
```

![GANYU](F:\MZBJ\Genshin\GANYU.png)

## Palette display

![组合1](F:\MZBJ\Genshin\组合1.jpg)

![组合2](F:\MZBJ\Genshin\组合2.jpg)

![组合3](F:\MZBJ\Genshin\组合3.jpg)

![组合4](F:\MZBJ\Genshin\组合4.jpg)

![组合8](F:\MZBJ\Genshin\组合8.jpg)

![组合10](F:\MZBJ\Genshin\组合10.png)

![组合5](F:\MZBJ\Genshin\组合5.jpg)

