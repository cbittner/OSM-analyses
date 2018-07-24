#downloading all archive files from an OSM mailing list 
#(here: talk (https://lists.openstreetmap.org/pipermail/talk/))


#creating arrays for the years and the months

  months <- c('January', 'February', 'March', 'April', 'May', 'June',
              'July', 'August', 'September', 'October', 'November', 'December')
  
  years <- c(2004:2018)

#assembling the urls (e.g. https://lists.openstreetmap.org/pipermail/talk/2005-July.txt.gz)

  link <- 'https://lists.openstreetmap.org/pipermail/talk/'
  ext <- '.txt.gz'

# a path for downloading the files
  path <- 'C:/Users/chris/Documents/dl/'

#run the loop fro all files from from 2005 (2004 starts in September)
  for (y in 2:length(years)){
    for (m in 1:length(months)){
      address <- paste(link, years[y], '-', months[m], ext, sep='')
      filename <-paste( years[y], '-', months[m], ext, sep='')
      download.file(address, paste(path, filename, sep=""))
    }
  }

# collect the remaining files for 2004
    for (m in 9:length(months)){
      address <- paste(link, years[y], '-', months[m], ext, sep='')
      filename <-paste( years[y], '-', months[m], ext, sep='')
      download.file(address, paste(path, filename, sep=""))
    }
