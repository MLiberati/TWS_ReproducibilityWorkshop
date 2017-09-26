# I changed this (test)
#' # Data Processing

#' ## Preamble - Load libraries and clear environment
#+ preamble, warnings=FALSE, errors=FALSE
library(knitr)
remove(list=ls())

#' ### Step 1 - Load data from csv
rikz.data1 <- read.csv("data/raw_data/RIKZ_1.csv")
rikz.data2 <- read.csv("data/raw_data/RIKZ_2.csv")
rikz.data3 <- read.csv("data/raw_data/RIKZ_3.csv")
rikz.data4 <- read.csv("data/raw_data/RIKZ_4.csv")

#' ### Step 2 - Combine dataset together
rikz.data <- rbind(rikz.data1, # week with date
                   rikz.data2, 
                   rikz.data3,
                   rikz.data4) 

# double check by sample size per week
table(rikz.data$week)

#' ### Step 3 - Save the processed data
save(rikz.data, file="data/processed_data/rikz_data.Rdata")
