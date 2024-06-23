# Load packages
library(shiny)
library(bslib)
library(rsconnect)

library(tidyverse)

plots <- readRDS("plot_data.RDS")

ui <- page_sidebar(
  title = "Forecast Results",
  sidebar = sidebar("Options",
                    selectInput(
                      "name",
                      "Select plot to display",
                      choices = list(
                        "Adelaide" = 1,
                        "Albany" = 2,
                        "AliceSprings" = 3,
                        "Amberley" = 4,
                        "Barcaldine" = 5,
                        "Bathurst" = 6,
                        "Birdsville" = 7,
                        "Bourke" = 8,
                        "Bridgetown" = 9,
                        "BrisbaneAirport" = 10,
                        "Broome" = 11,
                        "Bundaberg" = 12,
                        "Burketown" = 13,
                        "ButlersGorge" = 14,
                        "Cabramurra" = 15,
                        "Cairns" = 16,
                        "Canberra" = 17,
                        "CapeBorda" = 18,
                        "CapeBruny" = 19,
                        "CapeLeeuwin" = 20,
                        "CapeMoreton" = 21,
                        "CapeOtway" = 22,
                        "Carnarvon" = 23,
                        "Ceduna" = 24,
                        "Charleville" = 25,
                        "ChartersTowers" = 26,
                        "Cobar" = 27,
                        "CoffsHarbour" = 28,
                        "Cunderdin" = 29,
                        "Dalwallinu" = 30,
                        "Darwin" = 31,
                        "Deniliquin" = 32,
                        "Dubbo" = 33,
                        "Esperance" = 34,
                        "Eucla" = 35,
                        "Forrest" = 36,
                        "GaboIsland" = 37,
                        "Gayndah" = 38,
                        "Georgetown" = 39,
                        "Geraldton" = 40,
                        "Giles" = 41,
                        "Grove" = 42,
                        "HallsCreek" = 43,
                        "Hobart" = 44,
                        "HornIsland" = 45,
                        "Inverell" = 46,
                        "KalgoorlieBoulder" = 47,
                        "Kalumburu" = 48,
                        "Karijini" = 49,
                        "Katanning" = 50,
                        "Kerang" = 51,
                        "Kyancutta" = 52,
                        "Larapuna" = 53,
                        "Launceston" = 54,
                        "Laverton" = 55,
                        "Longreach" = 56,
                        "LowHead" = 57,
                        "Mackay" = 58,
                        "MarbleBar" = 59,
                        "Marree" = 60,
                        "Meekatharra" = 61,
                        "Melbourne" = 62,
                        "Merredin" = 63,
                        "Mildura" = 64,
                        "Miles" = 65,
                        "Morawa" = 66,
                        "Moree" = 67,
                        "MoruyaHeads" = 68,
                        "MountGambier" = 69,
                        "Nhill" = 70,
                        "Normanton" = 71,
                        "Nowra" = 72,
                        "Nuriootpa" = 73,
                        "Orbost" = 74,
                        "PerthAirport" = 75,
                        "PointPerpendicular" = 76,
                        "PortHedland" = 77,
                        "PortMacquarie" = 78,
                        "RabbitFlat" = 79,
                        "RichmondNSW" = 80,
                        "RichmondQLD" = 81,
                        "Robe" = 82,
                        "Rockhampton" = 83,
                        "Rutherglen" = 84,
                        "Sale" = 85,
                        "Scone" = 86,
                        "Snowtown" = 87,
                        "StGeorge" = 88,
                        "Sydney" = 89,
                        "Tarcoola" = 90,
                        "TennantCreek" = 91,
                        "Thargomindah" = 92,
                        "Tibooburra" = 93,
                        "Townsville" = 94,
                        "VictoriaRiverDowns" = 95,
                        "WaggaWagga" = 96,
                        "Walgett" = 97,
                        "Wandering" = 98,
                        "Weipa" = 99,
                        "WestWyalong" = 100,
                        "Wilcannia" = 101,
                        "Williamtown" = 102,
                        "WilsonsPromontory" = 103,
                        "Woomera" = 104,
                        "Yamba" = 105
                      ),
                      selected = 1
                    ),
                    textOutput("selected_name"),
  ),
  card(
    plotOutput("plot_shown")
  )
)

# Define server logic ----
server <- function(input, output, session) {
  
  output$selected_name <- renderText({
    "Selected station forecast curve compared to observed data points in 2024"
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
  
}

# Run the app ----
shinyApp(ui = ui, server = server)
