# Runtime libraries only. The packages used to build the datasets offline
# (rgbif, BIEN, spocc, CoordinateCleaner, biogeo, raster, sp, rgdal, maptools,
# rgeos, tidyverse, lubridate, tibble, rlang) are not needed to run the app and
# some are archived from CRAN, so they are intentionally not loaded here.
library(shiny)
library(shinydashboard)
library(leaflet)
library(dplyr)
library(magrittr)
library(sf) # simple features, used for the shapefile basemap
library(htmltools) # for HTML marker labels

# occurrence datasets (Original / Partial / Full cleaning levels)
# exported from the build workspace so the app does not rely on .RData autoload
.caryota <- readRDS("./caryota_data.rds")
Original <- .caryota$Original
Partial  <- .caryota$Partial
Full     <- .caryota$Full

# shapefile paths
shapefile_path <- "./tdwg_level3_shp"
BotCon <- st_read(paste(shapefile_path, "/level3.shp", sep=""))
# palm species presence/absence in area codes
Caryotalist <- read.csv("./Caryotalist.csv", header = TRUE)
Caryota <- read.csv("./Caryota.csv", header = TRUE)

