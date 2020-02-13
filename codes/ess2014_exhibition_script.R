library(haven)
library(ggplot2)
library(stringr)
library(tm)
library(wordcloud)

work_path <- '//ADM.AAU.DK/Users/kgk/Documents/CALDISS/Aktiviteter/Workshopmateriale/R intro/'
data_path <- '//ADM.AAU.DK/Users/kgk/Documents/CALDISS/Aktiviteter/Workshopmateriale/R intro/data/'

setwd(data_path)
ess2014_sub <- read_dta("ESS2014_subset.dta")

## REMOVE OBSERVATIONS WITH NO COUNTRY ##
ess2014_sub <- ess2014_sub[ess2014_sub$cntry != "", ]

## AGE ##
ess2014_sub$AGE <- 2014 - ess2014_sub$yrbrn
ess2014_sub$gndr <- as_factor(ess2014_sub$gndr)

ggplot(ess2014_sub, aes(AGE, INSTtrst, colour = gndr)) +
  geom_smooth() + 
  facet_wrap(. ~ cntry)


