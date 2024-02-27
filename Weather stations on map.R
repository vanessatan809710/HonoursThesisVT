
install.packages("ggmap")
library(ggmap)


list <- read.csv("Station list.csv")
mapAus <- borders("world", "Australia", colour="gray50", fill="white")

pdf()
stations_map <- ggplot()+
  mapAus+
  geom_point(list, mapping = aes(x = Longitude_E, y = Latitude_S))+
  xlim(100, 160)+
  ylim(-50, -5)+
  ggtitle("Weather Station Locations")+
  xlab("Longitude")+
  ylab("Latitude")

## ---- mapStations
stations_map


