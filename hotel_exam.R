hotel_bookings <- read_csv("D:/hotel_bookings.csv")
colnames(hotel_bookings)
hotel_bookings %>% 
  ggplot() + geom_point(aes(x= lead_time, y=children))

hotel_bookings %>% 
  ggplot() + geom_point(aes(x= stays_in_weekend_nights, y=children))

hotel_bookings %>% 
  ggplot() + geom_bar(aes(x=distribution_channel))

hotel_bookings %>% 
  ggplot() + geom_bar(aes(x=hotel, fill = market_segment))

hotel_bookings %>% 
  ggplot() + geom_bar(aes(x=hotel, fill = market_segment)) + facet_wrap(~ market_segment) 


onlineta_city_hotels <- hotel_bookings %>% 
  filter(hotel == "City Hotel" & market_segment == "Online TA")
View(onlineta_city_hotels)

onlineta_city_hotels_v2 <- hotel_bookings %>% 
  filter(hotel =="City Hotel") %>% 
  filter(market_segment == "Online TA")
View(onlineta_city_hotels_v2)

hotel_bookings %>% 
  ggplot()+geom_bar(aes(x=market_segment, fill = market_segment))+facet_wrap(~hotel)+
  labs(title = "Comparison of market segment by hotel type for hotel bookings", x="Market Segment", y="Number of Bookings")+
  theme(axis.text.x = element_text(angle = 90))
mindate<-min(hotel_bookings$arrival_date_year, na.rm = TRUE)
maxdate<-max(hotel_bookings$arrival_date_year, na.rm = TRUE)




hotel_bookings %>% 
  ggplot()+geom_bar(aes(x=market_segment, fill = market_segment))+facet_wrap(~hotel)+
  theme(axis.text.x = element_text(angle = 90))+
  labs(title = "Comparison of market segment by hotel type for hotel bookings", 
       caption = paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment", 
       y="Number of Bookings")
ggsave("Comparison of market segment by hotel type for hotel bookings.png")