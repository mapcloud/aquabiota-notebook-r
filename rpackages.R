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

# Useful packages
install.packages("evaluate", repos='http://cran.us.r-project.org')
install.packages("crayon", repos='http://cran.us.r-project.org')
install.packages("pbdZMQ", repos='http://cran.us.r-project.org')
install.packages("uuid", repos='http://cran.us.r-project.org')
install.packages("digest", repos='http://cran.us.r-project.org')
#
install.packages("plyr", repos='http://cran.us.r-project.org')
install.packages("reshape2", repos='http://cran.us.r-project.org')
install.packages("data.table", repos='http://cran.us.r-project.org')
install.packages("Hmisc", repos='http://cran.us.r-project.org')
install.packages("reshape", repos='http://cran.us.r-project.org')
install.packages("ggthemes", repos='http://cran.us.r-project.org')

install.packages("car", repos='http://cran.us.r-project.org')
install.packages("psych", repos='http://cran.us.r-project.org')
install.packages("mgcv", repos='http://cran.us.r-project.org')
install.packages("randomForest", repos='http://cran.us.r-project.org')
install.packages("ROCR", repos='http://cran.us.r-project.org')
install.packages("raster", repos='http://cran.us.r-project.org')
install.packages("ncf", repos='http://cran.us.r-project.org')
install.packages("SDMTools", repos='http://cran.us.r-project.org')

# rgdal
# install.packages("rgdal", repos='http://cran.us.r-project.org')
