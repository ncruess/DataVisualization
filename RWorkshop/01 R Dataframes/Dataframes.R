require("ggplot2")
"Displaying the top few rows of a dataframe:"
head(diamonds)
"Summary of each variable in the dataframe."
names(diamonds)
?diamonds
summary(diamonds)
"Selecting a subset of columns from a dataframe:"
head(subset(diamonds, select = c(carat, cut)))
"Selecting a subset of rows from a dataframe:"
head(subset(diamonds, cut == "Ideal" & price > 5000))
"Find average price group by color (plyr package is needed)"
require("plyr")
ddply(subset(diamonds, cut == "Ideal" & price > 5000),~color, summarise, o=mean(price, na.rm = TRUE))
