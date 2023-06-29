bookings_df <- read_csv("D:/hotel_bookings.csv")

head(bookings_df)
glimpse(bookings_df)
str(bookings_df)

trimmed_df <- bookings_df %>% 
  select ('hotel', 'is_canceled', 'lead_time')
View(trimmed_df)

example_df <- bookings_df %>% 
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")
View(example_df)

example2_df <- bookings_df %>%
  mutate(guests = adults + children + babies)
head(example2_df)

example3_df <- bookings_df %>%
  summarise(number_canceled <- sum(is_canceled))
head(example3_df)