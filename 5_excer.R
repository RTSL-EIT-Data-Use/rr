


#
pacman::p_load(
  rio,
  here,
  janitor,
  tidyverse,
  lubridate,
  apyramid,
  gtsummary,
  skimr,
  epikit,
  gt,
  lubridate,
  flextable,
  sf,
  tmap
)

# import the sph data
getwd()

shp <- sf::st_read(here::here("data","ETH shape file_2024","eth_admbnda_adm1_csa_bofedb_2021.shp"))

plot(shp)
plot(st_geometry(shp))   # create boundary

# Label anatomy
head(shp)
shp <- shp %>% 
  select(state = ADMEN,district,)
eth_cases <- shp %>% select("region", district) %>% st_drop_geometry()
eth_cases$cases <- sample(1:100, nrow(nga_cases), replace=T)

# merge 





