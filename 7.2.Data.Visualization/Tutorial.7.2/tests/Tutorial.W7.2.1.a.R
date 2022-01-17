test = list(
  name = "Tutorial.W7.2.1.a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_equal(categorical_columns, c("sex", "survival_status", "cancer_type", "cancer_subtype"))
      }
    )
  )
)