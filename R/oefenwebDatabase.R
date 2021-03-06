#' oefenwebDatabase: A package for managing Oefenweb database connections
#'
#' The oefenwebDatabase package provides functionality to establish and
#' terminate connections to all Oefenweb databases.
#' In order for the oefenwebDatabase functions to work, a \preformatted{.my.cnf} must
#' be present in the working environment in which the oefenwebDatabase
#' functions are used. The \preformatted{.my.cnf} file is automatically generated for
#' users with access to the RStudio oefenweb server. If not present, it should
#' look like this: \cr
#' \cr
#' # Ansible managed \cr
#' [client] \cr
#' host = 127.0.0.1 \cr
#' port = 3306 \cr
#' user = username \cr
#' password = 'password' \cr
#'
#' @section oefenwebDatabase functions:
#' The oefenwebDatabase package contains the function \preformatted{connect()} to establish
#' a database connection and \preformatted{close_connection()} to terminate a specific
#' connection and \preformatted{close_connections()} to terminate all currently active
#' connections.
#'
#' @docType package
#' @name oefenwebDatabase
NULL
