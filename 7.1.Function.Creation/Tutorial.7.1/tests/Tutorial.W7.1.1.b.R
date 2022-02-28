test = list(
  name = "Tutorial.W7.1.1.b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_equal(num_patients_w_mutation("KRAS"), 265)
        expect_equal(num_patients_w_mutation("KMT2D"), 168)
        expect_equal(num_patients_w_mutation("BRAF"), 48)
      }
    )
  )
)