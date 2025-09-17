# The global temperature-CO2 spiral

## Project overview

Contains data and code for creating:

- Homogenised time series of atmospheric CO2 and temperature from multiple sources, together covering the past (800 ka), until today, and the future (climate scenario to 2100). Outputs (homogenised time series) are stored in `data/`
- Visualisation of the parallel evolution of temperature and CO2. Outputs (figure files) are stored in `figures/`.

## Data

The following data were obtained from external sources and are contained in this repository, stored in `data-raw/`.

### CO2

- Bereiter et al., 2015

### Temperature (based on d18O)

- ...

## Project structure

- `vignettes/`

Contains the full workflow, implemented as a single RMarkdown vignette (`past_to_future_co2_temperature.Rmd`).

- `data-raw/`

Contains original data, obtained from external sources. 

- `data/`

Contains output data files created by the workflow.

- `figures/`

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

## References

Bereiter, B., Eggleston, S., Schmitt, J., Nehrbass‐Ahles, C., Stocker, T. F., Fischer, H., Kipfstuhl, S., and Chappellaz, J.: Revision of the EPICA Dome C CO2 record from 800 to 600 kyr before present, Geophysical Research Letters, 42, 542–549, https://doi.org/10.1002/2014GL061957, 2015.

