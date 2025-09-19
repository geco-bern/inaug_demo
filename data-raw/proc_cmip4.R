load(here("data-raw/climatedata_yalestudy.Rdata"))

dftemp_cmip <- climatedata$CCSM4 %>%
  as_tibble() %>%
  rename(Tmean_CCSM4 = Tmean, dT_CCSM4 = dT) %>%
  left_join(
    climatedata$`HadGEM2-ES` %>%
      as_tibble() %>%
      rename(Tmean_HadGEM = Tmean, dT_HadGEM2 = dT),
    by = "time"
  ) %>%
  left_join(
    climatedata$`IPSL-CM5A-LR` %>%
      as_tibble() %>%
      rename(Tmean_IPSL = Tmean, dT_IPSL = dT),
    by = "time"
  ) %>%
  left_join(
    climatedata$`MPI-ESM-LR` %>%
      as_tibble() %>%
      rename(Tmean_MPI = Tmean, dT_MPI = dT),
    by = "time"
  )

write_rds(
  dftemp_cmip,
  file = here("data-raw/dftemp_cmip.rds")
)
