test = list(
  name = "Tutorial.W7.2.4.f",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        tobacco_vs_mutations_survival_2
        expect_equal(tobacco_vs_mutations_survival_2$data, filter(cancer_patient_data, cancer_type == "Hepatobiliary Cancer" | cancer_type == "Pancreatic Cancer" | cancer_type == "Breast Cancer" | cancer_type == "Prostate Cancer" | cancer_type == "Renal Cell Carcinoma"))
        expect_equal(class(tobacco_vs_mutations_survival_2$layers[[1]]$geom)[1], "GeomPoint")
        expect_equal(class(tobacco_vs_mutations_survival_2$layers[[1]]$stat)[1], "StatIdentity")
        expect_true(any(grepl("tobacco_smoking_intensity", tobacco_vs_mutations_survival_2$mapping$x)))
        expect_true(any(grepl("mutational_burden", tobacco_vs_mutations_survival_2$mapping$y)))
        expect_true(any(grepl("survival_status", tobacco_vs_mutations_survival_2$mapping$colour)) |
                      any(grepl("colour", names(tobacco_vs_mutations_survival_2$layers[[1]]$mapping))))
        expect_true(any(grepl("size", names(tobacco_vs_mutations_survival_2$layers[[1]]$geom_params))))
        expect_true(any(grepl("alpha", names(tobacco_vs_mutations_survival_2$layers[[1]]$geom_params))))
        expect_false(is.null(ggplot_build(tobacco_vs_mutations_survival_2)$layout$panel_params[[1]]$y.sec$scale$limits))
      }
    )
  )
)