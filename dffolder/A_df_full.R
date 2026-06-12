df_full <- rbind(dfa_all, dfb_all, dfbien_all, dfg_all, dfid_all, dfin_all) 

df_full <- df_full %>% 
  filter(!is.na(decimallongitude), !is.na(decimallatitude))


df_full_clean <- df_full %>%
  cc_val() %>% # removes or flags non-numeric and not available coordinates !
  cc_equ() %>% # removes or flags records with equal latitude and longitude coordinates !
  cc_cap() %>% # removes or flags records within a certain radius around country capitals (less strict)
  cc_cen() %>% # removes or flags records within a radius around the geographic centroids of political countries and provinces (what radius)
  cc_gbif() %>% # removes or flags records within a radius around the GBIF headquarters 
  cc_inst() %>% # removes or flags records assigned to the location of zoos, botanical gardens, herbaria, universities and museums
  cc_sea() %>% # removes or flags coordinates outside the reference landmass. A custom gazetteer with a 1‐degree buffer for cc_sea is used to avoid flagging records close to the coastline. Problematic in coastal areas
  cc_zero() %>% # removes or flags records with either zero longitude or latitude and a radius around the point at zero longitude and zero latitude !
  cc_urb() %>% # removes or flags records from inside urban areas
  cc_dupl(lon = "decimallongitude", lat = "decimallatitude") # removes or flags duplicated records based on species name and coordinates !


cc_val() %>% # removes or flags non-numeric and not available coordinates !
cc_equ() %>% # removes or flags records with equal latitude and longitude coordinates !
cc_zero() %>% # removes or flags records with either zero longitude or latitude and a radius around the point at zero longitude and zero latitude !
cc_dupl(lon = "decimallongitude", lat = "decimallatitude") # removes or flags duplicated records based on species name and coordinates !




