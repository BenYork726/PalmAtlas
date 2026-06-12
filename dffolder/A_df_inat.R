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


