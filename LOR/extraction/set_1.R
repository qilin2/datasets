#Load Libraries
library(jsonlite)
library(purrr)
library(janitor)
library(dplyr)
library(stringr)
library(tibble)


set1 <- as.data.frame(fromJSON("C:\\Users\\Bran Hung\\Desktop\\Legends of Runeterra\\set1-en_us.json", flatten = TRUE))

#Remove duplicates
set1_df <- set1[,!(names(set1) %in% c("associatedCards", "associatedCardRefs", "assets", 'regionRef', 'regions', 'description', 'levelupDescription'))]
set1_df<- set1_df[,!(names(set1_df) %in% c("regionRefs", 'keywordRefs', 'spellSpeedRef', 'rarityRef', 'subtypes', 'supertype'))]


#Renaming columns for clarity
names(set1_df)[5] <- 'effect'
names(set1_df)[6] <- 'level_up_description'
names(set1_df)[9] <- 'card name'
set1_df$SetName <- 'Rising Tides'

#Add new column for set name
colnames(set1_df)[colnames(set1_df) == 'set'] <- 'setNumber' 
set1_df$setNumber <- 2


#Split keywords into multiple columns depending on the number of words.
set1_df <- set1_df %>%
  clean_names() %>% unnest_wider(keywords)


names(set1_df)[11] <- 'keyword_1'
names(set1_df)[12] <- 'keyword_2'
colnames(set1_df)[colnames(set1_df) == 'subtype'] <- 'affiliation'

set1_df$affiliation <- str_to_title(set1_df$affiliation)
set1_df$rarity <- str_to_title(set1_df$rarity)

write.csv(set1_df, "runeterra_set1.csv")