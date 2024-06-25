# Load packages
library(shiny)
library(bslib)
library(rsconnect)

library(tidyverse)
library(ggmap)
library(maps)

plots <- readRDS("plot_data.RDS")
list <- list("Adelaide",
             "Albany",
             "Alice Springs",
             "Amberley",
             "Barcaldine",
             "Bathurst",
             "Birdsville",
             "Bourke",
             "Bridgetown",
             "Brisbane Airport",
             "Broome",
             "Bundaberg",
             "Burketown",
             "Butlers Gorge",
             "Cabramurra",
             "Cairns",
             "Canberra",
             "Cape Borda",
             "Cape Bruny",
             "Cape Leeuwin",
             "Cape Moreton",
             "Cape Otway",
             "Carnarvon",
             "Ceduna",
             "Charleville",
             "Charters Towers",
             "Cobar",
             "Coffs Harbour",
             "Cunderdin",
             "Dalwallinu",
             "Darwin",
             "Deniliquin",
             "Dubbo",
             "Esperance",
             "Eucla",
             "Forrest",
             "Gabo Island",
             "Gayndah",
             "Georgetown",
             "Geraldton",
             "Giles",
             "Grove",
             "Halls Creek",
             "Hobart",
             "Horn Island",
             "Inverell",
             "Kalgoorlie-Boulder",
             "Kalumburu",
             "Karijini North (Wittenoom)",
             "Katanning",
             "Kerang",
             "Kyancutta",
             "Larapuna (Eddystone Point)",
             "Launceston Airport",
             "Laverton",
             "Longreach",
             "Low Head",
             "Mackay",
             "Marble Bar",
             "Marree",
             "Meekatharra",
             "Melbourne",
             "Merredin",
             "Mildura",
             "Miles",
             "Morawa",
             "Moree",
             "Moruya Heads",
             "Mount Gambier",
             "Nhill",
             "Normanton",
             "Nowra",
             "Nuriootpa",
             "Orbost",
             "Perth Airport",
             "Point Perpendicular",
             "Port Hedland",
             "Port Macquarie",
             "Rabbit Flat",
             "Richmond (NSW)",
             "Richmond (Qld)",
             "Robe",
             "Rockhampton",
             "Rutherglen",
             "Sale",
             "Scone",
             "Snowtown",
             "St George",
             "Sydney",
             "Tarcoola",
             "Tennant Creek",
             "Thargomindah",
             "Tibooburra",
             "Townsville",
             "Victoria River Downs",
             "Wagga Wagga",
             "Walgett",
             "Wandering",
             "Weipa",
             "West Wyalong",
             "Wilcannia",
             "Williamtown",
             "Wilsons Promontory",
             "Woomera",
             "Yamba"
)


ui <- page_sidebar(
  title = "Forecast Results",
  sidebar = sidebar("Options",
                    selectInput(
                      "name",
                      "Select station to display",
                      choices = list(
                        "Adelaide" = 1,
                        "Albany" = 2,
                        "Alice Springs" = 3,
                        "Amberley" = 4,
                        "Barcaldine" = 5,
                        "Bathurst" = 6,
                        "Birdsville" = 7,
                        "Bourke" = 8,
                        "Bridgetown" = 9,
                        "Brisbane Airport" = 10,
                        "Broome" = 11,
                        "Bundaberg" = 12,
                        "Burketown" = 13,
                        "Butlers Gorge" = 14,
                        "Cabramurra" = 15,
                        "Cairns" = 16,
                        "Canberra" = 17,
                        "Cape Borda" = 18,
                        "Cape Bruny" = 19,
                        "Cape Leeuwin" = 20,
                        "Cape Moreton" = 21,
                        "Cape Otway" = 22,
                        "Carnarvon" = 23,
                        "Ceduna" = 24,
                        "Charleville" = 25,
                        "Charters Towers" = 26,
                        "Cobar" = 27,
                        "Coffs Harbour" = 28,
                        "Cunderdin" = 29,
                        "Dalwallinu" = 30,
                        "Darwin" = 31,
                        "Deniliquin" = 32,
                        "Dubbo" = 33,
                        "Esperance" = 34,
                        "Eucla" = 35,
                        "Forrest" = 36,
                        "Gabo Island" = 37,
                        "Gayndah" = 38,
                        "Georgetown" = 39,
                        "Geraldton" = 40,
                        "Giles" = 41,
                        "Grove" = 42,
                        "Halls Creek" = 43,
                        "Hobart" = 44,
                        "Horn Island" = 45,
                        "Inverell" = 46,
                        "Kalgoorlie-Boulder" = 47,
                        "Kalumburu" = 48,
                        "Karijini North (Wittenoom)" = 49,
                        "Katanning" = 50,
                        "Kerang" = 51,
                        "Kyancutta" = 52,
                        "Larapuna (Eddystone Point)" = 53,
                        "Launceston" = 54,
                        "Laverton" = 55,
                        "Longreach" = 56,
                        "Low Head" = 57,
                        "Mackay" = 58,
                        "Marble Bar" = 59,
                        "Marree" = 60,
                        "Meekatharra" = 61,
                        "Melbourne" = 62,
                        "Merredin" = 63,
                        "Mildura" = 64,
                        "Miles" = 65,
                        "Morawa" = 66,
                        "Moree" = 67,
                        "Moruya Heads" = 68,
                        "Mount Gambier" = 69,
                        "Nhill" = 70,
                        "Normanton" = 71,
                        "Nowra" = 72,
                        "Nuriootpa" = 73,
                        "Orbost" = 74,
                        "Perth Airport" = 75,
                        "Point Perpendicular" = 76,
                        "Port Hedland" = 77,
                        "Port Macquarie" = 78,
                        "Rabbit Flat" = 79,
                        "Richmond (NSW)" = 80,
                        "Richmond (QLD)" = 81,
                        "Robe" = 82,
                        "Rockhampton" = 83,
                        "Rutherglen" = 84,
                        "Sale" = 85,
                        "Scone" = 86,
                        "Snowtown" = 87,
                        "St George" = 88,
                        "Sydney" = 89,
                        "Tarcoola" = 90,
                        "Tennant Creek" = 91,
                        "Thargomindah" = 92,
                        "Tibooburra" = 93,
                        "Townsville" = 94,
                        "Victoria River Downs" = 95,
                        "Wagga Wagga" = 96,
                        "Walgett" = 97,
                        "Wandering" = 98,
                        "Weipa" = 99,
                        "West Wyalong" = 100,
                        "Wilcannia" = 101,
                        "Williamtown" = 102,
                        "Wilsons Promontory" = 103,
                        "Woomera" = 104,
                        "Yamba" = 105
                      ),
                      selected = 1
                    ),
                    textOutput("selected_name"),
                    tableOutput('table')
  ),
  layout_columns(
    card(
      plotOutput("plot_shown"),
      plotOutput("rainbow")
    ),
    card(
      plotOutput("map")
    )
  )
)

# Define server logic ----
server <- function(input, output, session) {
  
  output$selected_name <- renderText({
    "Selected station forecast curve compared to observed data points in 2024"
  })
  
  output$table <- renderTable({
    data.frame(Parameter = c("Scale", "Shape"), Value = plots[[as.numeric(input$name)]][[4]])
  })
  
  output$plot_shown <- renderPlot({
    forecast_2024 <- plots[[as.numeric(input$name)]][[1]]
    data_2024 <- plots[[as.numeric(input$name)]][[2]]
    
    ggplot()+
      geom_line(forecast_2024, mapping = aes(x = Day, y = max_temp))+
      geom_point(data_2024, mapping = aes(x = Day, y = max_temp))+
      ggtitle("Forecasted Location Parameter and Observed Temperatures")+
      xlab("Day") + 
      ylab(expression(paste("Temperature", " (in ", degree,"C)")))
  })
  
  output$rainbow <- renderPlot({
    #plot curve of maximum temperatures throughout years
    clean_training <- plots[[as.numeric(input$name)]][[3]]
    
    ggplot(clean_training, aes(x = Day, y = max_temp, group = Year, col = Year))+
      stat_smooth(aes(y = max_temp, x = Day), method = lm, formula = y ~ poly(x, 5), se = FALSE)+
      ggtitle("Polynomial Smoothed Historical Daily Maximum Temperatures")+
      xlab("Day")+
      ylab(expression(paste("Temperature", " (in ", degree,"C)")))+
      scale_color_gradientn(colours = rainbow(4))
  })
  
  output$map <- renderPlot({
    station_list <- read.csv("Station list.csv")%>%
      filter(Station_name == list[as.numeric(input$name)])%>%
      select(Station_name, Longitude_E, Latitude_S)
    
    mapAus <- borders("world", "Australia", colour="gray50", fill="white")
    
    ggplot()+
      mapAus+
      geom_point(station_list, mapping = aes(x = Longitude_E, y = Latitude_S), colour = "red")+
      xlim(100, 160)+
      ylim(-50, -5)+
      ggtitle("Weather Station Location")+
      xlab("Longitude")+
      ylab("Latitude")+
      geom_text(show.legend = FALSE)
  })
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
