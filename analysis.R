# A brief analysis of the NYT COVID-19 data

# Load the tidyverse package
library(tidyverse)

# Load the *national level* data into a variable. `national` 
national <- read.csv("https://raw.githubusercontent.com/nytimes/covid-19-data/master/us.csv")

# How many cases have occured in the U.S.? `total_cases`


# How many deaths have occured in the U.S.? `total_deaths`


# Run the following code to create a plot of cumulative cases over time
# (we'll explain the ggplot2 syntax next week)
cases_plot <- ggplot(data = national) +
  geom_line(mapping = aes(x = as.Date(date), y = cases)) +
  labs(x = "Date", y = "Cumulative Cases", title = "U.S. COVID Cases")
