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
dfbien_all$database_name <- "Bien"




