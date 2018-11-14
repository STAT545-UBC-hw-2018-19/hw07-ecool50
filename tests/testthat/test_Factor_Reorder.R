context("Checking Factor Reorder")

test_that("Factor Reorder", {
  x <- c('3', '1', '2', '5')
  y <- c('3', '1', '2', '5')
  x_fact <- factor(x)
  levels(x) <- c('5', '3', '2', '1')

  expect_identical(Factor_Reorder(x_fact), levels(x))
  expect_error(Factor_Reorder(y),"Input is not a factor, please make sure a factor is provided")
})
