library(tidyverse)
library(gtsummary)

# load and clean data
cheeses_cols <- c(
	"glasses", "eyesight", "sleep_wkdy", "sleep_wknd",
	"id", "nsibs", "samp", "race_eth", "sex", "region",
	"income", "res_1980", "res_2002", "age_bir"
)
