#plot gev families as example for methodology

x <- seq(-10, 10, 0.1)
pdf_Gumbel <- dgev(seq(-10, 10, 0.1), 0, 1, 0)
pdf_Frechet <- dgev(seq(-10, 10, 0.1), 0, 1, 1)
pdf_Weibull <- dgev(seq(-10, 10, 0.1), 0, 1, -1)

plot_data <- data.frame("x" = x, "Gumbel" = pdf_Gumbel, "Frechet" = pdf_Frechet,
                        "Weibull" = pdf_Weibull)
ggplot(plot_data)+
  geom_line(mapping = aes(x = x, y = pdf_Gumbel, colour = "Gumbel (shape = 0)"))+
  geom_line(mapping = aes(x = x, y = pdf_Frechet, colour = "Frechet (shape = 1)"))+
  geom_line(mapping = aes(x = x, y = pdf_Weibull, colour = "Weibull (shape = -1)"))+
  scale_color_manual(name = "Key", values = c("Gumbel (shape = 0)" = "blue", 
                                              "Frechet (shape = 1)" = "green", 
                                              "Weibull (shape = -1)" = "red"))+
  ggtitle("GEV Families", subtitle = "Location 0, Scale 1")+
  ylab("Probability Density")
