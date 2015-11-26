context("Test skyscraper shape")

test_that("skyscraper is 100 rows by 9 columns", {
  expect_equal(nrow(skyscraper), 100)
  expect_equal(ncol(skyscraper), 9)
})
