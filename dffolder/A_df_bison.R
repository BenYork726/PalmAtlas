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


