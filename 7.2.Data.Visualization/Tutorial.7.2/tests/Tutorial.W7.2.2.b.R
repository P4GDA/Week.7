test = list(
  name = "Tutorial.W7.2.2.b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        patient_age_distribution
        expect_equal(patient_age_distribution$data, cancer_patient_data)
        expect_equal(class(patient_age_distribution$layers[[1]]$geom)[1], "GeomBar")
        expect_equal(class(patient_age_distribution$layers[[1]]$stat)[1], "StatBin")
        expect_equal(patient_age_distribution$layers[[1]]$stat_params$binwidth, 5)
        expect_equal("age", rlang::as_name(patient_age_distribution$mapping$x))
      }
    )
  )
)