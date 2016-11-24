test_that("test if connection can be established", {
  con1 <- connect("oefenwebDatabase_test")
  expect_equal(class(con1)[1], "MySQLConnection")
})

test_that("test if connection can be terminated", {
  con <- connect("oefenwebDatabase_test")
  expect_equal(close_connection(con), TRUE)
  # test if close_connection throws an error if no connection exists
  expect_error(close_connection(con), "internal error in RS_DBI_getConnection: corrupt connection handle")
})

test_that("test if all connections can be terminated", {
  con1 <- connect("oefenwebDatabase_test")
  con2 <- connect("oefenwebDatabase_test")
  # test if close_connection throws an error if no connection exists
  expect_equal(all(sapply(close_connections(), function(x) x == TRUE)), TRUE)
})
