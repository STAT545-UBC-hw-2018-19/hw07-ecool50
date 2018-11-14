context("Test reading and writing dataframes from and to text files")

test_that("Test the reading and writing textfiles functionality", {
  test_df <-  data.frame(x1 = (c("R","S","T")),x2=c("U","V","W"))
  Write_textFile(test_df, name = "test_dataframe.txt")
  test_df_read <- Read_textFile("test_dataframe.txt")
  expect_is(test_df_read$x1, "factor")
  expect_equal(levels(test_df$x1), levels(test_df_read$x1))
  expect_equal(levels(test_df$x2), levels(test_df_read$x2))



})
