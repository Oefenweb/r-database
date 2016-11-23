#' Disconnects a given database connection.
#'
#' @param con A database connection (an object of class MySQLConnection).
#' @return A logical vector of length 1, indicating success or failure.
#' @examples
#' # establishing connection to oefenweb database
#' con <- connect(db = "oefenwebDatabase_test")
#' # terminating connnection to oefenweb database
#' close_connection(con)
#' @export
close_connection <- function(con) {
  return(DBI::dbDisconnect(con))
}
