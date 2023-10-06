#load library
library(dplyr)
library(reshape2)
library(openxlsx)
library(car)
library(rvest)

#######################################
# Data Cleaning
#######################################

#load data
raw_a = read.xlsx("data/Group3-311DataPreCOVID-Warm Season.xlsx")[,-31] %>% mutate(season = "PreCOVID-Warm")
raw_b = read.xlsx("data/Group2-311DataPreCOVID-Cold Season.xlsx")[,-31] %>% mutate(season = "PreCOVID-COld")
raw_c = read.xlsx("data/Group1-311DataDuringCOVID.xlsx")[,-31] %>% mutate(season = "COVID-warm")

raw = rbind(raw_a,raw_b)
raw = rbind(raw,raw_c)

sec = read.xlsx("data/SocioEconomic.xlsx")

rm(raw_a)
rm(raw_b)
rm(raw_c)

#merge
inc = sec %>% rename(NEIGH = NBH_NAME)
raw$NEIGH[raw$NEIGH == "Central Blue Valley and Park Tower Gardens"] = "Central Blue Valley And Park Tower Gardens"
dat = raw %>% left_join(inc, by="NEIGH")

#drop na neighborhood, income level, source, category, day to close
dat = dat %>% filter(!(is.na(NEIGH)|is.na(Income.Level)|is.na(SOURCE)|is.na(CATEGORY)|is.na(DAYTOCLOSE)))

#drop sept 2020 due to low count
dat = dat %>% filter(!(CREATEYR==2020 & CREATEMO == 9))

#save data for further analysis
save(dat, file = "data/kcmo2019_2020_sec.rdata")

