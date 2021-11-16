#Load Libraries
library(jsonlite)
library(purrr)
library(janitor)
library(dplyr)
library(stringr)
library(tibble)


set3 <- as.data.frame(fromJSON("C:\\Users\\Bran Hung\\Desktop\\Legends of Runeterra\\set3-en_us.json", flatten = TRUE))

#Remove duplicates
set3_df <- set3[,!(names(set3) %in% c("associatedCards", "associatedCardRefs", "assets", 'regionRef', 'regions', 'description', 'levelupDescription'))]
set3_df<- set3_df[,!(names(set3_df) %in% c("regionRefs", 'keywordRefs', 'spellSpeedRef', 'rarityRef', 'subtypes', 'supertype'))]


#Renaming columns for clarity
names(set3_df)[5] <- 'effect'
names(set3_df)[6] <- 'level_up_description'
names(set3_df)[9] <- 'card name'
set3_df$SetName <- 'Rising Tides'

#Add new column for set name
colnames(set3_df)[colnames(set3_df) == 'set'] <- 'setNumber' 
set3_df$setNumber <- 2


#Split keywords into multiple columns depending on the number of words.
set3_df <- set3_df %>%
  clean_names() %>% unnest_wider(keywords)


names(set3_df)[11] <- 'keyword_1'
names(set3_df)[12] <- 'keyword_2'
colnames(set3_df)[colnames(set3_df) == 'subtype'] <- 'affiliation'

set3_df$affiliation <- str_to_title(set3_df$affiliation)
set3_df$rarity <- str_to_title(set3_df$rarity)

write.csv(set3_df, "runeterra_set3.csv")