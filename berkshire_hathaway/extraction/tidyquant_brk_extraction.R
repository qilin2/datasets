#Load Libraries
library(quantmod)
library(tidyquant)
library(dplyr)
library(purrr)

#Data Extraction
#Load stock price data into data frames
berkshire_df <- tq_get(c("BRK-A","BRK-B"),
                    from = '1996-05-10',
                    to = '2021-11-15',
                    get = 'stock.prices')



#Data Storage
#Datasets
df <- as.data.frame(berkshire_df)

berkshire_a <- df %>%
  filter(symbol == 'BRK-A')

berkshire_b <- df %>%
  filter(symbol == 'BRK-B')


#Save data frames
write.csv(df, "berkshire.csv", row.names = TRUE)
write.csv(berkshire_a, "berkshire_a.csv", row.names = TRUE)
write.csv(berkshire_b, "berkshire_b.csv", row.names = TRUE)