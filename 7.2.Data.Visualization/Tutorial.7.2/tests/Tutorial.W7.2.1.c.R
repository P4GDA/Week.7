test = list(
  name = "Tutorial.W7.2.1.c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_equal(continuous_columns, c("mutational_burden"))
      }
    )
  )
)