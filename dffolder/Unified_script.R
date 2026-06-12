#unified data pulling script
library(CoordinateCleaner) # for automatic flagging of common spatial and temporal errors in biological collection data
library(biogeo) # for error detection and correction in point data quality datasets
library(rgbif) # a programmatic inferface to the Global Biodiversity Information Facility (GBIF)
library(BIEN) # provides access to the BIEN database as well as useful tools for working with the BIEN data.
library(raster) # for handling rasters both in memory and on disk
library(sf) # to implement simple features, a standardised way of encoding spatial vector data 
library(sp) # for importing, manipulating and exporting spatial data 
library(maptools) # tools for manipulating geographic data
library(rgeos) # implements functionality for the manipulation and querying of spatial geometries 
library(tidyverse) # a coherent system of R packages for data manipulation, exploration and  
#library(ALA4R)
library(spocc)
library(magrittr)
library(sf)
library(tibble)
library(dplyr)
library(rlang)

########################   ALA first 20-224     ###########################################

#please note files are only downloadable if sightings are "accepted" classification 
#WHere no data has been returned, the df object made won't bind together with the rest because its a different class
#I've left these out when the databsases combine, but future iterations should definitely get them : bind if object x = df class, else return () uno?
#press ctrl/A to highlight the script, and ctrl/enter to run it. 

#Caryota albertii, there's no locality data in this for some reason 

dfa_cal <- occ(query = 'Caryota albertii', from = 'ala')
dfa_cal <- as.data.frame(dfa_cal$ala$data) %>% 
  transmute(species = Caryota_albertii.name, 
            decimallongitude = as.numeric(Caryota_albertii.longitude),
            decimallatitude = as.numeric(Caryota_albertii.latitude),
            year = Caryota_albertii.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_albertii.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_albertii.basisOfRecord,
            recorded_by = Caryota_albertii.collector,
            record_number= Caryota_albertii.recordNumber,
            institution_code =  Caryota_albertii.raw_institutionCode)
#locality = Caryota_albertii.raw_locationRemarks)

dfa_cal$locality <- NA

#Caryota angustifolia

dfa_can <- occ(query = 'Caryota angustifolia', from = 'ala')
dfa_can <- as.data.frame(dfa_can$ala$data) %>% 
  transmute(species = Caryota_angustifolia.name, 
            decimallongitude = as.numeric(Caryota_angustifolia.longitude),
            decimallatitude = as.numeric(Caryota_angustifolia.latitude),
            year = Caryota_angustifolia.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_angustifolia.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_angustifolia.basisOfRecord,
            recorded_by = Caryota_angustifolia.collector,
            record_number= Caryota_angustifolia.recordNumber,
            institution_code = Caryota_angustifolia.raw_institutionCode,
            locality = Caryota_angustifolia.raw_locationRemarks)

#Caryota cumingii

dfa_ccu <- occ(query = 'Caryota cumingii', from = 'ala')
dfa_ccu <- as.data.frame(dfa_ccu$ala$data) %>% 
  transmute(species = Caryota_cumingii.name, 
            decimallongitude = as.numeric(Caryota_cumingii.longitude),
            decimallatitude = as.numeric(Caryota_cumingii.latitude),
            year = Caryota_cumingii.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_cumingii.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_cumingii.basisOfRecord,
            recorded_by = Caryota_cumingii.collector,
            record_number= Caryota_cumingii.recordNumber,
            institution_code = Caryota_cumingii.raw_institutionCode,
            locality = Caryota_cumingii.raw_locationRemarks)

#Caryota kiriwongensis

dfa_cki <- occ(query = 'Caryota kiriwongensis', from = 'ala')
dfa_cki <- as.data.frame(dfa_cki$ala$data) %>% 
  transmute(species = Caryota_kiriwongensis.name, 
            decimallongitude = as.numeric(Caryota_kiriwongensis.longitude),
            decimallatitude = as.numeric(Caryota_kiriwongensis.latitude),
            year = Caryota_kiriwongensis.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_kiriwongensis.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_kiriwongensis.basisOfRecord,
            recorded_by = Caryota_kiriwongensis.collector,
            record_number= Caryota_kiriwongensis.recordNumber,
            institution_code = Caryota_kiriwongensis.raw_institutionCode,
            locality = Caryota_kiriwongensis.raw_locationRemarks)

#Caryota maxima

dfa_cma <- occ(query = 'Caryota maxima', from = 'ala')
dfa_cma <- as.data.frame(dfa_cma$ala$data) %>% 
  transmute(species = Caryota_maxima.name, 
            decimallongitude = as.numeric(Caryota_maxima.longitude),
            decimallatitude = as.numeric(Caryota_maxima.latitude),
            year = Caryota_maxima.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_maxima.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_maxima.basisOfRecord,
            recorded_by = Caryota_maxima.collector,
            record_number= Caryota_maxima.recordNumber,
            institution_code = Caryota_maxima.raw_institutionCode,
            locality = Caryota_maxima.raw_locationRemarks)

#Caryota mitis

dfa_cmi <- occ(query = 'Caryota mitis', from = 'ala')
dfa_cmi <- as.data.frame(dfa_cmi$ala$data) %>% 
  transmute(species = Caryota_mitis.name, 
            decimallongitude = as.numeric(Caryota_mitis.longitude),
            decimallatitude = as.numeric(Caryota_mitis.latitude),
            year = Caryota_mitis.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_mitis.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_mitis.basisOfRecord,
            recorded_by = Caryota_mitis.collector,
            record_number= Caryota_mitis.recordNumber,
            institution_code = Caryota_mitis.raw_institutionCode,
            locality = Caryota_mitis.raw_locationRemarks)

#Caryota monostachya

dfa_cmo <- occ(query = 'Caryota monostachya', from = 'ala')
dfa_cmo <- as.data.frame(dfa_cmo$ala$data) %>% 
  transmute(species = Caryota_monostachya.name, 
            decimallongitude = as.numeric(Caryota_monostachya.longitude),
            decimallatitude = as.numeric(Caryota_monostachya.latitude),
            year = Caryota_monostachya.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_monostachya.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_monostachya.basisOfRecord,
            recorded_by = Caryota_monostachya.collector,
            record_number= Caryota_monostachya.recordNumber,
            institution_code = Caryota_monostachya.raw_institutionCode,
            locality = Caryota_monostachya.raw_locationRemarks)

#Caryota no

dfa_cno <- occ(query = 'Caryota no', from = 'ala')
dfa_cno <- as.data.frame(dfa_cno$ala$data) %>% 
  transmute(species = Caryota_no.name, 
            decimallongitude = as.numeric(Caryota_no.longitude),
            decimallatitude = as.numeric(Caryota_no.latitude),
            year = Caryota_no.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_no.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_no.basisOfRecord,
            recorded_by = Caryota_no.collector,
            record_number= Caryota_no.recordNumber,
            institution_code = Caryota_no.raw_institutionCode,
            locality = Caryota_no.raw_locationRemarks)

#Caryota obtusa

dfa_cob <- occ(query = 'Caryota obtusa', from = 'ala')
dfa_cob <- as.data.frame(dfa_cob$ala$data) %>% 
  transmute(species = Caryota_obtusa.name, 
            decimallongitude = as.numeric(Caryota_obtusa.longitude),
            decimallatitude = as.numeric(Caryota_obtusa.latitude),
            year = Caryota_obtusa.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_obtusa.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_obtusa.basisOfRecord,
            recorded_by = Caryota_obtusa.collector,
            record_number= Caryota_obtusa.recordNumber,
            institution_code = Caryota_obtusa.raw_institutionCode,
            locality = Caryota_obtusa.raw_locationRemarks)

#Caryota ophiopellis

dfa_cop <- occ(query = 'Caryota ophiopellis', from = 'ala')
dfa_cop <- as.data.frame(dfa_cop$ala$data) %>% 
  transmute(species = Caryota_ophiopellis.name, 
            decimallongitude = as.numeric(Caryota_ophiopellis.longitude),
            decimallatitude = as.numeric(Caryota_ophiopellis.latitude),
            year = Caryota_ophiopellis.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_ophiopellis.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_ophiopellis.basisOfRecord,
            recorded_by = Caryota_ophiopellis.collector,
            record_number= Caryota_ophiopellis.recordNumber,
            institution_code = Caryota_ophiopellis.raw_institutionCode,
            locality = Caryota_ophiopellis.raw_locationRemarks)

#Caryota rumphiana

dfa_cru <- occ(query = 'Caryota rumphiana', from = 'ala')
dfa_cru <- as.data.frame(dfa_cru$ala$data) %>% 
  transmute(species = Caryota_rumphiana.name, 
            decimallongitude = as.numeric(Caryota_rumphiana.longitude),
            decimallatitude = as.numeric(Caryota_rumphiana.latitude),
            year = Caryota_rumphiana.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_rumphiana.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_rumphiana.basisOfRecord,
            recorded_by = Caryota_rumphiana.collector,
            record_number= Caryota_rumphiana.recordNumber,
            institution_code = Caryota_rumphiana.raw_institutionCode,
            locality = Caryota_rumphiana.raw_locationRemarks)

#Caryota sympetala

dfa_csy <- occ(query = 'Caryota sympetala', from = 'ala')
dfa_csy <- as.data.frame(dfa_csy$ala$data) %>% 
  transmute(species = Caryota_sympetala.name, 
            decimallongitude = as.numeric(Caryota_sympetala.longitude),
            decimallatitude = as.numeric(Caryota_sympetala.latitude),
            year = Caryota_sympetala.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_sympetala.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_sympetala.basisOfRecord,
            recorded_by = Caryota_sympetala.collector,
            record_number= Caryota_sympetala.recordNumber,
            institution_code = Caryota_sympetala.raw_institutionCode,
            locality = Caryota_sympetala.raw_locationRemarks)

#Caryota urens

dfa_cur <- occ(query = 'Caryota urens', from = 'ala')
dfa_cur <- as.data.frame(dfa_cur$ala$data) %>% 
  transmute(species = Caryota_urens.name, 
            decimallongitude = as.numeric(Caryota_urens.longitude),
            decimallatitude = as.numeric(Caryota_urens.latitude),
            year = Caryota_urens.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_urens.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_urens.basisOfRecord,
            recorded_by = Caryota_urens.collector,
            record_number= Caryota_urens.recordNumber,
            institution_code = Caryota_urens.raw_institutionCode,
            locality = Caryota_urens.raw_locationRemarks)

#Caryota zebrina

dfa_cze <- occ(query = 'Caryota zebrina', from = 'ala')
dfa_cze <- as.data.frame(dfa_cze$ala$data) %>% 
  transmute(species = Caryota_zebrina.name, 
            decimallongitude = as.numeric(Caryota_zebrina.longitude),
            decimallatitude = as.numeric(Caryota_zebrina.latitude),
            year = Caryota_zebrina.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_zebrina.coordinateUncertaintyInMeters),
            basisOfRecord= Caryota_zebrina.basisOfRecord,
            recorded_by = Caryota_zebrina.collector,
            record_number= Caryota_zebrina.recordNumber,
            institution_code = Caryota_zebrina.raw_institutionCode,
            locality = Caryota_zebrina.raw_locationRemarks)

#dfa_all <- rbind(dfa_cal, dfa_can, dfa_ccu, dfa_cki, dfa_cma, dfa_cmi, dfa_cmo, dfa_cno, dfa_cob, dfa_cop, dfa_cru, dfa_csy, dfa_cur, dfa_cze)

dfa_all <- rbind(dfa_cal, dfa_cmi, dfa_cur)

dfa_all$observation_count <- NA

dfa_all$database_name <- "ala"



################################BIEN now 226-258 ########################################

dfbien_all <- BIEN_occurrence_genus(genus = "Caryota", # A single species, or a vector of species. Genus and species should be separated by a space. Genus should be capitalized.
                                    cultivated = TRUE, # Return known cultivated records as well? Default is FALSE.
                                    only.new.world = FALSE, # Return only records from the New World? Default is FALSE
                                    all.taxonomy = FALSE, # Return all taxonomic information? 
                                    native.status = TRUE, # Return information on introduction status? The default value is FALSE. A value of TRUE also returns additional information on introduction status.
                                    natives.only = FALSE, # Exclude detected introduced species? Default is TRUE.
                                    observation.type = TRUE, # Return information on type of observation (i.e. specimen vs. plot)? The default value is FALSE.
                                    political.boundaries = TRUE, # Return information on political boundaries for an observation? The default value is FALSE.
                                    collection.info = TRUE) # Return additional information about collection and identification? The default value is FALSE.

# we will remove the duplicated column date_collected
dfbien_all <- dfbien_all[!duplicated(names(dfbien_all))] 

yearcol <- dfbien_all$date_collected
yearcol <- year(yearcol)

# we will keep certain columns only. Note that the columns are named different to rgbif and there are not as many of them. We may want to keep more
dfbien_all <- dfbien_all %>% 
  transmute(species = scrubbed_species_binomial, 
            decimallongitude = longitude,
            decimallatitude = latitude, 
            basisOfRecord = observation_type, 
            database_name = datasource,
            recorded_by = recorded_by,
            record_number = record_number,
            institution_code = custodial_institution_codes,
            locality = locality)

dfbien_all$observation_count <- NA
dfbien_all$coordinateUncertaintyInMeters <- NA
dfbien_all$year <- yearcol


############## Bison now 282-486 ###############################

#Caryota albertii

dfb_cal <- occ(query = 'Caryota albertii', from = 'bison')
dfb_cal <- as.data.frame(dfb_cal$bison$data) %>% 
  transmute(species = Caryota_albertii.name, 
            decimallongitude = as.numeric(Caryota_albertii.longitude),
            decimallatitude = as.numeric(Caryota_albertii.latitude),
            year = Caryota_albertii.year,
            basisOfRecord = Caryota_albertii.basisOfRecord,
            recorded_by = Caryota_albertii.recordedBy,
            record_number = Caryota_albertii.catalogNumber,
            institution_code = Caryota_albertii.institutionID,
            locality = Caryota_albertii.verbatimLocality)

#Caryota angustifolia

dfb_can <- occ(query = 'Caryota angustifolia', from = 'bison')
dfb_can <- as.data.frame(dfb_can$bison$data) %>% 
  transmute(species = Caryota_angustifolia.name, 
            decimallongitude = as.numeric(Caryota_angustifolia.longitude),
            decimallatitude = as.numeric(Caryota_angustifolia.latitude),
            year = Caryota_angustifolia.year,
            basisOfRecord = Caryota_angustifolia.basisOfRecord,
            recorded_by = Caryota_angustifolia.recordedBy,
            record_number = Caryota_angustifolia.catalogNumber,
            institution_code = Caryota_angustifolia.institutionID,
            locality = Caryota_angustifolia.verbatimLocality)

#Caryota cumingii

dfb_ccu <- occ(query = 'Caryota cumingii', from = 'bison')
dfb_ccu <- as.data.frame(dfb_ccu$bison$data) %>% 
  transmute(species = Caryota_cumingii.name, 
            decimallongitude = as.numeric(Caryota_cumingii.longitude),
            decimallatitude = as.numeric(Caryota_cumingii.latitude),
            year = Caryota_cumingii.year,
            basisOfRecord = Caryota_cumingii.basisOfRecord,
            recorded_by = Caryota_cumingii.recordedBy,
            record_number = Caryota_cumingii.catalogNumber,
            institution_code = Caryota_cumingii.institutionID,
            locality = Caryota_cumingii.verbatimLocality)

#Caryota kiriwongensis

dfb_cki <- occ(query = 'Caryota kiriwongensis', from = 'bison')
dfb_cki <- as.data.frame(dfb_cki$bison$data) %>% 
  transmute(species = Caryota_kiriwongensis.name, 
            decimallongitude = as.numeric(Caryota_kiriwongensis.longitude),
            decimallatitude = as.numeric(Caryota_kiriwongensis.latitude),
            year = Caryota_kiriwongensis.year,
            basisOfRecord = Caryota_kiriwongensis.basisOfRecord,
            recorded_by = Caryota_kiriwongensis.recordedBy,
            record_number = Caryota_kiriwongensis.catalogNumber,
            institution_code = Caryota_kiriwongensis.institutionID,
            locality = Caryota_kiriwongensis.verbatimLocality)

#Caryota maxima

dfb_cma <- occ(query = 'Caryota maxima', from = 'bison')
dfb_cma <- as.data.frame(dfb_cma$bison$data) %>% 
  transmute(species = Caryota_maxima.name, 
            decimallongitude = as.numeric(Caryota_maxima.longitude),
            decimallatitude = as.numeric(Caryota_maxima.latitude),
            year = Caryota_maxima.year,
            basisOfRecord = Caryota_maxima.basisOfRecord,
            recorded_by = Caryota_maxima.recordedBy,
            record_number = Caryota_maxima.catalogNumber,
            institution_code = Caryota_maxima.institutionID,
            locality = Caryota_maxima.verbatimLocality)

#Caryota mitis 

dfb_cmi <- occ(query = 'Caryota mitis', from = 'bison')
dfb_cmi <- as.data.frame(dfb_cmi$bison$data) %>% 
  transmute(species = Caryota_mitis.name, 
            decimallongitude = as.numeric(Caryota_mitis.longitude),
            decimallatitude = as.numeric(Caryota_mitis.latitude),
            year = Caryota_mitis.year,
            basisOfRecord = Caryota_mitis.basisOfRecord,
            recorded_by = Caryota_mitis.recordedBy,
            record_number = Caryota_mitis.catalogNumber,
            institution_code = Caryota_mitis.institutionID,
            locality = Caryota_mitis.verbatimLocality)


#Caryota monostachya

dfb_cmo <- occ(query = 'Caryota monostachya', from = 'bison')
dfb_cmo <- as.data.frame(dfb_cmo$bison$data) %>% 
  transmute(species = Caryota_monostachya.name, 
            decimallongitude = as.numeric(Caryota_monostachya.longitude),
            decimallatitude = as.numeric(Caryota_monostachya.latitude),
            year = Caryota_monostachya.year,
            basisOfRecord = Caryota_monostachya.basisOfRecord,
            recorded_by = Caryota_monostachya.recordedBy,
            record_number = Caryota_monostachya.catalogNumber,
            institution_code = Caryota_monostachya.institutionID,
            locality = Caryota_monostachya.verbatimLocality)

#Caryota no

dfb_cno <- occ(query = 'Caryota no', from = 'bison')
dfb_cno <- as.data.frame(dfb_cno$bison$data) %>% 
  transmute(species = Caryota_no.name, 
            decimallongitude = as.numeric(Caryota_no.longitude),
            decimallatitude = as.numeric(Caryota_no.latitude),
            year = Caryota_no.year,
            basisOfRecord = Caryota_no.basisOfRecord,
            recorded_by = Caryota_no.recordedBy,
            record_number = Caryota_no.catalogNumber,
            institution_code = Caryota_no.institutionID,
            locality = Caryota_no.verbatimLocality)

#Caryota obtusa

dfb_cob <- occ(query = 'Caryota obtusa', from = 'bison')
dfb_cob <- as.data.frame(dfb_cob$bison$data) %>% 
  transmute(species = Caryota_obtusa.name, 
            decimallongitude = as.numeric(Caryota_obtusa.longitude),
            decimallatitude = as.numeric(Caryota_obtusa.latitude),
            year = Caryota_obtusa.year,
            basisOfRecord = Caryota_obtusa.basisOfRecord,
            recorded_by = Caryota_obtusa.recordedBy,
            record_number = Caryota_obtusa.catalogNumber,
            institution_code = Caryota_obtusa.institutionID,
            locality = Caryota_obtusa.verbatimLocality)

#Caryota ophiopellis

dfb_cop <- occ(query = 'Caryota ophiopellis', from = 'bison')
dfb_cop <- as.data.frame(dfb_cop$bison$data) %>% 
  transmute(species = Caryota_ophiopellis.name, 
            decimallongitude = as.numeric(Caryota_ophiopellis.longitude),
            decimallatitude = as.numeric(Caryota_ophiopellis.latitude),
            year = Caryota_ophiopellis.year,
            basisOfRecord = Caryota_ophiopellis.basisOfRecord,
            recorded_by = Caryota_ophiopellis.recordedBy,
            record_number = Caryota_ophiopellis.catalogNumber,
            institution_code = Caryota_ophiopellis.institutionID,
            locality = Caryota_ophiopellis.verbatimLocality)

#Caryota rumphiana

dfb_cru <- occ(query = 'Caryota rumphiana', from = 'bison')
dfb_cru <- as.data.frame(dfb_cru$bison$data) %>% 
  transmute(species = Caryota_rumphiana.name, 
            decimallongitude = as.numeric(Caryota_rumphiana.longitude),
            decimallatitude = as.numeric(Caryota_rumphiana.latitude),
            year = Caryota_rumphiana.year,
            basisOfRecord = Caryota_rumphiana.basisOfRecord,
            recorded_by = Caryota_rumphiana.recordedBy,
            record_number = Caryota_rumphiana.catalogNumber,
            institution_code = Caryota_rumphiana.institutionID,
            locality = Caryota_rumphiana.verbatimLocality)

#Caryota sympetala

dfb_csy <- occ(query = 'Caryota sympetala', from = 'bison')
dfb_csy <- as.data.frame(dfb_csy$bison$data) %>% 
  transmute(species = Caryota_sympetala.name, 
            decimallongitude = as.numeric(Caryota_sympetala.longitude),
            decimallatitude = as.numeric(Caryota_sympetala.latitude),
            year = Caryota_sympetala.year,
            basisOfRecord = Caryota_sympetala.basisOfRecord,
            recorded_by = Caryota_sympetala.recordedBy,
            record_number = Caryota_sympetala.catalogNumber,
            institution_code = Caryota_sympetala.institutionID,
            locality = Caryota_sympetala.verbatimLocality)

#Caryota urens

dfb_cur <- occ(query = 'Caryota urens', from = 'bison')
dfb_cur <- as.data.frame(dfb_cur$bison$data) %>% 
  transmute(species = Caryota_urens.name, 
            decimallongitude = as.numeric(Caryota_urens.longitude),
            decimallatitude = as.numeric(Caryota_urens.latitude),
            year = Caryota_urens.year,
            basisOfRecord = Caryota_urens.basisOfRecord,
            recorded_by = Caryota_urens.recordedBy,
            record_number = Caryota_urens.catalogNumber,
            institution_code = Caryota_urens.institutionID,
            locality = Caryota_urens.verbatimLocality)

#Caryota zebrina

dfb_cze <- occ(query = 'Caryota zebrina', from = 'bison')
dfb_cze <- as.data.frame(dfb_cze$bison$data) %>% 
  transmute(species = Caryota_zebrina.name, 
            decimallongitude = as.numeric(Caryota_zebrina.longitude),
            decimallatitude = as.numeric(Caryota_zebrina.latitude),
            year = Caryota_zebrina.year,
            basisOfRecord = Caryota_zebrina.basisOfRecord,
            recorded_by = Caryota_zebrina.recordedBy,
            record_number = Caryota_zebrina.catalogNumber,
            institution_code = Caryota_zebrina.institutionID,
            locality = Caryota_zebrina.verbatimLocality)

#only cmi and cur present in dataset
dfb_all <- rbind(dfb_cmi, dfb_cur)

dfb_all$coordinateUncertaintyInMeters <- NA
dfb_all$observation_count <- NA
dfb_all$database_name <- "bison"

##################### GBIF now 488-723 #####################################

#Caryota albertii

dfg_cal <- occ(query = 'Caryota albertii', from = 'gbif')
dfg_cal <- as.data.frame(dfg_cal$gbif$data) %>% 
  transmute(species = Caryota_albertii.name, 
            decimallongitude = as.numeric(Caryota_albertii.longitude),
            decimallatitude = as.numeric(Caryota_albertii.latitude),
            year = Caryota_albertii.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_albertii.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_albertii.basisOfRecord,
            recorded_by = Caryota_albertii.recordedBy,
            record_number = Caryota_albertii.catalogNumber,
            institution_code = Caryota_albertii.institutionCode,
            locality = Caryota_albertii.locality)
dfg_cal$species <- 'Caryota albertii'

#Caryota angustifolia

dfg_can <- occ(query = 'Caryota angustifolia', from = 'gbif')
dfg_can <- as.data.frame(dfg_can$gbif$data) %>% 
  transmute(species = Caryota_angustifolia.name, 
            decimallongitude = as.numeric(Caryota_angustifolia.longitude),
            decimallatitude = as.numeric(Caryota_angustifolia.latitude),
            year = Caryota_angustifolia.year,
            #coordinateUncertaintyInMeters = as.numeric(Caryota_angustifolia.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_angustifolia.basisOfRecord,
            recorded_by = Caryota_angustifolia.recordedBy,
            record_number = Caryota_angustifolia.catalogNumber,
            institution_code = Caryota_angustifolia.institutionCode,
            locality = Caryota_angustifolia.locality)
dfg_can$coordinateUncertaintyInMeters <- NA 
dfg_can$species <- 'Caryota angustifolia'

#Caryota cumingii

dfg_ccu <- occ(query = 'Caryota cumingii', from = 'gbif')
dfg_ccu <- as.data.frame(dfg_ccu$gbif$data) %>% 
  transmute(species = Caryota_cumingii.name, 
            decimallongitude = as.numeric(Caryota_cumingii.longitude),
            decimallatitude = as.numeric(Caryota_cumingii.latitude),
            year = Caryota_cumingii.year,
            #coordinateUncertaintyInMeters = as.numeric(Caryota_cumingii.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_cumingii.basisOfRecord,
            recorded_by = Caryota_cumingii.recordedBy,
            record_number = Caryota_cumingii.catalogNumber,
            institution_code = Caryota_cumingii.institutionCode,
            locality = Caryota_cumingii.locality)
dfg_ccu$coordinateUncertaintyInMeters <- NA 
dfg_ccu$species <- 'Caryota cumingii'

#Caryota kiriwongensis

dfg_cki <- occ(query = 'Caryota kiriwongensis', from = 'gbif')
dfg_cki <- as.data.frame(dfg_cki$gbif$data) %>% 
  transmute(species = Caryota_kiriwongensis.name, 
            decimallongitude = as.numeric(Caryota_kiriwongensis.longitude),
            decimallatitude = as.numeric(Caryota_kiriwongensis.latitude),
            year = Caryota_kiriwongensis.year,
            #coordinateUncertaintyInMeters = as.numeric(Caryota_kiriwongensis.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_kiriwongensis.basisOfRecord,
            recorded_by = Caryota_kiriwongensis.recordedBy,
            record_number = Caryota_kiriwongensis.catalogNumber,
            institution_code = Caryota_kiriwongensis.institutionCode,
            locality = Caryota_kiriwongensis.locality)
dfg_cki$coordinateUncertaintyInMeters <- NA 
dfg_cki$species <- 'Caryota kiriwongensis'

#Caryota maxima

dfg_cma <- occ(query = 'Caryota maxima', from = 'gbif')
dfg_cma <- as.data.frame(dfg_cma$gbif$data) %>% 
  transmute(species = Caryota_maxima.name, 
            decimallongitude = as.numeric(Caryota_maxima.longitude),
            decimallatitude = as.numeric(Caryota_maxima.latitude),
            year = Caryota_maxima.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_maxima.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_maxima.basisOfRecord,
            recorded_by = Caryota_maxima.recordedBy,
            record_number = Caryota_maxima.catalogNumber,
            institution_code = Caryota_maxima.institutionCode,
            locality = Caryota_maxima.locality)
dfg_cma$species <- 'Caryota maxima'

#Caryota mitis

dfg_cmi <- occ(query = 'Caryota mitis', from = 'gbif')
dfg_cmi <- as.data.frame(dfg_cmi$gbif$data) %>% 
  transmute(species = Caryota_mitis.name, 
            decimallongitude = as.numeric(Caryota_mitis.longitude),
            decimallatitude = as.numeric(Caryota_mitis.latitude),
            year = Caryota_mitis.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_mitis.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_mitis.basisOfRecord,
            recorded_by = Caryota_mitis.recordedBy,
            record_number = Caryota_mitis.catalogNumber,
            institution_code = Caryota_mitis.institutionCode,
            locality = Caryota_mitis.verbatimLocality)
dfg_cmi$species <- 'Caryota mitis'

#Caryota monostachya

dfg_cmo <- occ(query = 'Caryota monostachya', from = 'gbif')
dfg_cmo <- as.data.frame(dfg_cmo$gbif$data) %>% 
  transmute(species = Caryota_monostachya.name, 
            decimallongitude = as.numeric(Caryota_monostachya.longitude),
            decimallatitude = as.numeric(Caryota_monostachya.latitude),
            year = Caryota_monostachya.year,
            #coordinateUncertaintyInMeters = as.numeric(Caryota_monostachya.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_monostachya.basisOfRecord,
            recorded_by = Caryota_monostachya.recordedBy,
            record_number = Caryota_monostachya.catalogNumber,
            institution_code = Caryota_monostachya.institutionCode,
            locality = Caryota_monostachya.verbatimLocality)
dfg_cmo$coordinateUncertaintyInMeters <- NA 
dfg_cmo$species <- 'Caryota monostachya'

#Caryota no, not currently present 

dfg_cno <- occ(query = 'Caryota no', from = 'gbif')
dfg_cno <- as.data.frame(dfg_cno$gbif$data) %>% 
  transmute(species = Caryota_no.name, 
            decimallongitude = as.numeric(Caryota_no.longitude),
            decimallatitude = as.numeric(Caryota_no.latitude),
            year = Caryota_no.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_no.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_no.basisOfRecord,
            recorded_by = Caryota_no.recordedBy,
            record_number = Caryota_no.catalogNumber,
            institution_code = Caryota_no.institutionCode,
            locality = Caryota_no.verbatimLocality)
dfg_cno$species <- 'Caryota no'

#Caryota obtusa

dfg_cob <- occ(query = 'Caryota obtusa', from = 'gbif')
dfg_cob <- as.data.frame(dfg_cob$gbif$data) %>% 
  transmute(species = Caryota_obtusa.name, 
            decimallongitude = as.numeric(Caryota_obtusa.longitude),
            decimallatitude = as.numeric(Caryota_obtusa.latitude),
            year = Caryota_obtusa.year,
            #coordinateUncertaintyInMeters = as.numeric(Caryota_obtusa.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_obtusa.basisOfRecord,
            recorded_by = Caryota_obtusa.recordedBy,
            record_number = Caryota_obtusa.catalogNumber,
            institution_code = Caryota_obtusa.institutionCode,
            locality = Caryota_obtusa.verbatimLocality)
dfg_cob$coordinateUncertaintyInMeters <- NA 
dfg_cob$species <- 'Caryota obtusa'

#Caryota ophiopellis

dfg_cop <- occ(query = 'Caryota ophiopellis', from = 'gbif')
dfg_cop <- as.data.frame(dfg_cop$gbif$data) %>% 
  transmute(species = Caryota_ophiopellis.name, 
            decimallongitude = as.numeric(Caryota_ophiopellis.longitude),
            decimallatitude = as.numeric(Caryota_ophiopellis.latitude),
            year = Caryota_ophiopellis.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_ophiopellis.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_ophiopellis.basisOfRecord,
            recorded_by = Caryota_ophiopellis.recordedBy,
            record_number = Caryota_ophiopellis.catalogNumber,
            institution_code = Caryota_ophiopellis.institutionCode,
            locality = Caryota_ophiopellis.locality)
dfg_cop$species <- 'Caryota ophiopellis'

#Caryota rumphiana

dfg_cru <- occ(query = 'Caryota rumphiana', from = 'gbif')
dfg_cru <- as.data.frame(dfg_cru$gbif$data) %>% 
  transmute(species = Caryota_rumphiana.name, 
            decimallongitude = as.numeric(Caryota_rumphiana.longitude),
            decimallatitude = as.numeric(Caryota_rumphiana.latitude),
            year = Caryota_rumphiana.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_rumphiana.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_rumphiana.basisOfRecord,
            recorded_by = Caryota_rumphiana.recordedBy,
            record_number = Caryota_rumphiana.catalogNumber,
            institution_code = Caryota_rumphiana.institutionCode,
            locality = Caryota_rumphiana.locality)
dfg_cru$species <- 'Caryota rumphiana'

#Caryota sympetala

dfg_csy <- occ(query = 'Caryota sympetala', from = 'gbif')
dfg_csy <- as.data.frame(dfg_csy$gbif$data) %>% 
  transmute(species = Caryota_sympetala.name, 
            decimallongitude = as.numeric(Caryota_sympetala.longitude),
            decimallatitude = as.numeric(Caryota_sympetala.latitude),
            year = Caryota_sympetala.year,
            #coordinateUncertaintyInMeters = as.numeric(Caryota_sympetala.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_sympetala.basisOfRecord,
            recorded_by = Caryota_sympetala.recordedBy,
            record_number = Caryota_sympetala.catalogNumber,
            institution_code = Caryota_sympetala.institutionCode,
            locality = Caryota_sympetala.locality)
dfg_csy$coordinateUncertaintyInMeters <- NA 
dfg_csy$species <- 'Caryota sympetala'

#Caryota urens

dfg_cur <- occ(query = 'Caryota urens', from = 'gbif')
dfg_cur <- as.data.frame(dfg_cur$gbif$data) %>% 
  transmute(species = Caryota_urens.name, 
            decimallongitude = as.numeric(Caryota_urens.longitude),
            decimallatitude = as.numeric(Caryota_urens.latitude),
            year = Caryota_urens.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_urens.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_urens.basisOfRecord,
            recorded_by = Caryota_urens.recordedBy,
            record_number = Caryota_urens.catalogNumber,
            institution_code = Caryota_urens.institutionCode,
            locality = Caryota_urens.locality)
dfg_cur$species <- 'Caryota urens'

#Caryota zebrina

dfg_cze <- occ(query = 'Caryota zebrina', from = 'gbif')
dfg_cze <- as.data.frame(dfg_cze$gbif$data) %>% 
  transmute(species = Caryota_zebrina.name, 
            decimallongitude = as.numeric(Caryota_zebrina.longitude),
            decimallatitude = as.numeric(Caryota_zebrina.latitude),
            year = Caryota_zebrina.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_zebrina.coordinateUncertaintyInMeters),
            basisOfRecord = Caryota_zebrina.basisOfRecord,
            recorded_by = Caryota_zebrina.recordedBy,
            record_number = Caryota_zebrina.catalogNumber,
            institution_code = Caryota_zebrina.institutionCode,
            locality = Caryota_zebrina.locality)
dfg_cze$species <- 'Caryota zebrina'

#cno excluded
dfg_all <- rbind(dfg_cal, dfg_can, dfg_ccu, dfg_cki, dfg_cma, dfg_cmi, dfg_cmo, dfg_cob, dfg_cop, dfg_cru, dfg_csy, dfg_cur, dfg_cze)
dfg_all$observation_count <- NA
dfg_all$database_name <- "GBIF"


############## iDigBio now 726-986 ##########################################

#Caryota albertii

dfid_cal <- occ(query = 'Caryota albertii', from = 'idigbio')
dfid_cal <- as.data.frame(dfid_cal$idigbio$data) %>% 
  transmute(species = Caryota_albertii.canonicalname, 
            decimallongitude = as.numeric(Caryota_albertii.longitude),
            decimallatitude = as.numeric(Caryota_albertii.latitude),
            #year might need work, is date rn?
            year = Caryota_albertii.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_albertii.coordinateuncertainty),
            basisOfRecord = Caryota_albertii.basisofrecord,
            observation_count = Caryota_albertii.individualcount,
            recorded_by = Caryota_albertii.collector,
            record_number = Caryota_albertii.recordnumber,
            institution_code = Caryota_albertii.institutioncode,
            locality = Caryota_albertii.locality)
dfid_cal$species <- 'Caryota albertii'

#Caryota angustifolia

dfid_can <- occ(query = 'Caryota angustifolia', from = 'idigbio')
dfid_can <- as.data.frame(dfid_can$idigbio$data) %>% 
  transmute(species = Caryota_angustifolia.canonicalname, 
            decimallongitude = as.numeric(Caryota_angustifolia.longitude),
            decimallatitude = as.numeric(Caryota_angustifolia.latitude),
            #year might need work, is date rn?
            year = Caryota_angustifolia.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_angustifolia.coordinateuncertainty),
            basisOfRecord = Caryota_angustifolia.basisofrecord,
            observation_count = Caryota_angustifolia.individualcount,
            recorded_by = Caryota_angustifolia.collector,
            record_number = Caryota_angustifolia.recordnumber,
            institution_code = Caryota_angustifolia.institutioncode,
            locality = Caryota_angustifolia.locality)
dfid_can$species <- 'Caryota angustifolia'

#Caryota cumingii

dfid_ccu <- occ(query = 'Caryota cumingii', from = 'idigbio')
dfid_ccu <- as.data.frame(dfid_ccu$idigbio$data) %>% 
  transmute(species = Caryota_cumingii.canonicalname, 
            decimallongitude = as.numeric(Caryota_cumingii.longitude),
            decimallatitude = as.numeric(Caryota_cumingii.latitude),
            #year might need work, is date rn?
            year = Caryota_cumingii.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_cumingii.coordinateuncertainty),
            basisOfRecord = Caryota_cumingii.basisofrecord,
            observation_count = Caryota_cumingii.individualcount,
            recorded_by = Caryota_cumingii.collector,
            record_number = Caryota_cumingii.recordnumber,
            institution_code = Caryota_cumingii.institutioncode,
            locality = Caryota_cumingii.locality)
dfid_ccu$species <- 'Caryota cumingii'

#Caryota kiriwongensis

dfid_cki <- occ(query = 'Caryota kiriwongensis', from = 'idigbio')
dfid_cki <- as.data.frame(dfid_cki$idigbio$data) %>% 
  transmute(species = Caryota_kiriwongensis.canonicalname, 
            decimallongitude = as.numeric(Caryota_kiriwongensis.longitude),
            decimallatitude = as.numeric(Caryota_kiriwongensis.latitude),
            #year might need work, is date rn?
            year = Caryota_kiriwongensis.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_kiriwongensis.coordinateuncertainty),
            basisOfRecord = Caryota_kiriwongensis.basisofrecord,
            observation_count = Caryota_kiriwongensis.individualcount,
            recorded_by = Caryota_kiriwongensis.collector,
            record_number = Caryota_kiriwongensis.recordnumber,
            institution_code = Caryota_kiriwongensis.institutioncode,
            locality = Caryota_kiriwongensis.locality)
dfid_cki$species <- 'Caryota kiriwongensis'

#Caryota maxima

dfid_cma <- occ(query = 'Caryota maxima', from = 'idigbio')
dfid_cma <- as.data.frame(dfid_cma$idigbio$data) %>% 
  transmute(species = Caryota_maxima.canonicalname, 
            decimallongitude = as.numeric(Caryota_maxima.longitude),
            decimallatitude = as.numeric(Caryota_maxima.latitude),
            #year might need work, is date rn?
            year = Caryota_maxima.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_maxima.coordinateuncertainty),
            basisOfRecord = Caryota_maxima.basisofrecord,
            observation_count = Caryota_maxima.individualcount,
            recorded_by = Caryota_maxima.collector,
            record_number = Caryota_maxima.recordnumber,
            institution_code = Caryota_maxima.institutioncode,
            locality = Caryota_maxima.locality)
dfid_cma$species <- 'Caryota maxima'

#Caryota mitis

dfid_cmi <- occ(query = 'Caryota mitis', from = 'idigbio')
dfid_cmi <- as.data.frame(dfid_cmi$idigbio$data) %>% 
  transmute(species = Caryota_mitis.canonicalname, 
            decimallongitude = as.numeric(Caryota_mitis.longitude),
            decimallatitude = as.numeric(Caryota_mitis.latitude),
            #year might need work, is date rn?
            year = Caryota_mitis.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_mitis.coordinateuncertainty),
            basisOfRecord = Caryota_mitis.basisofrecord,
            observation_count = Caryota_mitis.individualcount,
            recorded_by = Caryota_mitis.collector,
            record_number = Caryota_mitis.recordnumber,
            institution_code = Caryota_mitis.institutioncode,
            locality = Caryota_mitis.locality)
dfid_cmi$species <- 'Caryota mitis'

#Caryota monostachya

dfid_cmo <- occ(query = 'Caryota monostachya', from = 'idigbio')
dfid_cmo <- as.data.frame(dfid_cmo$idigbio$data) %>% 
  transmute(species = Caryota_monostachya.canonicalname, 
            decimallongitude = as.numeric(Caryota_monostachya.longitude),
            decimallatitude = as.numeric(Caryota_monostachya.latitude),
            #year might need work, is date rn?
            year = Caryota_monostachya.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_monostachya.coordinateuncertainty),
            basisOfRecord = Caryota_monostachya.basisofrecord,
            observation_count = Caryota_monostachya.individualcount,
            recorded_by = Caryota_monostachya.collector,
            record_number = Caryota_monostachya.recordnumber,
            institution_code = Caryota_monostachya.institutioncode,
            locality = Caryota_monostachya.locality)
dfid_cmo$species <- 'Caryota monostachya'

#Caryota no

dfid_cno <- occ(query = 'Caryota no', from = 'idigbio')
dfid_cno <- as.data.frame(dfid_cno$idigbio$data) %>% 
  transmute(species = Caryota_no.canonicalname, 
            decimallongitude = as.numeric(Caryota_no.longitude),
            decimallatitude = as.numeric(Caryota_no.latitude),
            #year might need work, is date rn?
            year = Caryota_no.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_no.coordinateuncertainty),
            basisOfRecord = Caryota_no.basisofrecord,
            observation_count = Caryota_no.individualcount,
            recorded_by = Caryota_no.collector,
            record_number = Caryota_no.recordnumber,
            institution_code = Caryota_no.institutioncode,
            locality = Caryota_no.locality)
dfid_cno$species <- 'Caryota no'

#Caryota obtusa

dfid_cob <- occ(query = 'Caryota obtusa', from = 'idigbio')
dfid_cob <- as.data.frame(dfid_cob$idigbio$data) %>% 
  transmute(species = Caryota_obtusa.canonicalname, 
            decimallongitude = as.numeric(Caryota_obtusa.longitude),
            decimallatitude = as.numeric(Caryota_obtusa.latitude),
            #year might need work, is date rn?
            year = Caryota_obtusa.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_obtusa.coordinateuncertainty),
            basisOfRecord = Caryota_obtusa.basisofrecord,
            observation_count = Caryota_obtusa.individualcount,
            recorded_by = Caryota_obtusa.collector,
            record_number = Caryota_obtusa.recordnumber,
            institution_code = Caryota_obtusa.institutioncode,
            locality = Caryota_obtusa.locality)
dfid_cob$species <- 'Caryota obtusa'

#Caryota ophiopellis

dfid_cop <- occ(query = 'Caryota ophiopellis', from = 'idigbio')
dfid_cop <- as.data.frame(dfid_cop$idigbio$data) %>% 
  transmute(species = Caryota_ophiopellis.canonicalname, 
            decimallongitude = as.numeric(Caryota_ophiopellis.longitude),
            decimallatitude = as.numeric(Caryota_ophiopellis.latitude),
            #year might need work, is date rn?
            year = Caryota_ophiopellis.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_ophiopellis.coordinateuncertainty),
            basisOfRecord = Caryota_ophiopellis.basisofrecord,
            observation_count = Caryota_ophiopellis.individualcount,
            recorded_by = Caryota_ophiopellis.collector,
            record_number = Caryota_ophiopellis.recordnumber,
            institution_code = Caryota_ophiopellis.institutioncode,
            locality = Caryota_ophiopellis.locality)
dfid_cop$species <- 'Caryota ophiopellis'

#Caryota rumphiana

dfid_cru <- occ(query = 'Caryota rumphiana', from = 'idigbio')
dfid_cru <- as.data.frame(dfid_cru$idigbio$data) %>% 
  transmute(species = Caryota_rumphiana.canonicalname, 
            decimallongitude = as.numeric(Caryota_rumphiana.longitude),
            decimallatitude = as.numeric(Caryota_rumphiana.latitude),
            #year might need work, is date rn?
            year = Caryota_rumphiana.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_rumphiana.coordinateuncertainty),
            basisOfRecord = Caryota_rumphiana.basisofrecord,
            observation_count = Caryota_rumphiana.individualcount,
            recorded_by = Caryota_rumphiana.collector,
            record_number = Caryota_rumphiana.recordnumber,
            institution_code = Caryota_rumphiana.institutioncode,
            locality = Caryota_rumphiana.locality)
dfid_cru$species <- 'Caryota rumphiana'

#Caryota sympetala

dfid_csy <- occ(query = 'Caryota sympetala', from = 'idigbio')
dfid_csy <- as.data.frame(dfid_csy$idigbio$data) %>% 
  transmute(species = Caryota_sympetala.canonicalname, 
            decimallongitude = as.numeric(Caryota_sympetala.longitude),
            decimallatitude = as.numeric(Caryota_sympetala.latitude),
            #year might need work, is date rn?
            year = Caryota_sympetala.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_sympetala.coordinateuncertainty),
            basisOfRecord = Caryota_sympetala.basisofrecord,
            observation_count = Caryota_sympetala.individualcount,
            recorded_by = Caryota_sympetala.collector,
            record_number = Caryota_sympetala.recordnumber,
            institution_code = Caryota_sympetala.institutioncode,
            locality = Caryota_sympetala.locality)
dfid_csy$species <- 'Caryota sympetala'

#Caryota urens

dfid_cur <- occ(query = 'Caryota urens', from = 'idigbio')
dfid_cur <- as.data.frame(dfid_cur$idigbio$data) %>% 
  transmute(species = Caryota_urens.canonicalname, 
            decimallongitude = as.numeric(Caryota_urens.longitude),
            decimallatitude = as.numeric(Caryota_urens.latitude),
            #year might need work, is date rn?
            year = Caryota_urens.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_urens.coordinateuncertainty),
            basisOfRecord = Caryota_urens.basisofrecord,
            observation_count = Caryota_urens.individualcount,
            recorded_by = Caryota_urens.collector,
            record_number = Caryota_urens.recordnumber,
            institution_code = Caryota_urens.institutioncode,
            locality = Caryota_urens.locality)
dfid_cur$species <- 'Caryota urens'

#Caryota zebrina

dfid_cze <- occ(query = 'Caryota zebrina', from = 'idigbio')
dfid_cze <- as.data.frame(dfid_cze$idigbio$data) %>% 
  transmute(species = Caryota_zebrina.canonicalname, 
            decimallongitude = as.numeric(Caryota_zebrina.longitude),
            decimallatitude = as.numeric(Caryota_zebrina.latitude),
            #year might need work, is date rn?
            year = Caryota_zebrina.datecollected,
            coordinateUncertaintyInMeters = as.numeric(Caryota_zebrina.coordinateuncertainty),
            basisOfRecord = Caryota_zebrina.basisofrecord,
            observation_count = Caryota_zebrina.individualcount,
            recorded_by = Caryota_zebrina.collector,
            record_number = Caryota_zebrina.recordnumber,
            institution_code = Caryota_zebrina.institutioncode,
            locality = Caryota_zebrina.locality)
dfid_cze$species <- 'Caryota zebrina'

dfid_all <- rbind(dfid_cal, dfid_can, dfid_ccu, dfid_cki, dfid_cma, dfid_cmi, dfid_cmo, dfid_cno, dfid_cob, dfid_cop, dfid_cru, dfid_csy, dfid_cur, dfid_cze)

dfid_all$database_name <- "idigbio"

yearcoli <- dfid_all$year
yearcoli <- year(yearcoli)
dfid_all$year <- yearcoli


#################### iNat now 989-1194 #############################################

#Caryota albertii

dfin_cal <- occ(query = 'Caryota albertii', from = 'inat', limit = 200000)
dfin_cal <- as.data.frame(dfin_cal$inat$data) %>% 
  transmute(species = Caryota_albertii.name, 
            decimallongitude = as.numeric(Caryota_albertii.longitude),
            decimallatitude = as.numeric(Caryota_albertii.latitude),
            year = Caryota_albertii.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_albertii.positional_accuracy),
            observation_count = Caryota_albertii.user.observations_count,
            recorded_by = Caryota_albertii.user.name,
            locality = Caryota_albertii.place_guess) 
dfin_cal$species <- 'Caryota albertii'

#Caryota angustifolia

dfin_can <- occ(query = 'Caryota angustifolia', from = 'inat', limit = 200000)
dfin_can <- as.data.frame(dfin_can$inat$data) %>% 
  transmute(species = Caryota_angustifolia.name, 
            decimallongitude = as.numeric(Caryota_angustifolia.longitude),
            decimallatitude = as.numeric(Caryota_angustifolia.latitude),
            year = Caryota_angustifolia.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_angustifolia.positional_accuracy),
            observation_count = Caryota_angustifolia.user.observations_count,
            recorded_by = Caryota_angustifolia.user.name,
            locality = Caryota_angustifolia.place_guess) 
dfin_can$species <- 'Caryota angustifolia'

#Caryota cumingii

dfin_ccu <- occ(query = 'Caryota cumingii', from = 'inat', limit = 200000)
dfin_ccu$inat$Caryota_cumingii.name <- 'Caryota cumingii'
dfin_ccu <- as.data.frame(dfin_ccu$inat$data) %>% 
  transmute(species = Caryota_cumingii.name, 
            decimallongitude = as.numeric(Caryota_cumingii.longitude),
            decimallatitude = as.numeric(Caryota_cumingii.latitude),
            year = Caryota_cumingii.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_cumingii.positional_accuracy),
            observation_count = Caryota_cumingii.user.observations_count,
            recorded_by = Caryota_cumingii.user.name,
            locality = Caryota_cumingii.place_guess) 


#Caryota kiriwongensis

dfin_cki <- occ(query = 'Caryota kiriwongensis', from = 'inat', limit = 200000)
dfin_cki <- as.data.frame(dfin_cki$inat$data) %>% 
  transmute(species = Caryota_kiriwongensis.name, 
            decimallongitude = as.numeric(Caryota_kiriwongensis.longitude),
            decimallatitude = as.numeric(Caryota_kiriwongensis.latitude),
            year = Caryota_kiriwongensis.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_kiriwongensis.positional_accuracy),
            observation_count = Caryota_kiriwongensis.user.observations_count,
            recorded_by = Caryota_kiriwongensis.user.name,
            locality = Caryota_kiriwongensis.place_guess) 
dfin_cki$species <- 'Caryota kiriwongensis'

#Caryota maxima

dfin_cma <- occ(query = 'Caryota maxima', from = 'inat', limit = 200000)
dfin_cma <- as.data.frame(dfin_cma$inat$data) %>% 
  transmute(species = Caryota_maxima.name, 
            decimallongitude = as.numeric(Caryota_maxima.longitude),
            decimallatitude = as.numeric(Caryota_maxima.latitude),
            year = Caryota_maxima.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_maxima.positional_accuracy),
            observation_count = Caryota_maxima.user.observations_count,
            recorded_by = Caryota_maxima.user.name,
            locality = Caryota_maxima.place_guess) 
dfin_cma$species <- 'Caryota maxima'

#Caryota mitis

dfin_cmi <- occ(query = 'Caryota mitis', from = 'inat', limit = 200000)
dfin_cmi <- as.data.frame(dfin_cmi$inat$data) %>% 
  transmute(species = Caryota_mitis.name, 
            decimallongitude = as.numeric(Caryota_mitis.longitude),
            decimallatitude = as.numeric(Caryota_mitis.latitude),
            year = Caryota_mitis.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_mitis.positional_accuracy),
            observation_count = Caryota_mitis.user.observations_count,
            recorded_by = Caryota_mitis.user.name,
            locality = Caryota_mitis.place_guess) 
dfin_cmi$species <- 'Caryota mitis'

#Caryota monostachya

dfin_cmo <- occ(query = 'Caryota monostachya', from = 'inat', limit = 200000)
dfin_cmo <- as.data.frame(dfin_cmo$inat$data) %>% 
  transmute(species = Caryota_monostachya.name, 
            decimallongitude = as.numeric(Caryota_monostachya.longitude),
            decimallatitude = as.numeric(Caryota_monostachya.latitude),
            year = Caryota_monostachya.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_monostachya.positional_accuracy),
            observation_count = Caryota_monostachya.user.observations_count,
            recorded_by = Caryota_monostachya.user.name,
            locality = Caryota_monostachya.place_guess) 
dfin_cmo$species <- 'Caryota monostachya'

#Caryota no #takes ages, lots of results 

dfin_cno <- occ(query = 'Caryota no', from = 'inat', limit = 200000)
dfin_cno <- as.data.frame(dfin_cno$inat$data) %>% 
  transmute(species = Caryota_no.name, 
            decimallongitude = as.numeric(Caryota_no.longitude),
            decimallatitude = as.numeric(Caryota_no.latitude),
            year = Caryota_no.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_no.positional_accuracy),
            observation_count = Caryota_no.user.observations_count,
            recorded_by = Caryota_no.user.name,
            locality = Caryota_no.place_guess) 
dfin_cno$species <- 'Caryota no'

#Caryota obtusa

dfin_cob <- occ(query = 'Caryota obtusa', from = 'inat', limit = 200000)
dfin_cob <- as.data.frame(dfin_cob$inat$data) %>% 
  transmute(species = Caryota_obtusa.name, 
            decimallongitude = as.numeric(Caryota_obtusa.longitude),
            decimallatitude = as.numeric(Caryota_obtusa.latitude),
            year = Caryota_obtusa.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_obtusa.positional_accuracy),
            observation_count = Caryota_obtusa.user.observations_count,
            recorded_by = Caryota_obtusa.user.name,
            locality = Caryota_obtusa.place_guess) 
dfin_cob$species <- 'Caryota obtusa'

#Caryota ophiopellis # not returned on initial build

dfin_cop <- occ(query = 'Caryota ophiopellis', from = 'inat', limit = 200000)
dfin_cop$inat$Caryota_ophiopellis.name <- 'Caryota ophiopellis'
dfin_cop <- as.data.frame(dfin_cop$inat$data) %>% 
  transmute(species = Caryota_ophiopellis.name, 
            decimallongitude = as.numeric(Caryota_ophiopellis.longitude),
            decimallatitude = as.numeric(Caryota_ophiopellis.latitude),
            year = Caryota_ophiopellis.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_ophiopellis.positional_accuracy),
            observation_count = Caryota_ophiopellis.user.observations_count,
            recorded_by = Caryota_ophiopellis.user.name,
            locality = Caryota_ophiopellis.place_guess) 

#Caryota rumphiana

dfin_cru <- occ(query = 'Caryota rumphiana', from = 'inat', limit = 200000)
dfin_cru <- as.data.frame(dfin_cru$inat$data) %>% 
  transmute(species = Caryota_rumphiana.name, 
            decimallongitude = as.numeric(Caryota_rumphiana.longitude),
            decimallatitude = as.numeric(Caryota_rumphiana.latitude),
            year = Caryota_rumphiana.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_rumphiana.positional_accuracy),
            observation_count = Caryota_rumphiana.user.observations_count,
            recorded_by = Caryota_rumphiana.user.name,
            locality = Caryota_rumphiana.place_guess) 
dfin_cru$species <- 'Caryota rumphiana'

#Caryota sympetala # not returned on initial build

dfin_csy <- occ(query = 'Caryota sympetala', from = 'inat', limit = 200000)
dfin_csy$inat$Caryota_sympetala.name <- 'Caryota sympetala'
dfin_csy <- as.data.frame(dfin_csy$inat$data) %>% 
  transmute(species = Caryota_sympetala.name, 
            decimallongitude = as.numeric(Caryota_sympetala.longitude),
            decimallatitude = as.numeric(Caryota_sympetala.latitude),
            year = Caryota_sympetala.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_sympetala.positional_accuracy),
            observation_count = Caryota_sympetala.user.observations_count,
            recorded_by = Caryota_sympetala.user.name,
            locality = Caryota_sympetala.place_guess) 


#Caryota urens

dfin_cur <- occ(query = 'Caryota urens', from = 'inat', limit = 200000)
dfin_cur <- as.data.frame(dfin_cur$inat$data) %>% 
  transmute(species = Caryota_urens.name, 
            decimallongitude = as.numeric(Caryota_urens.longitude),
            decimallatitude = as.numeric(Caryota_urens.latitude),
            year = Caryota_urens.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_urens.positional_accuracy),
            observation_count = Caryota_urens.user.observations_count,
            recorded_by = Caryota_urens.user.name,
            locality = Caryota_urens.place_guess) 
dfin_cur$species <- 'Caryota urens'

#Caryota zebrina

dfin_cze <- occ(query = 'Caryota zebrina', from = 'inat', limit = 200000)
dfin_cze <- as.data.frame(dfin_cze$inat$data) %>% 
  transmute(species = Caryota_zebrina.name, 
            decimallongitude = as.numeric(Caryota_zebrina.longitude),
            decimallatitude = as.numeric(Caryota_zebrina.latitude),
            year = Caryota_zebrina.observed_on_details.year,
            coordinateUncertaintyInMeters = as.numeric(Caryota_zebrina.positional_accuracy),
            observation_count = Caryota_zebrina.user.observations_count,
            recorded_by = Caryota_zebrina.user.name,
            locality = Caryota_zebrina.place_guess) 
dfin_cze$species <- 'Caryota zebrina'

dfin_all <- rbind(dfin_cal, dfin_can, dfin_cki, dfin_cma, dfin_cmi, dfin_cmo, dfin_cno, dfin_cob, dfin_cru, dfin_cur, dfin_cze)
#dfin_ccu, dfin_cop, dfin_csy
dfin_all$basisOfRecord <- NA
dfin_all$database_name <- "inat"
dfin_all$record_number <- NA
dfin_all$institution_code <- NA

############################################# unifying into full db ##############################

Original <- rbind(dfa_all, dfb_all, dfbien_all, dfg_all, dfid_all, dfin_all) 

Original <- Original %>% 
  filter(!is.na(decimallongitude), !is.na(decimallatitude))

Original$label <- paste("<p>", "Species =", Original$species, "</p>",
                       "<p>", "Locality =", Original$locality, "</p>",
                       "<p>", "Coordinate uncertainty in meters =", Original$coordinateUncertaintyInMeters, "</p>",
                       "<p>", "Database =", Original$database_name, "</p>"
                       )

Full <- Original %>%
  cc_val() %>% # removes or flags non-numeric and not available coordinates 
  cc_equ() %>% # removes or flags records with equal latitude and longitude coordinates
  cc_cap() %>% # removes or flags records within a certain radius around country capitals
  cc_cen() %>% # removes or flags records within a radius around the geographic centroids of political countries and provinces
  cc_gbif() %>% # removes or flags records within a radius around the GBIF headquarters 
  cc_inst() %>% # removes or flags records assigned to the location of zoos, botanical gardens, herbaria, universities and museums
  cc_sea() %>% # removes or flags coordinates outside the reference landmass. A custom gazetteer with a 1‐degree buffer for cc_sea is used to avoid flagging records close to the coastline
  cc_zero() %>% # removes or flags records with either zero longitude or latitude and a radius around the point at zero longitude and zero latitude
  cc_urb() %>% # removes or flags records from inside urban areas
  cc_dupl(lon = "decimallongitude", lat = "decimallatitude") # removes or flags duplicated records based on species name and coordinates

Partial <- Original %>%
  cc_val() %>% # removes or flags non-numeric and not available coordinates !
  cc_equ() %>% # removes or flags records with equal latitude and longitude coordinates !
  cc_zero() %>% # removes or flags records with either zero longitude or latitude and a radius around the point at zero longitude and zero latitude !
  cc_dupl(lon = "decimallongitude", lat = "decimallatitude") # removes or flags duplicated records based on species name and coordinates !



