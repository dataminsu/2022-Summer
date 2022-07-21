install.packages("gapminder")
library(gapminder)
library(dplyr)
View(gapminder)
glimpse(gapminder) #str 대신 이거 사용

# long form 데이터는 다루기가 용이함 
library(ggplot2)
install.packages("plotly")
library(plotly)
g <- gapminder %>% 
  filter(year == 2007) %>% 
  ggplot(aes(x = gdpPercap, y = lifeExp, color = continent, size = pop, ids = country)) +#점 정보는 순서대로 출력
  geom_point(alpha = 0.5) +
  ggtitle("Life expectancy versus GDP, 2007") +
  xlab("GDP per capita (US$)") +
  ylab("Life expectancy (years)") +
  scale_color_discrete(name = "Continent") +
  scale_size_continuous(name = "Population") + 
  theme_bw()
ggplotly(g)

ggplot(data=gapminder) + geom_point(mapping = aes(x='gdp', y= 'infant_mortality', color = 'continent'))


gapminder_long <- gapminder %>%
  filter(continent=="Europe") %>% 
  select(country, year, gdpPercap) %>%
  as.data.frame()

gapminder_wide <- gapminder %>% 
  filter

View(gapminder_long)
View(gapminder_wide)