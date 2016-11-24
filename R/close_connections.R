#' Disconnects all database connections.
#'
#' @return A logical list, indicating success or failure for all connections.
#' @examples
#' # establishing connection to oefenweb database
#' con1 <- connect(db = "oefenwebDatabase_test")
#' # establishing connection to mathsgarden database
#' con2 <- connect(db = "oefenwebDatabase_test")
#' # closing all database connections
#' close_connections()
#' @export
close_connections <- function() {
  tmp <- DBI::dbListConnections(DBI::dbDriver(drv = "MySQL"))
  return(lapply(tmp, DBI::dbDisconnect))
}
