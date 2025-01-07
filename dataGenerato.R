#Vector with a set of 100 species names, randomly selected from a vector of 5 species names of your choosing

SpeciesName<-c("Turdus migratorius", "Pipilo erythrophthalmus", "Cyanocitta cristata", "Cyanocitta stelleri", "Zenaida macroura")

Organism<-sample(SpeciesName, size=100 , replace=TRUE)

#A vector of 100 values for Limb_width, randomly selected

Limb_width<-runif(n=100, min=1, max=5)

#A vector of 100 values for Limb_length

Limb_length<-runif(n=100, min=5, max=15)

#A vector of 100 values for observer

ObserverName<-c("Rachel D", "Chance G", "Micaiah E")

Observer<-sample(ObserverName, size=100, replace=TRUE)

#Creating the data frame

df<-data.frame(Organism, Limb_width, Limb_length, Observer)

#Exporting the data frame

library(readr)

write_csv(df, "~/Downloads/measurements.csv")
