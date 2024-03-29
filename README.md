# Datasets

<p align ='center'> <b> #1: LOR / Legends of Runeterra </b>
 </p>

![caitlyn.png](/images/lor_banner.jpg)
### Context

Legends of Runeterra is a 2020 digital collectible card game developed and published by Riot Games. Inspired by the physical collectible card game Magic: The Gathering, the developers sought to create a game within the same genre that significantly lowered the barrier to entry. 
Like other collectible card games, players play one versus one to reduce their opponent's health, which is 20, to zero. Cards come in a variety of types and belong to one to two of ten regions—groups of cards with a similar gameplay identity. One significant feature is the game's combat pacing; unlike in other collectible card games, each player alternates between attacking and defending every turn. 

Legends of Runeterra has been well-received by critics, who point to its generous progression systems, accessible gameplay, and high-quality visuals, and has won several industry awards.

[Official](https://playruneterra.com/en-us/) | [Wikipedia](https://en.wikipedia.org/wiki/Legends_of_Runeterra) | [Gameplay](https://www.youtube.com/watch?v=LIcrGl2L7M8) 
[Explore the Universe of Runeterra!](https://universe.leagueoflegends.com/en_US/)

### Updates
12/08/2021: Added Magic Misadventures Expansion

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


### FAQs
- I am not affiliated with Riot Games in any way, shape, or form. 
- This is just a project for personal interest and curiosity.

<p align = 'center'>
 <b> ---------------------------------------------------------------------------------------------------------------------- </b>
</p>


<p align = 'center' > 
<b> #2. Berkshire Hathaway Stock Price </b>
</p>

<p align="center">
  <img src="https://github.com/qilin2/datasets/blob/main/images/berkshire_hathaway.png" />
</p>

### Context

Berkshire Hathaway Inc. is an American multinational conglomerate holding company headquartered in Omaha, Nebraska, United States. The company wholly owns GEICO, Duracell, Dairy Queen, BNSF, Lubrizol, Fruit of the Loom, Helzberg Diamonds, Long & Foster, FlightSafety International, Shaw Industries, Pampered Chef, Forest River, and NetJets, and also owns 38.6% of Pilot Flying J; and significant minority holdings in public companies Kraft Heinz Company (26.7%), American Express (18.8%), The Coca-Cola Company (9.32%), Bank of America (11.9%), and Apple (6.3%).

Beginning in 2016, the company acquired large holdings in the major US airline carriers, namely United Airlines, Delta Air Lines, Southwest Airlines, and American Airlines, but sold all of its airline holdings early in 2020. Berkshire Hathaway has averaged an annual growth in book value of 19.0% to its shareholders since 1965 (compared to 9.7% from the S&P 500 with dividends included for the same period), while employing large amounts of capital, and minimal debt.

**The company is known for its control and leadership by Warren Buffett**, who serves as chairman and chief executive, and Charlie Munger, the company's vice-chairman. In the early part of his career at Berkshire, Buffett focused on long-term investments in publicly traded companies, but more recently he has more frequently bought whole companies. Berkshire now owns a diverse range of businesses including confectionery, retail, railroads, home furnishings, encyclopedias, manufacturers of vacuum cleaners, jewelry sales, manufacture and distribution of uniforms, and several regional electric and gas utilities.

According to the Forbes Global 2000 list and formula, Berkshire Hathaway is the **eighth-largest public company** in the world, the tenth-largest conglomerate by revenue, and the largest financial services company by revenue in the world.

As of August 2020, Berkshire's Class B stock is the seventh-largest component of the S&P 500 Index (which is based on free-float market capitalization) and the company is famous for having the most expensive share price in history with Class A shares costing around $400,000 each. This is because there has never been a stock split in its Class A shares and Buffett stated in a 1984 letter to shareholders that he does not intend to split the stock.

[Official](https://www.berkshirehathaway.com/) | [Wikipedia](https://en.wikipedia.org/wiki/Berkshire_Hathaway) | [Britannica](https://www.britannica.com/topic/Berkshire-Hathaway) | [Who is Warren Buffett?](https://en.wikipedia.org/wiki/Warren_Buffett)

### Content

Stock price data of Berkshire Hathaway, both Class A and Class B.
Contains 8 fields
- 1 Date
- 1 String
- 6 Decimals

### Acknowledgements

Data:
- [BRK-A](https://finance.yahoo.com/quote/BRK-A/)
- [BRK-B](https://finance.yahoo.com/quote/BRK-B/)


### Data Extraction

tidyquant, dplyr, and purrr packages from R.

### FAQs
- I am not affiliated in any way, shape, or form with Berkshire Hathway.
- For practice purposes only.

<p align = 'center'>
 <b> ---------------------------------------------------------------------------------------------------------------------- </b>
</p>

<p align = 'center'>
 <b> <font size = '5'> #3. Arcane League of Legends: Animated Series </font> </b>
 </p>
 
<p align = 'center'>
 <img src = 'https://github.com/qilin2/datasets/blob/main/images/jinx.jpeg'/>
 </p>
 
### Context
Arcane is a 2021 French-American animated television series that is set in the League of Legends universe. The show is produced by Riot Games and Fortiche Production and streamed on Netflix. Set in utopian Piltover and the oppressed underground of Zaun, the story follows the origins of two iconic League of Legends' champions-and the power that will tear them apart. Set in the past, it retells the origin stories of several characters from Piltover and Zaun. Like the game which it is based on, Arcane is aimed at a "16+" audience and deals with some more adult subject matter.

[Trailer](https://www.youtube.com/watch?v=4Ps6nV4wiCE&vl=en) | [IMBD](https://www.imdb.com/title/tt11126994/) | [Riot Games](https://www.riotgames.com/en) | [Fortiche Production](https://www.forticheprod.com/) | [League of Legends](https://www.leagueoflegends.com/en-us/)

### Content
This dataset contains 7 data fields: 2 int, 3 str, and 2 bool
Data fields:
- Str Type
  - track_title
  - artists
  - lyrics
- Int Type
  - track_number
  - Act
- Bool Type
  - hotness
  - instrumental

### Acknowledgements
This dataset was created by me with the [LyricsGenius](https://pypi.org/project/lyricsgenius/) API.


### FAQs
- I am not in affiliated in any way, shape, or form with Riot Games, Fortiche Production, and Genius.
- This project is just for practice purposes only and self-interest.
- #TeamJinx


<p align = 'center'>
 <b> ---------------------------------------------------------------------------------------------------------------------- </b>
</p>

<p align = 'center'>
<b> <font size = '5'> 4. Starlink Satellite Launches </font> </b>
</p>

<p align = 'center'>
<img src = 'https://github.com/qilin2/datasets/blob/main/images/starlink_logo.jpg'>
</p>
 
### Context
Starlink is a satellite internet constellation operated by SpaceX providing satellite Internet access to most of the Earth. The constellation consists of over 1600 satellites in mid-2021, and will eventually consist of many thousands of mass-produced small satellites in low Earth orbit (LEO), which communicate with designated ground transceivers. While the technical possibility of satellite internet service covers most of the global population, actual service can be delivered only in countries that have licensed SpaceX to provide service within any specific national jurisdiction. As of November 2021, the beta service offering is available in 21 countries.

[Official](https://www.starlink.com/) | [Tracker](https://findstarlink.com/) | [Wikipedia](https://en.wikipedia.org/wiki/Starlink)

### Content
This dataset contains 11 data fields provided on Wikipedia.
Data Fields:
- mission_number
- mission_name
- satellite_ver
- launch_date
- launch_vehicle
- orbit_altitude
- orbit_inclination
- satellite_deployed
- satellite_working
- launch_outcome
- launch_sites


### Acknowledgements 
This dataset was created by me via webscraping techniques.

### Data Extraction
RVest and Stringr Packages were utilized in R Studio.

### FAQS
- I am not in affiliated in any way, shape, or form with Starlink, SpaceX, and Elon Musk.
- This project is just for practice purposes only and self-interest.
