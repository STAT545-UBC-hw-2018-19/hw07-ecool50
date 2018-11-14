context("checking isFactors")

test_that("check if the input is a factor (or character)", {
  x <- c('high', 'medium', 'low')
  x_fact <- factor(x)
  y <- c('high', 'low')
  y_fact <- factor(y)
  expect_identical(isFactor(x_fact), T)
  expect_identical(isFactor(y_fact), T)
  expect_error(isFactor(x), "Input is not a factor, please make sure a factor is provided")
})
