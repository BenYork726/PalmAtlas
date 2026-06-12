library(spocc)

get_bison_occurrences <- function(species_name) {
  # Format the species name for column access (replace space with underscore)
  species_col_name <- gsub(" ", "_", species_name)
  
  # Try to get the occurrence data
  species_data <- occ(query = species_name, from = 'bison')
  
  # Check if we got data from bison
  if(is.null(species_data) || 
     is.null(species_data$bison) || 
     is.null(species_data$bison$data) || 
     !(paste0(species_col_name) %in% names(species_data$bison$data)) ||
     nrow(species_data$bison$data[[paste0(species_col_name)]]) == 0) {
    
    # Create an empty dataframe with the required structure
    result_df <- data.frame(
      species = character(0),
      decimallongitude = numeric(0),
      decimallatitude = numeric(0),
      year = character(0),
      basisOfRecord = character(0),
      recorded_by = character(0),
      record_number = character(0),
      institution_code = character(0),
      locality = character(0)
    )
    message(paste("No occurrence data found for", species_name, "from Bison"))
  }
  else {
    # Process the data if it exists
    result_df <- tryCatch({
      as.data.frame(species_data$bison$data) %>% 
        transmute(
          species = .data[[paste0(species_col_name, ".name")]], 
          decimallongitude = as.numeric(.data[[paste0(species_col_name, ".longitude")]]),
          decimallatitude = as.numeric(.data[[paste0(species_col_name, ".latitude")]]),
          year = .data[[paste0(species_col_name, ".year")]],
          basisOfRecord = .data[[paste0(species_col_name, ".basisOfRecord")]],
          recorded_by = .data[[paste0(species_col_name, ".collector")]],
          record_number = .data[[paste0(species_col_name, ".recordNumber")]],
          institution_code = .data[[paste0(species_col_name, ".raw_institutionCode")]],
          locality = .data[[paste0(species_col_name, ".raw_locationRemarks")]]
        )
    }, error = function(e) {
      message(paste("Error processing BISON data for", species_name, ":", e$message))
      # Return an empty dataframe with the right structure
      return(data.frame(
        species = character(0),
        decimallongitude = numeric(0),
        decimallatitude = numeric(0),
        year = character(0),
        basisOfRecord = character(0),
        recorded_by = character(0),
        record_number = character(0),
        institution_code = character(0),
        locality = character(0)
      ))
    })
  }
  
  # Add database identifier
  result_df$database_name <- "bison"
  result_df$observation_count <- NA
  
  return(result_df)
}

# Function to process a list of species and combine results
get_all_caryota_occurrences <- function(species_list) {
  # Initialize empty dataframe to store results
  all_occurrences <- data.frame()
  
  # Process each species
  for (species in species_list) {
    message(paste("Processing", species))
    species_df <- get_bison_occurrences(species)
    
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
  "Caryota sympetala",
  "Caryota urens",
  "Caryota zebrina"
)

# Get all occurrences
dfb_all <- get_all_caryota_occurrences(caryota_species)
