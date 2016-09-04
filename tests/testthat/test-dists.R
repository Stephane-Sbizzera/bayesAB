library(bayesAB)
context('dists')

test_that("Failures based on inputs", {
  
  expect_error(plotPoisson(1, 5), 'p must be in (0, 1)', fixed = TRUE)
  
  expect_error(plotPareto(1, 1, 5), 'p must be in (0, 1)', fixed = TRUE)
  
  expect_error(plotGamma(1, 1, 5), 'p must be in (0, 1)', fixed = TRUE)
  
  expect_error(plotInvGamma(1, 1, 5), 'p must be in (0, 1)', fixed = TRUE)

})

test_that("Success", {
  
  expect_equal(plotPoisson(1)$plot$labels$y, 'PDF')
  expect_equal(plotPareto(1, 1)$plot$labels$y, 'PDF')
  expect_equal(plotNormal(1, 1)$plot$labels$y, 'PDF')
  expect_equal(plotGamma(1, 1)$plot$labels$y, 'PDF')
  expect_equal(plotBeta(1, 1)$plot$labels$y, 'PDF')
  expect_equal(plotInvGamma(1, 1)$plot$labels$y, 'PDF')
    
})