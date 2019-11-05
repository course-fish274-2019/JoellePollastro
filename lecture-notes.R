



fish_data = read.csv("data/Gaeta_etal_CLC_data.csv")




library(dplyr)

# this code adds a column called length_cat, and if length is > 300, big is addded in column
fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))




