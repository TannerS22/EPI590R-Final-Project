library(tidyverse)
library(gtsummary)
library(here)


pride <- read.csv(here::here("data", "pride_index.csv"))

tbl_summary(
	pride,
	by = campus_name,
	include = c(campus_name, students, rating),
	label = list(
		campus_name = "University",
		students = "Student Population",
		rating = "Rating"
	))

regression <-  lm(students ~ rating, data = pride)
regression

tbl_regression(
	regression,
	intercept = TRUE
)

hist(pride$students)
totaluniversity <- function() {
	amount <- nrow(pride)
	return(amount)
}
totaluniversity()

