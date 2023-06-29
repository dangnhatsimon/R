penguins %>% group_by(island) %>%  drop_na() %>%  summarise(mean_bill_length_mm<-mean(bill_length_mm))
penguins %>% group_by(island) %>%  drop_na() %>%  summarise(max_bill_length_mm<-max(bill_length_mm))
penguins %>% group_by(species, island) %>%  drop_na() %>%  summarise(min_bl<-min(bill_length_mm), mean_bl <- mean(bill_length_mm))
penguins %>%  filter(species == "Adelie")

penguins %>% group_by(species) %>%  drop_na() %>%  summarise(min_bd=min(bill_depth_mm), mean_bd = mean(bill_depth_mm), sd_bd<- sd(bill_depth_mm))
min_bd=min(penguins$bill_depth_mm, na.rm = TRUE)
min_bd2<-min(penguins$bill_depth_mm, na.rm = TRUE)
?min
