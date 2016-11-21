#' Connects to a given database.
#'
#' @param db A database name, either "oefenweb" or "mathsgarden".
#' @return A database connection (an object of class MySQLConnection).
#' @examples
#' con <- connect("oefenweb")
#' @export
connect <- function(db = "oefenweb") {
  if (db == "oefenweb") {
    dbname <- "oefenweb_nl_app"
  }
  if (db == "mathsgarden") {
    dbname <- "mathsgarden_com_app"
  }
  return(DBI::dbConnect(RMySQL::MySQL(), dbname = dbname, default.file = "~/.my.cnf"))
}
