# install.packages(c("devtools"))
if(!"kaggler" %in% installed.packages()){
  devtools::install_github("ldurazo/kaggler")
}

library(readr)
library(kaggler)

kgl_auth(creds_file = '/Users/ondrejklubal/Documents/Osobní/R/kaggle.json')

response <- kgl_datasets_download_all(owner_dataset = "mavezdabas/nychourlytemperature")

download.file(response[["url"]], "/Users/ondrejklubal/Documents/Osobní/R/temp.zip", mode="wb")

unzip("/Users/ondrejklubal/Documents/Osobní/R/temp.zip",
      exdir = "/Users/ondrejklubal/Documents/Osobní/R/Notebooky/Data a časy/", overwrite = TRUE)

nyc_hourly_weather <- read_csv("/Users/ondrejklubal/Documents/Osobní/R/Notebooky/Data a časy/New_York_Hourly.csv")



