
# load libraries 

library(dplyr)

library(ggplot2)


#insert data from online
fish_data = read.csv("data/Gaeta_etal_CLC_data_1.csv")


# this code adds a column called length_cat, and if length is > 300, big is addded in column

fish_data_cat = fish_data %>%
  mutate(length_cat = ifelse(length > 300, "big", "small"))


#Use dplyr to remove the fish with a scalelength of less than 1 mm from fish_data_cat, The new dataset will have 4,029 rows.

fish_data_cat_clean <- filter(fish_data_cat,scalelength >1)



#To look at the relationship between the length of each fish’s body and the size of its scale across the different lakes sampled in these data, create a scatterplot with length on the x-axis and scalelength on the y-axis, then color the points using lakeid.

ggplot(fish_data_cat_clean, aes(x = length, y = scalelength, color = lakeid)) +
  geom_point(size =3)
 
# prof suggested this on github to commit these changes, and i pulled it from git
ggplot(fish_data_cat, aes(x = scalelength, fill = length_cat)) +
  geom_histogram(bins=80)

