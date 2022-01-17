test = list(
  name = "Tutorial.W7.2.2.f",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_equal(round(breast_t.test_p.val, 7), 0.7648294)
      }
    )
  )
)