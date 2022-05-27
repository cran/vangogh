## ---- echo = FALSE------------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.path = "figure/",
  fig.height = 1
)

## ---- palettes_dummy----------------------------------------------------------
library("vangogh")

# See all palettes
names(vangogh_palettes)

# See all functions
lsf.str("package:vangogh")

## ---- StarryNight-------------------------------------------------------------
vangogh_palette("StarryNight")

## ---- StarryRhone-------------------------------------------------------------
vangogh_palette("StarryRhone")

## ---- SelfPortrait------------------------------------------------------------
vangogh_palette("SelfPortrait")

## ---- CafeTerrace-------------------------------------------------------------
vangogh_palette("CafeTerrace")

## ---- Eglise------------------------------------------------------------------
vangogh_palette("Eglise")

## ---- Irises------------------------------------------------------------------
vangogh_palette("Irises")

## ---- SunflowersMunich--------------------------------------------------------
vangogh_palette("SunflowersMunich")

## ---- SunflowersLondon--------------------------------------------------------
vangogh_palette("SunflowersLondon")

## ---- Rest--------------------------------------------------------------------
vangogh_palette("Rest")

## ---- Bedroom-----------------------------------------------------------------
vangogh_palette("Bedroom")

## ---- CafeDeNuit--------------------------------------------------------------
vangogh_palette("CafeDeNuit")

## ---- Chaise------------------------------------------------------------------
vangogh_palette("Chaise")

## ---- Shoes-------------------------------------------------------------------
vangogh_palette("Shoes")

## ---- Landscape---------------------------------------------------------------
vangogh_palette("Landscape")

## ---- Cypresses---------------------------------------------------------------
vangogh_palette("Cypresses")

## -----------------------------------------------------------------------------
library("ggplot2")
ggplot(mtcars, aes(factor(cyl), fill=factor(vs))) +  geom_bar() +
  scale_fill_manual(values = vangogh_palette("SelfPortrait")) 

ggplot(mtcars, aes(mpg, disp)) + 
  geom_point(aes(col = factor(gear)), size = 4) + 
  scale_color_manual(values = vangogh_palette("Cypresses"))

ggplot(iris) + 
    aes(Sepal.Length, Sepal.Width, color = Species) + 
    geom_point(size = 3) + 
    scale_color_manual(values = vangogh_palette("CafeDeNuit"))

## -----------------------------------------------------------------------------
x <- vangogh_palette("Chaise", 1000, "continuous")
x

## -----------------------------------------------------------------------------
oldpar <- par(mar = c(1, 1, 1, 1))
par(mar = c(1, 1, 1, 1))
pal <- vangogh_palette("SunflowersLondon", 21, type = "continuous")
image(volcano, col = pal)
par(oldpar)

## -----------------------------------------------------------------------------
ggplot(faithfuld) +
  aes(waiting, eruptions, fill = density) + 
  geom_tile() + 
  scale_color_manual(values = vangogh_palette("CafeTerrace")) 

## -----------------------------------------------------------------------------
ggplot(data = mpg) +
   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
   scale_colour_vangogh(palette="StarryRhone")

ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
   scale_fill_vangogh(palette = "StarryNight")

