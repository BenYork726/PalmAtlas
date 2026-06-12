# CaryotAtlas

[![Launch the app](https://img.shields.io/badge/Launch-CaryotAtlas-2e8b57?style=for-the-badge)](https://ben-york.shinyapps.io/CaryotAtlas/)

An interactive R Shiny app for exploring the global distribution of the palm
genus *[Caryota](https://en.wikipedia.org/wiki/Caryota)* (the fishtail palms).
Users pick a species, a year range, and a data-cleaning level, and the app draws
an occurrence map and lets them download the underlying dataset.

**▶ Live app: https://ben-york.shinyapps.io/CaryotAtlas/**

Developed as part of the [Plant Evolutionary Biology group](https://bios.au.dk/)
at Aarhus University.

## Features

- **Species selection** across the *Caryota* genus.
- **Year-range filter** (1750–2020).
- **Data-cleaning levels** — *Original*, *Partial*, or *Full* — switching between
  three increasingly filtered occurrence datasets.
- **Interactive Leaflet map**: TDWG level-3 botanical regions shaded by species
  presence, with occurrence points plotted on top.
- **Download** the filtered occurrence dataset as a CSV.

## Running locally

Requires R (4.x). Install the runtime packages:

```r
install.packages(c("shiny", "shinydashboard", "leaflet",
                   "dplyr", "magrittr", "sf", "htmltools"))
```

Then, from this directory:

```r
shiny::runApp(".")
```

## Project structure

```
global.R            # loads libraries + data (datasets, shapefile, CSVs)
ui.R                # shinydashboard UI
server.R            # reactive logic: filtering, map rendering, CSV download
caryota_data.rds    # the Original / Partial / Full occurrence datasets
Caryota.csv         # species list for the dropdown
Caryotalist.csv     # per-region presence/abundance values
tdwg_level3_shp/    # TDWG level-3 region shapefile (Leaflet basemap)
dffolder/           # data-preparation scripts (provenance; not needed at runtime)
```

### Data preparation

The occurrence data in `caryota_data.rds` was assembled offline from several
biodiversity databases. The scripts under `dffolder/` document how the raw
records were pulled and cleaned; they are kept for provenance and are **not run
by the app**.

Source databases:
[ALA](https://www.ala.org.au/),
[BIEN](https://bien.nceas.ucsb.edu/bien/),
[BISON](https://bison.usgs.gov/#home),
[GBIF](https://www.gbif.org/),
[iDigBio](https://www.idigbio.org/),
[iNaturalist](https://www.inaturalist.org/).

## Deployment

The app is hosted on [shinyapps.io](https://www.shinyapps.io). To redeploy after
changes:

```r
rsconnect::deployApp(
  appName  = "CaryotAtlas",
  appFiles = c(
    "global.R", "ui.R", "server.R",
    "caryota_data.rds", "Caryota.csv", "Caryotalist.csv",
    "tdwg_level3_shp/level3.shp", "tdwg_level3_shp/level3.shx",
    "tdwg_level3_shp/level3.dbf", "tdwg_level3_shp/level3.prj",
    "tdwg_level3_shp/level3.sbn", "tdwg_level3_shp/level3.sbx"
  )
)
```

The explicit `appFiles` list keeps the bundle to just the files the app needs at
runtime.

## Contact

Questions or suggestions: br751@york.ac.uk
