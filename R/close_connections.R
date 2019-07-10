#' Disconnects all database connections.
#'
#' @return A logical list, indicating success or failure for all connections.
#' @export
close_connections <- function() {
  tmp <- DBI::dbListConnections(DBI::dbDriver(drv = "MySQL"))
  return(lapply(tmp, DBI::dbDisconnect))
}
