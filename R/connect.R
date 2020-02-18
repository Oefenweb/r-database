#' Connects to a given database.
#'
#' @param dbname A database name, for example "oefenweb_nl_app" or "mathsgarden_com_app".
#' @param default.file A MySQL configuration file, containing login credentials.
#' @return A database connection (an object of class MySQLConnection).
#' @export
connect <- function(dbname = "oefenweb_nl_app", default.file = path.expand(file.path("~", ".my.cnf"))) {
  return(DBI::dbConnect(RMySQL::MySQL(), dbname = dbname, default.file = default.file))
}
