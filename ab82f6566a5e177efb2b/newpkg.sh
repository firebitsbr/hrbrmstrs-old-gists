#!/bin/bash
# AUTHOR: Bob Rudis <bob@rudis.net> (@hrbrmstr)
# LICENSE: MIT + file zLICENSE

TODAY=`date +%Y-%m-%d`
TODAY_MD=`date +%B\ %d,\ %Y`
YEAR=`date +%Y`

PACKAGENAME=$1

############################
##
### CHANGE ME!!!
##
#
# where your dev base is
DEV_HOME=~/Development
#
# author name
AUTNAME="Bob Rudis"
# travis/github/etc handle
HANDLE=hrbrmstr
#
############################

# start pkg setup 
# note that this adds a .Rproj, R dir and DESCRIPTION + other stuff
Rscript --no-save -e "devtools::create('$DEV_HOME/$PACKAGENAME', rstudio=TRUE)"

cd $DEV_HOME/$PACKAGENAME

cat <<EOF >LICENSE
YEAR: $YEAR
COPYRIGHT HOLDER: $AUTNAME
EOF

# setup git
Rscript --no-save -e "devtools::use_git()"
# add README.Rmd
Rscript --no-save -e "devtools::use_readme_rmd('$DEV_HOME/$PACKAGENAME')"
# sets up test harness
Rscript --no-save -e "devtools::use_testthat()"
# CI
Rscript --no-save -e "devtools::use_travis()"
# setup roxygen
Rscript --no-save -e "devtools::use_package_doc()"
# do this last to get reminder msg 
Rscript --no-save -e "devtools::use_code_of_conduct()"

# add config opts to .Rproj

cat <<EOF >>$PACKAGENAME.Rproj
Version: 1.0

UseSpacesForTab: Yes
NumSpacesForTab: 2

RnwWeave: Sweave
LaTeX: pdfLaTeX

PackageBuildArgs: --resave-data
PackageCheckArgs: --as-cran
EOF

# add base package R file

cat <<EOF >R/$PACKAGENAME-package.R
#' A package to ...
#' @name $PACKAGENAME
#' @docType package
#' @author $AUTNAME (@@$HANDLE)
NULL
EOF

# add test scaffold

cat <<EOF >tests/testthat/test-$PACKAGENAME.R
context("basic functionality")
test_that("we can do something", {

  #expect_that(some_function(), is_a("data.frame"))

})
EOF

# enhance README.Rmd

cat <<EOF >>README.Rmd

[![Build Status](https://travis-ci.org/$HANDLE/$PACKAGENAME.svg)](https://travis-ci.org/$HANDLE/$PACKAGENAME) 
![Project Status: Concept - Minimal or no implementation has been done yet.](http://www.repostatus.org/badges/0.1.0/concept.svg)](http://www.repostatus.org/#concept)
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/$PACKAGENAME)](http://cran.r-project.org/web/packages/$PACKAGENAME) 
![downloads](http://cranlogs.r-pkg.org/badges/grand-total/$PACKAGENAME)

$PACKAGENAME is ...

The following functions are implemented:

The following data sets are included:

### News

- Version `` released

### Installation

\`\`\`{r eval=FALSE}
devtools::install_github("$HANDLE/$PACKAGENAME")
\`\`\`

\`\`\`{r echo=FALSE, message=FALSE, warning=FALSE, error=FALSE}
options(width=120)
\`\`\`

### Usage

\`\`\`{r}
library($PACKAGENAME)

# current verison
packageVersion("$PACKAGENAME")

\`\`\`

### Test Results

\`\`\`{r}
library($PACKAGENAME)
library(testthat)

date()

test_dir("tests/")
\`\`\`

### Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). 
By participating in this project you agree to abide by its terms.
EOF

# roxygen complains if this is populated
cat <<EOF>NAMESPACE
# Generated by roxygen2 (4.1.1): do not edit by hand

EOF

# until R is updated...
cat <<EOF >>.Rbuildignore
^README\.md$
EOF

# finish roxygen setup
Rscript --no-save -e "devtools::document(roclets=c('rd', 'collate', 'namespace'))"

# default build to avoid inital README githook warning
Rscript --no-save -e "devtools::build()"

# build initial README.md
Rscript --no-save -e "knitr::knit('README.Rmd')"

# Open RStudio with said package

if [[ "$OSTYPE" == "darwin"* ]]; then
  # I'm on a Mac so I do this. RStudio doesn't always obey the first call
  # but also really doesn't like it if there's already a proj window open
  open $PACKAGENAME.Rproj
  sleep 1
  ct=`ps -ef | grep -v grep | grep -c "$PACKAGENAME.Rproj"`
  if [ ct == 0 ]; then
    open $PACKAGENAME.Rproj
  fi
fi