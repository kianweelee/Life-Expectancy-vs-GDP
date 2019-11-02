# Requried Lib
library(tidyverse)
library(gganimate)
library(ggplot2)
library(plyr)
library(countrycode)

# Importing datasets. Download file from Kaggle (details in Readme.md).
data1 <- read.csv("/Users/kianweelee/Desktop/rstat/Life_Expectancy_Data.txt", header = T, sep = "\t")

# Adding a new column containing continent 
data1$Continent <- countrycode(sourcevar = data1[, "Country"],
                               origin = "country.name",
                               destination = "continent")

# Plotting static graph
ggplot(data1, aes(log(GDP), Life.expectancy, col = Continent, size = Population)) + 
  geom_point(alpha = 0.5) +
  facet_wrap(~ Continent) +
  geom_smooth(method = lm)
theme_linedraw() +
  ggtitle("Effect of GDP on life expectancy")

# Running linear regression model, with response variable being life exp and explanatory variable being GDP  
summary(lm(data1$Life.expectancy~data1$GDP))

# Implementing gganimate 
plot1 <- ggplot(data1, aes(log(GDP), Life.expectancy, col = Continent, size = Population)) + 
  geom_point(alpha = 0.5) +
  facet_wrap(~ Continent) +
theme_linedraw() +
  ggtitle("Effect of GDP on life expectancy")

anim <- plot1 + transition_time(data1$Year) +
  labs(title = "Year: {frame_time}") +
  ease_aes('linear')

anim_save("anim1.gif", anim)
