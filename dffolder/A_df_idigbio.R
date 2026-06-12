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
