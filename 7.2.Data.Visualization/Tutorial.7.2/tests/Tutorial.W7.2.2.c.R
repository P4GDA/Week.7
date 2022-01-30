test = list(
  name = "Tutorial.W7.2.2.c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        age_vs_mutational_burden
        expect_equal(age_vs_mutational_burden$data, cancer_patient_data)
        expect_equal(class(age_vs_mutational_burden$layers[[1]]$geom)[1], "GeomPoint")
        expect_equal(class(age_vs_mutational_burden$layers[[1]]$stat)[1], "StatIdentity")
        expect_equal("age", rlang::as_name(age_vs_mutational_burden$mapping$x))
        expect_equal("mutational_burden", rlang::as_name(age_vs_mutational_burden$mapping$y))
      }
    )
  )
)