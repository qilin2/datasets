#Load Libraries
library(jsonlite)
library(purrr)
library(janitor)
library(dplyr)
library(stringr)
library(tibble)


set4 <- as.data.frame(fromJSON("C:\\Users\\Bran Hung\\Desktop\\Legends of Runeterra\\set4-en_us.json", flatten = TRUE))

#Remove duplicates
set4_df <- set4[,!(names(set4) %in% c("associatedCards", "associatedCardRefs", "assets", 'regionRef', 'regions', 'description', 'levelupDescription'))]
set4_df<- set4_df[,!(names(set4_df) %in% c("regionRefs", 'keywordRefs', 'spellSpeedRef', 'rarityRef', 'subtypes', 'supertype'))]


#Renaming columns for clarity
names(set4_df)[5] <- 'effect'
names(set4_df)[6] <- 'level_up_description'
names(set4_df)[9] <- 'card name'
set4_df$SetName <- 'Rising Tides'

#Add new column for set name
colnames(set4_df)[colnames(set4_df) == 'set'] <- 'setNumber' 
set4_df$setNumber <- 2


#Split keywords into multiple columns depending on the number of words.
set4_df <- set4_df %>%
  clean_names() %>% unnest_wider(keywords)


names(set4_df)[11] <- 'keyword_1'
names(set4_df)[12] <- 'keyword_2'
colnames(set4_df)[colnames(set4_df) == 'subtype'] <- 'affiliation'

set4_df$affiliation <- str_to_title(set4_df$affiliation)
set4_df$rarity <- str_to_title(set4_df$rarity)

write.csv(set4_df, "runeterra_set4.csv")