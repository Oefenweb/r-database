#' Retrieve results from a query.
#'
#'  Suppresses warnings and uses glue_sql for safety.
#'
#' @param ... [expressions] Unnamed arguments are taken to be expression string(s) to format.
#' Multiple inputs are concatenated together before formatting.
#' @param con A DBIConnection object, as returned by dbConnect().
#' @param params [list] Containing parameters called in SQL statement with \{params[[i]]\} or \{params[[j]]*\}
#' @return [data.frame] With as many rows as records were fetched and as many columns as fields in the result set.
#' @examples
#' \dontrun{
#' domain_ids <- 1:4
#' domain_name <- "Vermenigvuldigen"
#' query <- "SELECT `name` FROM `domains` WHERE `id` IN ({params[[1]]*}) AND `name` != {params[[2]]}"
#' params <- list(domain_ids, domain_name)
#' get_query(query, con = con, params = params)
#' }
#' @export
get_query <- function(..., con  = con, params = NULL) {
  return(
    suppressWarnings(
      DBI::dbGetQuery(con, glue::glue_sql(..., .con  = con))
    )
  )
}
