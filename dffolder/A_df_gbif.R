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
