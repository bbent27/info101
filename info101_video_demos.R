#video 2 demo

# How to create a data frame manually
noaa_survey <- data.frame(latitude = c(45, 45, 30, 30),
                          depth_m = c(5, 100, 5, 100),
                          temp_c = c(10.6, 7.1, 21.8, 18.3))

#print data frame directly to the console
noaa_survey

# View() function to use RStudio's viewer
# (capital V!!)
View(noaa_survey)
# ^ pulls it up like a spreadsheet in another window!

# Alternatively, we can import using read.csv()
write.csv(noaa_survey, "noaa_survey.csv", row.names = FALSE)

# Check teh contents of your directory
dir()

#read a data frame from a CSV file
noaa_survey2 <- read.csv("noaa_survey.csv")
noaa_survey2

# ^both methods give you the same table/result!


# how to see and modify column names
colnames(noaa_survey2)
colnames(noaa_survey2) <- c("Latitude", "DepthM", "TempC")
noaa_survey2
#^that changed the headers! cool:)
