library(shiny)

shinyServer ( function(input, output) {
  
#writing the selected variables for easy assessment
#unlike the UI side, these are discrete functions and so don't need commas between the created functions
  output$selected_spp <- renderText({ 
    paste("You have selected", input$SppSel)
  })

  output$min_max <- renderText({ 
    paste("You have chosen a range that goes from",
          input$range[1], "to", input$range[2])
    })
  output$selected_OriCl <- renderText({ 
    paste("You have selected", input$cleanlvl, "cleaning")
  })
  
#this makes the download button work, pasting the species selection input as the file name
#using .csv to direct the computer to save it as one
  output$download_data <- downloadHandler(
    filename = function() {
      paste(input$SppSel, ".csv", sep="")
      },
    content = function(file) {
      write.csv(data_input(), file)
      }
    )
    
#this function deals with switching the datasets between cleaning levels, by putting them into a reactive object. 
#Original, Partial and Full are all separate databases
  data_switch <- reactive({
    switch (input$cleanlvl,
            "Original" = Original, 
            "Partial" = Partial,
            "Full" = Full
    )
  })
  
#this function filters the reactive object built in the previous function
#it does this by filtering the selected dataset by species name, and the minimum/maximum year value chosen. 
    data_input <- reactive({ data_switch() %>% 
      filter(species == input$SppSel) %>% 
      filter(year >= input$range[1]) %>% 
      filter(year <= input$range[2]) 
    }
    )
    
#the leaflet output is rendered here
  output$mymap <- renderLeaflet({
    
#if/else statements are used to delay the map being built until the action button is clicked
#the isolate function stops the reactive variables changing the object, until the action button is clicked
    if(input$update_map==0)
      return()
    else
      isolate(
#This filters the caryota list dataframe based on what species is selected
    df_map <- Caryotalist[Caryotalist$SpecName == input$SppSel ,]
      )
    
    if(input$update_map==0)
      return()
    else
      isolate(
#This creates a palette function, and sets the domain to the previously created reactive dataframe value column (0-1000) 
    palette <- colorNumeric(palette = "Greens" , domain = df_map$value)
      )
    
    if(input$update_map==0)
      return()
    else
      isolate(
#The palette function created above is then used on the df_map value column
#This adds the appropriate RBG value to the dataframe, and is saved in a new column called colour
    df_map$color <- palette(df_map$value)
      )
    
    if(input$update_map==0)
      return()
    else
      isolate(
#the leaflet function is passed to mymap to save it
    mymap <- leaflet() %>%
      addTiles() %>%
#polygons are added from the shape file to create a base map
#the fill colour is set by calling the df_map$colour column
      addPolygons(data=BotCon, 
                  stroke = TRUE,
                  smoothFactor = 0.3, 
                  weight = 1, 
                  fillOpacity = 0.5,  
                  fillColor = df_map$color, 
                  highlightOptions = highlightOptions(color = "white", weight = 3,
                                                      bringToFront = TRUE),
                  label = ~LEVEL3_NAM) %>% 
#markers are added from the reactive and filtered dataset, and labelled by the label column in the dataset. 
#this column is written in HTML format, so the label is told that it's reading the text as HTML
      addMarkers(data = data_input(), lng = ~ decimallongitude, lat = ~ decimallatitude, label = lapply(data_input()$label, HTML)) %>% 
    setView(lng = 100.52, lat = 13.73, zoom = 3) 
      )
    
    if(input$update_map==0)
      return()
    else
      isolate(
#finally, this bit passes the created map option to the leaflet render function 
    mymap
      )
  })
  
})