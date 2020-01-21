install.packages("tidyverse")
library(tidyverse)
install.packages(c("ggthemes", "ggrepel", "skimr"))
library(ggthemes)
library(grepel)
library(skimr)

load("./GIC-workshop/data/viz_data.RData")
ls()
glimpse(hdi)
g <- ggplot(data=hdi)
str(g)
glimpse(hdi)

g+
  geom_histogram(mapping = aes(x = LifeExp))

g <- ggplot(data = hdi, 
            mapping = aes(x = LifeExp))
g+
  geom_histogram(bins = 5)

g+
  geom_histogram()+
  geom_freqpoly()+
  geom_density()

g <- ggplot(hdi,
            aes(x=Region))

g+
  geom_bar()

g <- ggplot(hdi,
            aes(x=LifeExp,
                y=GNIpCap))

g+
  geom_point()+
  geom_smooth()+
  geom_smooth(method = "lm")

g+
  geom_point()+
  scale_y_log10(labels = scales::comma)

g+
  geom_point()+
  scale_y_log10(labels = scales::dollar)


g+
  geom_point(mapping = aes(color = Region))+
  scale_y_log10(labels = scales::dollar)+
  geom_smooth(method = "lm")+
  scale_color_brewer(palette = "Set3")+
  labs(y = "Income per capita in PPP$", 
       x = "Life Expectancy")

RColorBrewer::display.brewer.all()

install.packages("stargazer")
library(stargazer)
