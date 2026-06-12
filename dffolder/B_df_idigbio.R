library(spocc)
library(magrittr)
library(dplyr)
# Function to retrieve and process occurrence data from idigbio for a given species
get_idigbio_occurrences <- function(species_name) {
  # Format the species name for column access (replace space with underscore)
  species_col_name <- gsub(" ", "_", species_name)
  
  # Try to get the occurrence data
  species_data <- occ(query = species_name, from = 'idigbio')
  
  # Create an empty dataframe with the required structure
  empty_df <- data.frame(
    species = character(0),
    decimallongitude = numeric(0),
    decimallatitude = numeric(0),
    year = character(0),
    coordinateUncertaintyInMeters = numeric(0),
    basisOfRecord = character(0),
    recorded_by = character(0),
    record_number = character(0),
    institution_code = character(0),
    locality = character(0),
    database_name = character(0),
    observation_count = numeric(0),
    stringsAsFactors = FALSE
  )
  
  # Check if we got data from idigbio
  if(is.null(species_data) || 
     is.null(species_data$idigbio) || 
     is.null(species_data$idigbio$data) || 
     !(paste0(species_col_name) %in% names(species_data$idigbio$data)) ||
     nrow(species_data$idigbio$data[[paste0(species_col_name)]]) == 0) {
    
    message(paste("No occurrence data found for", species_name, "from idigbio"))
    return(empty_df)
  }   
  # Process the data if it exists
  result_df <- tryCatch({
    # Check if required columns exist
    cols_needed <- c(
      paste0(species_col_name, ".name"),
      paste0(species_col_name, ".longitude"),
      paste0(species_col_name, ".latitude"),
      paste0(species_col_name, ".year"),
      paste0(species_col_name, ".coordinateUncertaintyInMeters"),
      paste0(species_col_name, ".basisOfRecord"),
      paste0(species_col_name, ".collector"),
      paste0(species_col_name, ".recordNumber"),
      paste0(species_col_name, ".raw_institutionCode")
    )

    
    # Check if raw_locationRemarks exists - it's often missing
    location_col <- paste0(species_col_name, ".raw_locationRemarks")
    has_location <- location_col %in% names(species_data$idigbio$data)
    
    # Create dataframe with safe column access
    df <- as.data.frame(species_data$idigbio$data)
    
    processed_df <- df %>% 
      transmute(
        species = df[[paste0(species_col_name, "canonicalname")]], 
        decimallongitude = as.numeric(df[[paste0(species_col_name, ".longitude")]]),
        decimallatitude = as.numeric(df[[paste0(species_col_name, ".latitude")]]),
        year = df[[paste0(species_col_name, ".datecollected")]],
        coordinateUncertaintyInMeters = as.numeric(df[[paste0(species_col_name, ".coordinateuncertainty")]]),
        basisOfRecord = df[[paste0(species_col_name, ".basisofrecord")]],
        recorded_by = df[[paste0(species_col_name, ".collector")]],
        record_number = df[[paste0(species_col_name, ".recordNumber")]],
        institution_code = df[[paste0(species_col_name, ".raw_institutionCode")]],
        locality = if(has_location) df[[location_col]] else NA
      )
    
    # Add database identifier and observation count
    processed_df$database_name <- "idigbio"
    processed_df$observation_count <- NA
    
    return(processed_df)
  }, error = function(e) {
    message(paste("Error processing idigbio data for", species_name, ":", e$message))
    return(empty_df)
  })
  
  return(result_df)
}

# Function to process a list of species and combine results
get_all_caryota_occurrences <- function(species_list) {
  # Initialize empty dataframe to store results
  all_occurrences <- data.frame()
  
  # Process each species
  for (species in species_list) {
    message(paste("Processing", species))
    species_df <- get_idigbio_occurrences(species)
    
    # Add to the combined dataframe if we got results
    if (nrow(species_df) > 0) {
      all_occurrences <- rbind(all_occurrences, species_df)
    }
  }
  
  return(all_occurrences)
}

# Example usage:
caryota_species <- c(
  "Caryota albertii", 
  "Caryota angustifolia",
  "Caryota cumingii",
  "Caryota kiriwongensis",
  "Caryota maxima",
  "Caryota mitis",
  "Caryota monostachya", 
  "Caryota no",
  "Caryota obtusa",
  "Caryota ophiopellis",
  "Caryota rumphiana",
  "Caryota sympetidigbio",
  "Caryota urens",
  "Caryota zebrina"
)

# Get all occurrences
df_idigbio_all <- get_all_caryota_occurrences(caryota_species)
