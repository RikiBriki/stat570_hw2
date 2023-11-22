## To calcualte average of something you must calculate its ean, or was that another word
## with ean in it ? i cant recall 
apropos("ean")
apropos("\\w*ean\\b$")
## The apropos function searches global enviroment for matching strings 
apropos("pivot")
## we got null result, as tidyverse package is not loaded its not in enviroment
## and none of the loaded packages got it here 
library(tidyverse)
apropos("pivot")
## re call t only checks global enviroment.
## you can also check list of files in a folder 
head(list.files(path = "C:\\Users\\Alta\\OneDrive\\Desktop" ,pattern="sah"))
## Here is an SQL example as bonus
head(iris)
library(sqldf)
result = sqldf("select * from iris WHERE 
                Species LIKE '%set%'")
unique(result$Species)
unique(iris$Species)
## Summary.
vignette("regular-expressions", package="stringr")

# View the resulting dataset

iris_wider <- iris %>%
  separate(Species, into = c("Species", "Start With Set"), sep = "(?=set)", remove = FALSE)
iris_wider

apropos("\\w*ean\\b$")
"https://www.regular-expressions.info/tutorial.html"

# Resulting data
print(iris_long)


iris_long <- iris_small %>%
  pivot_longer(
    cols = everything(),
    names_to = c("Part", "Measurement"),
    values_to = "Value",
    names_pattern = "(\\w+)\\.(\\w+)"
  )

