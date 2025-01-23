#' Disconnects a given database connection.
#'
#' @param con A DBIConnection object, as returned by dbConnect().
#' @return A logical vector of length 1, indicating success or failure.
#' @export
close_connection <- function(con) {
  return(DBI::dbDisconnect(con))
}
