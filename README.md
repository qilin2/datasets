# Datasets

<p align = 'center'>
 <b> #1: LOR / Legends of Runeterra </b>
 </center>
 
![caitlyn.png](/images/lor_banner.jpg)
### Context

Legends of Runeterra is a 2020 digital collectible card game developed and published by Riot Games. Inspired by the physical collectible card game Magic: The Gathering, the developers sought to create a game within the same genre that significantly lowered the barrier to entry. 
Like other collectible card games, players play one versus one to reduce their opponent's health, which is 20, to zero. Cards come in a variety of types and belong to one to two of ten regions—groups of cards with a similar gameplay identity. One significant feature is the game's combat pacing; unlike in other collectible card games, each player alternates between attacking and defending every turn. 

Legends of Runeterra has been well-received by critics, who point to its generous progression systems, accessible gameplay, and high-quality visuals, and has won several industry awards.

[Official](https://playruneterra.com/en-us/) | [Wikipedia](https://en.wikipedia.org/wiki/Legends_of_Runeterra) | [Gameplay](https://www.youtube.com/watch?v=LIcrGl2L7M8) 
[Explore the Universe of Runterra!](https://universe.leagueoflegends.com/en_US/)



### Content
Attributes
- region: Regions tend to share mechanics such as certain **keywords** and tend to synergize well with each other, and combining cards from different regions can lead to unique synergies and playstyles, with their own strengths and weaknesses.
- - region_1
- - region_2
- attack: Card's attack power.
- cost: Mana is required to play the card.
- health: Card's health points.
- effect: Includes keywords and effects that describe what the card does when it's played.
- level_up_description: Only applies to cards with **Champion** as its value for the key **attribute**.
- flavor_text: Contains lore or background information about the card.
- artist_name: The Illustrator of the card.
- card_name: Name of the card.
- card_code: ID of the card.
- [keywords](https://www.lorscout.com/keywords): Named effects that cards can have, either innately, given to them (temporary) or granted to them (permanently). Some keywords are actions that are used as part of the card text, either as specific triggers, or actions that can be done.
- - keyword_1
- - keyword_2
- - keyword_3
- spell_speed: Only applies to cards with **Spell** as its value for the key **type**.
- rarity: Divided into four categories that depict the probability of obtaining it from a lootbox. From lowest to highest: Common, Rare, Epic, and Champion. Cards with rarity None are cards that are created and not collectible.
- affiliation: a faction where the card belongs in.
- type: a card can only have either one of the three types, Unit, Spell, or Landmark.
- set_number: the numerical value of the expansion set.
- set_name: the name of the expansion set.
- level: Only applies to cards with **Champion** as its **rarity**. When a Champion meets its level up requirements, it levels up and gains or/and obtains new attributes or/and effects with better stat lines. All Champions start at level 0 before leveling up.




### Original Work

Legends of Runeterra is a dataset extracted from Riot Games' Official API with a few webscraping from Mobalytics.

Sources:
- [Riot Games' API](https://developer.riotgames.com/docs/lor)
- [Mobalytics](https://lor.mobalytics.gg/cards)


### Data Extraction 
The [jsonlite](https://cran.r-project.org/web/packages/jsonlite/index.html) package, a R library, is the gem that extracted and converted all of the provided .json files within the API. Other libraries such as [dplyr](https://cran.r-project.org/web/packages/dplyr/vignettes/dplyr.html) and [janitor](https://cran.r-project.org/web/packages/janitor/index.html) were used for data cleaning purposes.  The [rvest](https://cran.r-project.org/web/packages/rvest/rvest.pdf) package was used for web scraping.


 
