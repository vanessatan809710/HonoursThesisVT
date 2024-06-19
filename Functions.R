#to combine max temps from different codes for same station
join_stations <- function(Data1, Data2) {
  if(length(Data1$Day) <= length(Data2$Day)){
    Data <- Data2
    for (i in 1:length(Data2$Day)) {
      if(is.na(Data$Maximum.temperature..Degree.C.[i]) && length(Data1$Maximum.temperature..Degree.C.[which(Data1$Year == Data$Year[i] & Data1$Month == Data$Month[i] & Data1$Day == Data$Day[i])]) > 0 
         && !is.na(Data1$Maximum.temperature..Degree.C.[which(Data1$Year == Data$Year[i] & Data1$Month == Data$Month[i] & Data1$Day == Data$Day[i])])){
        Data$Maximum.temperature..Degree.C.[i] <- Data1$Maximum.temperature..Degree.C.[which(Data1$Year == Data$Year[i] & Data1$Month == Data$Month[i] & Data1$Day == Data$Day[i])]
        Data$Bureau.of.Meteorology.station.number[i] <- Data1$Bureau.of.Meteorology.station.number[which(Data1$Year == Data$Year[i] & Data1$Month == Data$Month[i] & Data1$Day == Data$Day[i])]
      } else {
      }
    }
    Data <- rbind(Data, Data1)%>%
      distinct_at(vars(Year, Month, Day), .keep_all = TRUE)
  } else {
    Data <- Data1
    for (i in 1:length(Data1$Day)) {
      if(is.na(Data$Maximum.temperature..Degree.C.[i]) && length(Data2$Maximum.temperature..Degree.C.[which(Data2$Year == Data$Year[i] & Data2$Month == Data$Month[i] & Data2$Day == Data$Day[i])]) > 0 
         && !is.na(Data2$Maximum.temperature..Degree.C.[which(Data2$Year == Data$Year[i] & Data2$Month == Data$Month[i] & Data2$Day == Data$Day[i])])){
        Data$Maximum.temperature..Degree.C.[i] <- Data2$Maximum.temperature..Degree.C.[which(Data2$Year == Data$Year[i] & Data2$Month == Data$Month[i] & Data2$Day == Data$Day[i])]
        Data$Bureau.of.Meteorology.station.number[i] <- Data2$Bureau.of.Meteorology.station.number[which(Data2$Year == Data$Year[i] & Data2$Month == Data$Month[i] & Data2$Day == Data$Day[i])]
      } else {
      }
    }
    Data <- rbind(Data, Data2)%>%
      distinct_at(vars(Year, Month, Day), .keep_all = TRUE)
  }
  return(Data)
}


#to change from day of month to day of year
rename_days <- function(data) {
  data%>%
    group_by(Year)%>%
    mutate(Day = row_number(Year))
}

#mean imputation of na
fill_na <- function(Data) {
  Data2 <- Data
  Data$max_temp[is.na(Data$max_temp)] <- mean(Data2$max_temp, na.rm = TRUE)
  Data
}


#fit gev for each year, with location varying by day
fit_evgam <- function(Data) {
  n_year <- 2023 - 1970 + 1
  n_day <- 365
  location <- matrix(0, nrow = n_year, ncol = n_day)
  logscale <- matrix(0, nrow = n_year, ncol = 1)
  shape <- matrix(0, nrow = n_year, ncol = 1)
  location_para <- matrix(0, nrow = n_year, ncol = 10)
  for(t in 1970:2023) {
    Dat <- Data%>%
      filter(Year == t)
    cs <- list(max_temp ~ s(Day, k = 10, bs = "cr"), ~1, ~1)
    fit <- evgam(cs, Dat, family = "gev")
    if(length(fit$location$fitted) != 365){
      return(t)
    }
    location[t - 1969, ] <- fit$location$fitted
    location_para[t - 1969, ] <- fit$location$coefficients
    logscale[t - 1969, ] <- fit$logscale$fitted[1]
    shape[t - 1969, ] <- fit$shape$fitted[1]
  }
  parameters <- list(location = list(estimate = location, parameter = location_para, basis = fit$location$X),
                    logscale = logscale, shape = shape)
  return(parameters)
}


#forecast the gev for one year in the future
forecast_evgam <- function(Data) {
  parameters <- fit_evgam(Data)
  
  n <- dim(parameters$location$parameter)[2]
  location_parameters_predicted <- matrix(0, nrow = n)
  for(i in 1:n){
    location_parameters_predicted[i] <- forecast(auto.arima(parameters$location$parameter[,i], ic='aicc'), h=1)$mean[1]
  }
  
  location_predicted <- as.vector(parameters$location$basis%*%location_parameters_predicted)
  scale_predicted <- exp(forecast(auto.arima(parameters$logscale, ic = "aicc"), h=1)$mean[1])
  shape_predicted <- forecast(auto.arima(parameters$shape, ic = "aicc"), h=1)$mean[1]
  
  parameters_predicted <- list(location = list(estimate = location_predicted, parameters = location_parameters_predicted),
                              scale = scale_predicted, shape = shape_predicted)
  
  return(parameters_predicted)
}



