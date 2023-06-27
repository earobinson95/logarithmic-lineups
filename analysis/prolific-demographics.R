library(tidyverse)

prolific_export <- read_csv("data/prolific-export.csv") |> 
  mutate(across(c(Status, `Completion code`, `Fluent languages`: `Employment status`), ~ as.factor(.x))) |> 
  filter(Status == "APPROVED") |> 
  janitor::clean_names()

summary(prolific_export)

prolific_export |> 
  ggplot(aes(y = fct_rev(fct_infreq(sex)))) +
  geom_bar() +
  theme_bw()

prolific_export |> 
  ggplot(aes(y = fct_rev(fct_infreq(ethnicity_simplified)))) +
  geom_bar() +
  theme_bw()

prolific_export |> 
  ggplot(aes(y = fct_rev(fct_infreq(country_of_residence)))) +
  geom_bar() +
  theme_bw()

prolific_export |> 
  distinct(country_of_residence) |> 
  count()

prolific_export |> 
  ggplot(aes(y = fct_rev(fct_infreq(language)))) +
  geom_bar() +
  theme_bw()

prolific_export |> 
  mutate(English = str_detect(fluent_languages, pattern = "English")) |>
  count(English)

prolific_export |> 
  ggplot(aes(y = fct_rev(fct_infreq(employment_status)))) +
  geom_bar() +
  theme_bw()

prolific_export |> 
  ggplot(aes(x = as.numeric(as.character(age)))) +
  geom_histogram(fill = "gray", color = "gray30") +
  theme_bw()
summary(as.numeric(as.character(prolific_export$age)))

lineup_model_data <- read_csv("analysis/lineup-model-data.csv") |> 
  mutate(across(age:recruitment, ~ as.factor(.x)))
summary(lineup_model_data)

lineup_model_data |> 
  ggplot(aes(y = age)) +
  geom_bar() +
  theme_bw()

lineup_model_data |>
  distinct(participant_id, gender) |>
  # count()
  count(gender)
  distinct(participant_id, gender, academic_study, age) |> 
  count(gender)

lineup_model_data |> 
  distinct(participant_id, academic_study) |>
  # count()
  count(academic_study)
  ggplot(aes(y = fct_rev(fct_infreq(academic_study)))) +
  geom_bar() +
  theme_bw()

