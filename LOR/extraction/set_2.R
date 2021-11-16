#Load Libraries
library(jsonlite)
library(purrr)
library(janitor)
library(dplyr)
library(stringr)
library(tibble)


set2 <- as.data.frame(fromJSON("C:\\Users\\Bran Hung\\Desktop\\Legends of Runeterra\\set2-en_us.json", flatten = TRUE))

#Remove duplicates
set2_df <- set2[,!(names(set2) %in% c("associatedCards", "associatedCardRefs", "assets", 'regionRef', 'regions', 'description', 'levelupDescription'))]
set2_df<- set2_df[,!(names(set2_df) %in% c("regionRefs", 'keywordRefs', 'spellSpeedRef', 'rarityRef', 'subtypes', 'supertype'))]


#Renaming columns for clarity
names(set2_df)[5] <- 'effect'
names(set2_df)[6] <- 'level_up_description'
names(set2_df)[9] <- 'card name'
set2_df$SetName <- 'Rising Tides'

#Add new column for set name
colnames(set2_df)[colnames(set2_df) == 'set'] <- 'setNumber' 
set2_df$setNumber <- 2


#Split keywords into multiple columns depending on the number of words.
set2_df <- set2_df %>%
  clean_names() %>% unnest_wider(keywords)


names(set2_df)[11] <- 'keyword_1'
names(set2_df)[12] <- 'keyword_2'
colnames(set2_df)[colnames(set2_df) == 'subtype'] <- 'affiliation'

set2_df$affiliation <- str_to_title(set2_df$affiliation)
set2_df$rarity <- str_to_title(set2_df$rarity)

write.csv(set2_df, "runeterra_set2.csv")