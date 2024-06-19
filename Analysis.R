#Function to perform analysis on every dataset

analysis <- function(dataset) {
  #Initial cleaning- imput NA values
  n_year <- 2023 - 1970 + 1
  n_day <- 365
  
  clean_dataset <- dataset%>%
    dplyr::select(Year, Day, max_temp)%>%
    fill_na
  
  #plot temperatures by year- check no gaps in data
  temp_by_year <- ggplot(clean_dataset, aes(x = Year, y = max_temp))+
    geom_point()+
    ggtitle("Maximum Temperatures")+
    xlab("Day")+ 
    ylab(expression(paste("Temperature", " (in ", degree,"C)")))
  #plot curve of maximum temperatures throughout years
  rainbow_plot_temps <- ggplot(clean_dataset, aes(x = Day, y = max_temp, group = Year, col = Year))+
    stat_smooth(aes(y = max_temp, x = Day), method = lm, formula = y ~ poly(x, 5), se = FALSE)+
    ggtitle("Polynomial Smoothed Daily Maximum Temperature")+
    xlab("Day")+ 
    ylab(expression(paste("Temperature", " (in ", degree,"C)")))+
    scale_color_gradientn(colours = rainbow(4))
  
  #fit model and forecast for 1 year
  parameters <- fit_evgam(clean_dataset)
  forecast <- forecast_evgam(clean_dataset)
  
  Forecast_2024 <- data.frame(Year = rep(2024, 365), Day = 1:n_day, max_temp = forecast$location$estimate)
  Forecast_and_Data <- rbind(clean_dataset, Forecast_2024)
  
  #plots of results
  forecast_plot_2024 <- ggplot(Forecast_2024, aes(x = Day, y = max_temp))+
    geom_line()+
    ggtitle("Forecasted Location Parameter by Day")+
    xlab("Day") + 
    ylab(expression(paste("Temperature", " (in ", degree,"C)")))
  
  forecast_rainbow_plot <- ggplot(Forecast_and_Data, aes(x = Day, y = max_temp, group = Year, col = Year))+
    stat_smooth(aes(y = max_temp, x = Day), method = lm, formula = y ~ poly(x, 5), se = FALSE)+
    ggtitle("Polynomial Smoothed Daily Maximum Temperature Forecast")+
    xlab("Day")+ 
    ylab(expression(paste("Temperature", " (in ", degree,"C)")))+
    scale_color_gradientn(colours = rainbow(4))
  
  output <- list(temp_by_year, rainbow_plot_temps, forecast_plot_2024, forecast_rainbow_plot)
  return(output)
}

#perform analysis


Adelaide_plots <- analysis(Adelaide)
Albany_plots <- analysis(Albany)
AliceSprings_plots <- analysis(AliceSprings)
Amberley_plots <- analysis(Amberley)
Barcaldine_plots <- analysis(Barcaldine)
Bathurst_plots <- analysis(Bathurst)
Birdsville_plots <- analysis(Birdsville)
#Boulia_plots <- analysis(Boulia) #gap in data 1970 and 2023
Bourke_plots <- analysis(Bourke)
Bridgetown_plots <- analysis(Bridgetown)
BrisbaneAirport_plots <- analysis(BrisbaneAirport)
Broome_plots <- analysis(Broome)
Bundaberg_plots <- analysis(Bundaberg)
Burketown_plots <- analysis(Burketown)
ButlersGorge_plots <- analysis(ButlersGorge)
Cabramurra_plots <- analysis(Cabramurra)
Cairns_plots <- analysis(Cairns)
#Camooweal_plots <- analysis(Camooweal) #(gap in data around 1997-1998)
Canberra_plots <- analysis(Canberra)
CapeBorda_plots <- analysis(CapeBorda)
CapeBruny_plots <- analysis(CapeBruny)
CapeLeeuwin_plots <- analysis(CapeLeeuwin)
CapeMoreton_plots <- analysis(CapeMoreton)
CapeOtway_plots <- analysis(CapeOtway)
Carnarvon_plots <- analysis(Carnarvon)
Ceduna_plots <- analysis(Ceduna)
Charleville_plots <- analysis(Charleville)
ChartersTowers_plots <- analysis(ChartersTowers)
Cobar_plots <- analysis(Cobar)
CoffsHarbour_plots <- analysis(CoffsHarbour)
Cunderdin_plots <- analysis(Cunderdin)
Dalwallinu_plots <- analysis(Dalwallinu)
Darwin_plots <- analysis(Darwin)
Deniliquin_plots <- analysis(Deniliquin)
Dubbo_plots <- analysis(Dubbo)
Esperance_plots <- analysis(Esperance)
Eucla_plots <- analysis(Eucla)
Forrest_plots <- analysis(Forrest)
GaboIsland_plots <- analysis(GaboIsland)
Gayndah_plots <- analysis(Gayndah)
Georgetown_plots <- analysis(Georgetown)
Geraldton_plots <- analysis(Geraldton)
Giles_plots <- analysis(Giles)
Grove_plots <- analysis(Grove)
#Gunnedah_plots <- analysis(Gunnedah) #(gap in data around 2019-2023)
HallsCreek_plots <- analysis(HallsCreek)
Hobart_plots <- analysis(Hobart)
HornIsland_plots <- analysis(HornIsland)
Inverell_plots <- analysis(Inverell)
KalgoorlieBoulder_plots <- analysis(KalgoorlieBoulder)
Kalumburu_plots <- analysis(Kalumburu)
Karijini_plots <- analysis(Karijini)
Katanning_plots <- analysis(Katanning)
Kerang_plots <- analysis(Kerang)
Kyancutta_plots <- analysis(Kyancutta)
Larapuna_plots <- analysis(Larapuna)
Launceston_plots <- analysis(Launceston)
Laverton_plots <- analysis(Laverton)
#Learmonth_plots <- analysis(Learmonth) #(no data before 1975)
Longreach_plots <- analysis(Longreach)
LowHead_plots <- analysis(LowHead)
Mackay_plots <- analysis(Mackay)
MarbleBar_plots <- analysis(MarbleBar)
Marree_plots <- analysis(Marree)
Meekatharra_plots <- analysis(Meekatharra)
Melbourne_plots <- analysis(Melbourne)
Merredin_plots <- analysis(Merredin)
Mildura_plots <- analysis(Mildura)
Miles_plots <- analysis(Miles)
Morawa_plots <- analysis(Morawa)
Moree_plots <- analysis(Moree)
MoruyaHeads_plots <- analysis(MoruyaHeads)
MountGambier_plots <- analysis(MountGambier)
Nhill_plots <- analysis(Nhill)
Normanton_plots <- analysis(Normanton)
Nowra_plots <- analysis(Nowra)
Nuriootpa_plots <- analysis(Nuriootpa)
#Oodnadatta_plots <- analysis(Oodnadatta) #large gap early 1990s
Orbost_plots <- analysis(Orbost)
#Palmerville_plots <- analysis(Palmerville) #large gap around 2000
PerthAirport_plots <- analysis(PerthAirport)
PointPerpendicular_plots <- analysis(PointPerpendicular)
PortHedland_plots <- analysis(PortHedland)
#PortLincoln_plots <- analysis(PortLincoln) #large gap 
PortMacquarie_plots <- analysis(PortMacquarie)
RabbitFlat_plots <- analysis(RabbitFlat)
RichmondNSW_plots <- analysis(RichmondNSW)
RichmondQLD_plots <- analysis(RichmondQLD)
Robe_plots <- analysis(Robe)
Rockhampton_plots <- analysis(Rockhampton)
Rutherglen_plots <- analysis(Rutherglen)
Sale_plots <- analysis(Sale)
Scone_plots <- analysis(Scone)
Snowtown_plots <- analysis(Snowtown)
StGeorge_plots <- analysis(StGeorge)
Sydney_plots <- analysis(Sydney)
Tarcoola_plots <- analysis(Tarcoola)
TennantCreek_plots <- analysis(TennantCreek)
Thargomindah_plots <- analysis(Thargomindah)
Tibooburra_plots <- analysis(Tibooburra)
Townsville_plots <- analysis(Townsville)
VictoriaRiverDowns_plots <- analysis(VictoriaRiverDowns)
WaggaWagga_plots <- analysis(WaggaWagga)
Walgett_plots <- analysis(Walgett)
Wandering_plots <- analysis(Wandering)
Weipa_plots <- analysis(Weipa)
WestWyalong_plots <- analysis(WestWyalong)
Wilcannia_plots <- analysis(Wilcannia)
Williamtown_plots <- analysis(Williamtown)
WilsonsPromontory_plots <- analysis(WilsonsPromontory)
Woomera_plots <- analysis(Woomera)
Yamba_plots <- analysis(Yamba)

