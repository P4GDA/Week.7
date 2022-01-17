test = list(
  name = "Tutorial.W7.2.2.a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        patient_survival_status_plot
        expect_equal(patient_survival_status_plot$data, cancer_patient_data)
        expect_equal(class(patient_survival_status_plot$layers[[1]]$geom)[1], "GeomBar")
        expect_equal(class(patient_survival_status_plot$layers[[1]]$stat)[1], "StatCount")
        expect_true(any(grepl("survival_status", patient_survival_status_plot$mapping$x)))
      }
    )
  )
)