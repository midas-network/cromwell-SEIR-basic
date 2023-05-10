#!/bin/bash

Rscript -e "install.packages('EpiModel', repos='http://cran.us.r-project.org')"
Rscript -e "install.packages('knitr',  repos='http://cran.us.r-project.org', dependencies = TRUE)"