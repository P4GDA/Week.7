test = list(
  name = "Tutorial.W7.1.2.a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_equal(patients.w.N.mutations("TP53", 3), 1)
        expect_equal(patients.w.N.mutations("ARID1A", 20), 0)
        expect_equal(patients.w.N.mutations("PTEN", 2), 20)
      }
    )
  )
)