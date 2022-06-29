#20220629
df <-data.frame(name = c('Luke Skywalker', 'C-3PO', 'R2-D2', 'Darth Vader', 'Leia Organa','Owen Lars'),
                height=c(172, 167, 96, 202, 150, 178),
                mass=c(77,75,32,136,49,120))
library(ggplot2)

#히스토그램(histogram)
qplot(x=height, data=starwars)
#qplot 산점도
qplot(x=height, y=mass, data=df)
library(dplyr)
qplot(x=height, y=mass, data=starwars)
ggplot(data=starwars, aes(x=height, y=mass)) +geom_point()
View(starwars)

# Load required packages(penguins)
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(palmerpenguins))
qplot(x=flipper_length_mm, data=penguins)#default bins = 30
qplot(x=flipper_length_mm, data=penguins, bins=15)#manipulate the number of bins
qplot(x=bill_length_mm, y=body_mass_g, color=species, data=penguins)#add color on variables

# Load packages
suppressPackageStartupMessages(library(tidyverse))
# Load data set
streaming <- read_csv("streaming.csv")
View(streaming)
qplot(x=im_db, binwidth=0.5, data=streaming)
qplot(x=im_db, binwidth=0.5, fill=main_language, data=streaming)#fill variable with color
#facet
qplot(
  x = im_db, 
  binwidth = 0.5, 
  facets = ~ age,
  data = streaming)
#linear regression
qplot(
  x = rotten_tomatoes, 
  y = im_db, 
  geom = "smooth", 
  method = "lm", 
  data = streaming
)

#20220630