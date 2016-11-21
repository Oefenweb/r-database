test_that("test if connection can be established",	{
  con1 <- connect("oefenweb")
  expect_equal(class(con1)[1], "MySQLConnection")
})

test_that("test if connection can be terminated",	{
  con <- connect("oefenweb")
  expect_equal(close_connection(con), TRUE)
  # test if close_connection throws an error if no connection exists
  expect_error(close_connection(con),
               "internal error in RS_DBI_getConnection: corrupt connection handle")
})

test_that("test if all connections can be terminated",	{
  con1 <- connect("oefenweb")
  con2 <- connect("oefenweb")
  # test if close_connection throws an error if no connection exists
  expect_equal(all(sapply(close_connections(), function(x) x == TRUE)),
               TRUE)
})
