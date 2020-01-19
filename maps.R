library(sf)
library(ggplot2)
library(tmap)
library(tmaptools)
library(dplyr)

mydata <- readr::read_csv("consolidado1.csv")
mymap <- st_read("states.shp")
map_and_data <- inner_join(mymap, mydata, by="STATE_NAME")
  str(map_and_data)

killedindex <- "killed_index"
injuredindex <- "injured_index"
totalindex <- "total_index"

killedmap <- c(0, 0, 0.1, 0.5, 1, 1.5, 2, 2.5)
injuredmap <- c(0, 0, 0.1, 0.5, 1, 1.5, 2, 2.5, 10)
totalmap <- c(0, 0, 0.1, 0.5, 1, 1.5, 2, 5, 10)

tm_shape(map_and_data) +
  tm_layout(title = "Killed Index in Mass Shootings in the US (1922-2019)",
            inner.margins = c(0.05, 0.05, 0.10, 0.05),
            title.size = 1.1,
            title.position = c("center", "top"))+
  tm_legend(legend.position = c("LEFT", "BOTTOM")) +
  tm_polygons(killedindex, title="Killed Index (per 100.000 hab.)", 
              breaks = killedmap, id="killed_index", 
              palette="Reds") 

tm_shape(map_and_data) +
  tm_layout(title = "Injured Index in Mass Shootings in the US (1922-2019)",
            inner.margins = c(0.05, 0.05, 0.10, 0.05),
            title.size = 1.1,
            title.position = c("center", "top"))+
  tm_legend(legend.position = c("LEFT", "BOTTOM")) +
  tm_polygons(injuredindex, title="Injured Index (per 100.000 hab.)", 
              breaks = injuredmap, id="injured_index", 
              palette="Reds") 

tm_shape(map_and_data) +
  tm_layout(title = "Total Victims Index in Mass Shootings in the US (1922-2019)",
            inner.margins = c(0.05, 0.05, 0.10, 0.05),
            title.size = 1.1,
            title.position = c("center", "top"))+
  tm_legend(legend.position = c("LEFT", "BOTTOM")) +
  tm_polygons(totalindex, title="Total Index (per 100.000 hab.)", 
              breaks = totalmap, id="total_index", 
              palette="Reds") 
  
  
