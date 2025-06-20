release_year <- as.numeric(datos$release_year)
apiexamen <- "
#* @apiTitle Plumber Example API
#* @apiDescription Plumber  description

#* @param release_year
#* @get /echo
function(release_year) {
    return()
}"

writeLines(apiexamen,"api.R")
library(plumber)
r <- plumb("api.R")
r$run(port=8000)

