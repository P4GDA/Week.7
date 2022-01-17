test = list(
  name = "Tutorial.W7.1.2.c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_equal(mean_age_test_1, 55)
      }
    )
  )
)