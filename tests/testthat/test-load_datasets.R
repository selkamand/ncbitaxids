test_that("Ensure taxids_available_lists returns character vector", {
  expect_vector(object = taxids_available_lists(), character())
})

test_that("Ensure taxids_available_lists returns at least one available dataset", {
  expect_gt(object  = length(taxids_available_lists()), expected = 0)
})

test_that("Ensure taxids_available_lists returns at least one available dataset", {
  expect_gt(object  = length(taxids_available_lists()), expected = 0)
})

test_that("Ensure taxids_load_list throws error with message including the term 'rerun' when argument is empty", {
  expect_error(object = taxids_load_list(), "rerun")
})

test_that("Ensure taxids_load_list returns a double when run correctly ", {
  expect_error(taxids_load_list(taxids_available_lists()[1]), NA)
  expect_type(object = taxids_load_list(taxids_available_lists()[1]) , type = "double")
})


test_that("Ensure taxids_load_list returns a vector longer than 0 elements", {
  expect_error(taxids_load_list(taxids_available_lists()[1]), NA)
  expect_gt(object = length(taxids_load_list(taxids_available_lists()[1])), 0)
})

