library(shiny)

#using dashboard lets you change the colour and theme more easily than base shiny (also looks more professional)

shinyUI( dashboardPage( 
  skin = "green",
#give titular name 
  dashboardHeader(title = "CaryotAtlas"),
#create sidebar with input channels 
  dashboardSidebar(
      helpText("Select options to create your own atlas for the Caryota genus"),
      
#species selection input, using Caryota database names to get all of them 
      selectInput(inputId = "SppSel", 
                  label = "Species Selection",
                  choices = paste(Caryota$SpecName)),

#year range of data input      
      sliderInput(inputId = "range", 
                  label = "Year Range:",
                  min = 1750, max = 2020, 
                  value = c(1950, 2020), sep = ""),

#selecting which dataset to send forward 
      selectInput(inputId = "cleanlvl", 
                  label = "Data Cleaning options ",
                  choices = c("Original", 
                              "Partial",
                              "Full"),
                  selected = "Original"),

#the simplest way to add writing to shiny, p() starts a new paragraph of text. 

      p("Selecting from these options creates your own CaryotAtlas! The map requires a few seconds to load so please be patient."),
      
      p("To hide the sidebar and display only the map, click the box with 3 dashes next to the CaryotAtlas title."),

      p("While a partial or full clean is recommended, for further information as to cleaning level, please visit our", a("GitHub", href = "https://github.com/pebgroup/Shiny-Palm-Atlas"),"."),

      p("If an error message is returned instead of your own CaryotAtlas, your search has returned no occurrence points. Please widen your search and try again!"),

# text outputs to tell the user which input options they have selected
      textOutput("selected_spp"),
      textOutput("min_max"),
      textOutput("selected_OriCl")
    ),
      

#this is the main body of the app     
    dashboardBody(
#the leaflet output is mostly sorted on the server side, this tells the app to display it
      leafletOutput("mymap", height=600),
#action/download buttons can use HTML tags to give them properties, eg changing writing/background colour
      actionButton(inputId = "update_map", "Create your own CaryotAtlas and dataset!", width = "100%", class = "butt"),
      tags$head(tags$style(".butt{background-color: green !important;} .butt{color: white;}")), # background color and font color
      downloadButton("download_data", "Download the dataset you've created!", width = "100%", class = "butt2"),
      tags$head(tags$style(".butt2{background-color: white !important;} .butt2{color: green;}")), # background color and font color)
      
#this bit of text provides hyperlinks to the datasets used, and to the biology page at AU. 
      p("This app was developed as part of the Plant Evolutionary Biology group at Aarhus University. It aims to provide the tools for researchers and enthusiasts alike to study the", a(em("Caryota"), href = "https://en.wikipedia.org/wiki/Caryota", target = "_blank"), "genus. To find out more about these fishtail palms, click", a("here", href = "https://en.wikipedia.org/wiki/Caryota", target = "_blank"),"."),
      p("The source databases include;", 
        a("ALA,", href = "https://www.ala.org.au/"),
        a("BIEN,", href = "https://bien.nceas.ucsb.edu/bien/"),
        a("BISON,", href = "https://bison.usgs.gov/#home"),
        a("GBIF,", href = "https://www.gbif.org/"),
        a("iDigBio,", href = "https://www.idigbio.org/"),
        a("iNaturalist,", href = "https://www.inaturalist.org/"),"."),
      p("The future of Biology is incredibly interesting, if you or someone you know is curious about being a part of it, please have a look", a("here", href = "https://bios.au.dk/"),"."),
      p("Please email br751@york.ac.uk with questions or suggestions.")
      )
  )
)
