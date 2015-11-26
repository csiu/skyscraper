# About data
csiu  
November 25, 2015  
## Data source
The data ([pdf](buildings_2015-11-26-05-54-27.pdf), [csv](tallest100buildings.csv)) was downloaded from [**The Skyscraper Center:** The Global Tall Building Database of the CTBUH](http://www.skyscrapercenter.com/buildings) on November 25, 2015.

## Tidying the data

```r
library(dplyr)
library(readr)
```


```r
raw_file <- "tallest100buildings.csv"

raw <- read_csv(raw_file)

colnames(raw) <- c("rank", "building_name", "city", 
                   "height_m", "height_ft", "floors", 
                   "year_completed", "material", "use")

(raw <- raw %>% 
  mutate(city = as.factor(city),
         #year_completed = as.factor(year_completed),
         material = as.factor(material)))
```

```
## Source: local data frame [100 x 9]
## 
##     rank                   building_name               city height_m
##    (int)                           (chr)             (fctr)    (dbl)
## 1      1                    Burj Khalifa         Dubai (AE)    828.0
## 2      2        Makkah Royal Clock Tower         Mecca (SA)    601.0
## 3      3          One World Trade Center New York City (US)    541.3
## 4      4                      TAIPEI 101        Taipei (TW)    508.0
## 5      5 Shanghai World Financial Center      Shanghai (CN)    492.0
## 6      6   International Commerce Centre     Hong Kong (CN)    484.0
## 7      7           Petronas Twin Tower 1  Kuala Lumpur (MY)    451.9
## 8      7           Petronas Twin Tower 2  Kuala Lumpur (MY)    451.9
## 9      9                    Zifeng Tower       Nanjing (CN)    450.0
## 10    10                    Willis Tower       Chicago (US)    442.1
## ..   ...                             ...                ...      ...
## Variables not shown: height_ft (dbl), floors (int), year_completed (int),
##   material (fctr), use (chr).
```
