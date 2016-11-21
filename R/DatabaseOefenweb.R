#'	DatabaseOefenweb:	A	package	for	managing Oefenweb database connections
#'
#'	The DatabaseOefenweb package provides functionality to establish and
#'	terminate connections to the Oefenweb and Mathsgarden database.
#'  In order for the DatabaseOefenweb functions to work, a .my.cnf must
#'	be present in the working environment in which the DatabaseOefenweb
#'	functions are used. The .my.cnf file is automatically generated for
#'	users with access to the RStudio oefenweb server. If not present, it should
#'	look like this: \cr
#'	\cr
#' # Ansible managed \cr
#' [client] \cr
#' host = 127.0.0.1 \cr
#' port = 3306 \cr
#' user = username \cr
#' password = 'password' \cr
#'
#'	@section	DatabaseOefenweb	functions:
#'	The DatabaseOefenweb package contains the function \strong{connect()} to establish
#'	a database connection and \strong{close_connection()} to terminate a specific
#'	connection and \strong{close_connections()} to terminate all currently active
#'	connections.
#'
#'	@docType	package
#'	@name	DatabaseOefenweb
#'
NULL
