#!/usr/bin/Rscript

install.packages("devtools", repos="http://cran.rstudio.com/")
# Need RCurl for install_github
install.packages('RCurl', repos="http://cran.rstudio.com/")
library(devtools)

install_github('armstrtw/rzmq')
install_github('IRkernel/repr')
install_github('IRkernel/IRdisplay')
install_github('IRkernel/IRkernel')

IRkernel::installspec()

# [17.07.3]
# install orientdb R driver
devtools::install_github("retrography/OrientR")

# to install the lib in custom lib path
# https://stackoverflow.com/questions/24646065/how-to-specify-lib-directory-when-installing-development-version-r-packages-from
# use:
# with_libpaths(new = "/usr/lib/R/site-library/", install_github('rCharts', 'ramnathv'))

# Useful packages
install.packages("evaluate", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("crayon", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("pbdZMQ", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("uuid", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("digest", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
#
install.packages("dplyr", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("reshape2", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("data.table", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("Hmisc", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("reshape", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("ggthemes", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")

install.packages("car", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("psych", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("mgcv", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("randomForest", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("ROCR", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("raster", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("ncf", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("SDMTools", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")

# rgdal  # https://beanumber.github.io/sds192/rgdal-install.html
install.packages("rgdal", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/", type = "source")

# personal recommendation alternative to sdm,
install.packages("dismo", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")

# must to have for modelling
install.packages("biomod2", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")

# [17.07.3]  # http://www.computerworld.com/article/2921176/business-intelligence/great-r-packages-for-data-import-wrangling-visualization.html
install.packages("remotes", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("readxl", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("googlesheets", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("RMySQL", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("readr", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("rio", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("sqldf", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("jsonlite", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("XML", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("rvest", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("purrr", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("reshape2", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("tidyr", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("magrittr", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("validate", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("data.table", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("stringr", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("lubridate", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("zoo", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("editR", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("knitr", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("listviewer", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("DT", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("ggiraph", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("googleVis", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("RColorBrewer", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("leaflet", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("tmap", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("tmaptools", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("roxygen2", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("shiny", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("flexdashboard", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("openxlsx", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("gmodels", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("janitor", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("feather", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
# http://rspatial.org/sphere/rst/1-introduction.html
install.packages("geosphere", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")

# DEPRECIATED
# http://onlinelibrary.wiley.com/doi/10.1111/ecog.01881/full
# Package ‘sdm’ was removed from the CRAN repository. Archived on 2017-07-02 as check problems were not corrected despite reminders.
# install.packages("sdm", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
