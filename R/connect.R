#' Connects to a given database.
#'
#'@param db A database name, for example "oefenweb" or "mathsgarden".
#'@return A database connection (an object of class MySQLConnection).
#'@examples
#'con <- connect(db = "oefenwebDatabase_test")
#' @export
connect <- function(db = "oefenweb_nl_app") {
  return(DBI::dbConnect(RMySQL::MySQL(),
                        dbname = db,
                        default.file = "~/.my.cnf"))
}
