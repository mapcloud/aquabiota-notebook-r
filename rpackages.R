#!/usr/bin/Rscript

# to install the lib in custom lib path
# https://stackoverflow.com/questions/24646065/how-to-specify-lib-directory-when-installing-development-version-r-packages-from
# use:
# with_libpaths(new = "/usr/lib/R/site-library/", install_github('rCharts', 'ramnathv'))

install.packages("ncf", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
install.packages("SDMTools", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")

# personal recommendation alternative to sdm,
install.packages("dismo", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")

# must to have for modelling
install.packages("biomod2", repos='http://cran.us.r-project.org', lib = "/home/aqua/R-site-library/")
