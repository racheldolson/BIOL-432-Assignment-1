#loading the dataset

data<-read.csv("~/Downloads/measurements.csv")

#Creating the pipe

library(dplyr)

Data<-data %>% 
  mutate(
    Volume = 1/3*pi*(data$Limb_width/2)^2*data$Limb_length
  )

#The mutate function adds the volume column to the dataset
#The volume = is followed by the formula to find the volume of a cylinder shape, the limb of the bird

#Printing the data set to ensure it is correct

print(Data)

#Exporting the updated dataset with the volume column

library(readr)

write_csv(Data, "~/Downloads/measurements.csv")
