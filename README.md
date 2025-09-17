# The global temperature-CO2 spiral

## Project overview

Contains data and code for creating:

- Homogenised time series of atmospheric CO2 and temperature from multiple sources, together covering the past (800 ka), until today, and the future (climate scenario to 2100). Outputs (homogenised time series) are stored in `data/`
- Visualisation of the parallel evolution of temperature and CO2. Outputs (figure files) are stored in `figures/`.

## Data

### CO2

- Bereiter et al., 2015

### Temperature (based on d18O)

- ...

## Project structure

### `vignettes/`

Contains the full workflow, implemented as a single RMarkdown vignette (`past_to_future_co2_temperature.Rmd`).

### `data-raw/`

Contains original data, obtained from external sources. 

### `data/`

Contains output data files created by the workflow.

### `figures/`

Contains output figure files created by the workflow

## Dependencies

Install all required R libraries by:
```r
use_pkgs <- c(
  "dplyr",
  "tidyr",
  "purrr",
  "lubridate",
  "readr",
  "ggplot2",
  "gganimate",
  "gifski",
  "here"
  )

new_pkgs <- use_pkgs[!(use_pkgs %in% installed.packages()[, "Package"])]
if (length(new_pkgs) > 0) install.packages(new_pkgs)
```

## License

This is published under a [CC BY-SA license](https://creativecommons.org/licenses/by-sa/4.0/).

