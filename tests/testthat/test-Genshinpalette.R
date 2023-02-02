library(devtools)
library(testthat)
library(Genshinpalette)
test_that("Genshinpalette", {
  Name='ZHONGLI'
  Count=6
  rlt=Genshinpalette(Name,Count)
  expect_equal(rlt,c('#372D2C','#896243','#B29F89','#D0A649','#F7EDCC','#FEFDFD'))

})

test_that("get_character_name", {
  rlt=get_character_name()
  expect_equal(rlt,rs)

})


test_that("display_colors", {
  rlt=display_colors('ZHONGLI')
  expect_equal(rlt,rs)

})



test()
check()
