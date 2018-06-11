library(processx)
library(RPostgres)
library(httr)
library(dbplyr)
library(tidyverse)

# this example assumes you've created a heroku postgresql
# instance and have the app name (in this example, "rpgtestcon").

# use the heroku command-line app
# we do this as the creds change & it avoids disclosure
config <- run("heroku", c("config:get", "DATABASE_URL", "-a", "rpgtestcon"))

# ^^ gets us a URL, we need the parts
pg <- httr::parse_url(config$stdout)

# use the parts from ^^
dbConnect(RPostgres::Postgres(),
  dbname = trimws(pg$path),
  host = pg$hostname,
  port = pg$port,
  user = pg$username,
  password = pg$password,
  sslmode = "require"
) -> db_con

# hook it up to dbplyr
db <- src_dbi(db_con)

# boom
db
## src:  PqConnection
## tbls:

xdf <- copy_to(db, iris, name="iris", overwrite = TRUE)

db
## src:  PqConnection
## tbls: iris

xdf
## # Source:   table<iris> [?? x 5]
## # Database: PqConnection
##    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
##           <dbl>       <dbl>        <dbl>       <dbl>   <chr>
##  1          5.1         3.5          1.4         0.2  setosa
##  2          4.9         3.0          1.4         0.2  setosa
##  3          4.7         3.2          1.3         0.2  setosa
##  4          4.6         3.1          1.5         0.2  setosa
##  5          5.0         3.6          1.4         0.2  setosa
##  6          5.4         3.9          1.7         0.4  setosa
##  7          4.6         3.4          1.4         0.3  setosa
##  8          5.0         3.4          1.5         0.2  setosa
##  9          4.4         2.9          1.4         0.2  setosa
## 10          4.9         3.1          1.5         0.1  setosa
## # ... with more rows