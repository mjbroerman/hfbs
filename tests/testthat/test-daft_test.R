test_that("test lyric getting", {
  lyric <- hfbs

  expect_true(daft_lyric() %in% lyric$lyric)
  expect_true(daft_lyric(3) %in% lyric$lyric)
})
