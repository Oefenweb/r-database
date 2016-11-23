#' Connects to a given database.
#'
#' @param dbname A database name, for example "oefenweb_nl_app" or "mathsgarden_com_app".
#' @return A database connection (an object of class MySQLConnection).
#' @examples
#' con <- connect(dbname = "oefenwebDatabase_test")
#' @export
connect <- function(dbname = "oefenweb_nl_app", default.file = "~/.my.cnf") {
  return(DBI::dbConnect(RMySQL::MySQL(), dbname = dbname, default.file = default.file))
}
