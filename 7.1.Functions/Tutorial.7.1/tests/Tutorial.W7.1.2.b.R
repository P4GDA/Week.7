test = list(
  name = "Tutorial.W7.1.2.b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_equal(patients.w.N.mutations.2("TP53"), 814)
        expect_equal(patients.w.N.mutations.2("CDKN2A", 3), 1)
      }
    )
  )
)