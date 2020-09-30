# install.package(c("tidyverse", "jsonlite", "magrittr", "lubridate"))

library(tidyverse)
library(jsonlite)
library(magrittr)
library(lubridate)

twg_list <- fromJSON("2011.json")

twg_tidy <- tibble(
  name = twg_list$name,
  link = twg_list$link,
  gm = twg_list$gm,
  cogm = twg_list$cogm,
  open = twg_list$open %>% dmy_hm(),
  start = twg_list$start %>% dmy_hm(),
  finish = twg_list$finish %>% dmy_hm(),
  won = twg_list$won,
  phases = twg_list$phases,
  players = twg_list$players
)

twg_players <- twg_tidy %>%
  select(name, players) %>%
  unnest(players)

twg_phases <- twg_tidy %>%
  select(name, phases) %>%
  unnest(phases)

#twg_phases %>% 
#  unnest(cols = dies) %>%
#  rename(id = dies) %>%
#  group_by(name, phase) %>% 
#  left_join(twg_players, by = c("name", "id"))
