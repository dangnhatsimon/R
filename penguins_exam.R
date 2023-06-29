library(ggplot2)
library(dplyr)
library(janitor)
library(skimr)
library(here)
library(tidyverse)
library(palmerpenguins)

data(penguins)
View(penguins)

penguins %>% 
  ggplot() + geom_point(aes(x=flipper_length_mm, y=body_mass_g, color=species, shape=species, size=species, alpha=species))

penguins %>% 
  ggplot() + geom_point(aes(x=flipper_length_mm, y=body_mass_g))+
  geom_smooth(aes(x=flipper_length_mm, y=body_mass_g, linetype = species))

penguins %>% 
  ggplot() + geom_jitter(aes(x=flipper_length_mm, y=body_mass_g))

penguins %>% 
  ggplot() + geom_jitter(aes(x=flipper_length_mm, y=body_mass_g))

data("diamonds")
diamonds %>% 
  ggplot() + geom_bar(aes(x=cut, color=cut, fill=clarity))

penguins %>% 
  ggplot() + geom_point(aes(x=flipper_length_mm, y=body_mass_g, color=species)) + facet_wrap(~species)

penguins %>% 
  ggplot() + geom_point(aes(x=flipper_length_mm, y=body_mass_g, color=species)) + facet_grid(sex~species)

p<-penguins %>% 
  ggplot() + geom_point(aes(x=flipper_length_mm, y=body_mass_g, color=species, shape=species, alpha=1)) +
  labs(title="Palmer Penguins: Body Mass vs Flipper Length", subtitle = "Sample of Three Penguin Species", 
       caption = "Data collected by Dr. Kristen Gorman")
p+annotate("text",x=220, y=3500, label = "The Gentoos are the largest", color ="purple", fontface ="bold", size =4.5, angle = 25)+
  annotate("rect", xmin = 170, xmax = 185, ymin =2500, ymax = 4000, alpha=0.5)

ggsave("Three Peguin Species.png")
png(file = "exampleplot.png", bg = "transparent")
plot(1:10)
rect(1, 5, 3, 7, col = "white")
dev.off()