##20220629
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

##20220630
#select function
select(dataset, column1, column2)
select(dataset, column1:column5) # 'by' parameter?
select(dataset, -(column1:column5))
#arrange function
arrange(name)
arrange(desc(name)) # How can I select multiple variables in descending
arrange(name, desc(start))#name을 먼저 arrange하고(알파벳순으로), 그리고 start를 내림차순으로 정렬함
#boolean
#and/or/xor-
xor(TRUE,TRUE)
>FALSE
XOR(TRUE,FLASE) #다른 게 있으면 tRUE 출력
>TRUE
FALSE,FALSE
>FALSE
!FALSE==TRUE
#group_by group by the observation
#summarize function
n()#number of rows in a group
sum()#addup 
mean(), sd(), min(), max()
#create output file
write_csv("presidential_updated.csv")

transmute()#only output data column
pull()#pulled data became vector
rename()#rename variables
distinct()#pull이랑 비슷하지만, distinct function give us dataframe, the tibble(dataframe output) 
count()#summarize(n())과 똑같음. 다만 n()만 사용하려면 summarize 안에 있어야함.
pivot_longer#
pivot_wider#
separate(col, into, sep, convert)# \ doing 10/100 < seperate into 2 columns. 10 a 20 b 30 c 40 d > seperate one column to 2 column

#for tidy, check the number of dataframe, the columns, rows, cells, and titles

##20220702


