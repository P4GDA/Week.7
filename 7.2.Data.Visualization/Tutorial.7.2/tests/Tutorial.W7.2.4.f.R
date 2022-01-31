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
        expect_equal("tobacco_smoking_intensity", rlang::as_name(tobacco_vs_mutations_survival_2$mapping$x))
        expect_equal("mutational_burden", rlang::as_name(tobacco_vs_mutations_survival_2$mapping$y))
        expect_true(any(grepl("survival_status", rlang::as_label(tobacco_vs_mutations_survival_2$mapping$colour)),
                        grepl("survival_status", rlang::as_label(tobacco_vs_mutations_survival_2$layers[[1]]$mapping))))
        expect_true(any(!is.null(tobacco_vs_mutations_survival_2$layers[[1]]$geom_params$size),
                         !is.null(tobacco_vs_mutations_survival_2$layers[[1]]$aes_params$size),
                         !is.null(tobacco_vs_mutations_survival_2$layers[[1]]$mapping$size),
                         !is.null(tobacco_vs_mutations_survival_2$mapping$size)))
        expect_true(any(!is.null(tobacco_vs_mutations_survival_2$layers[[1]]$geom_params$alpha),
                         !is.null(tobacco_vs_mutations_survival_2$layers[[1]]$aes_params$alpha),
                         !is.null(tobacco_vs_mutations_survival_2$layers[[1]]$mapping$alpha),
                         !is.null(tobacco_vs_mutations_survival_2$mapping$alpha)))
        expect_false(is.null(ggplot_build(tobacco_vs_mutations_survival_2)$layout$panel_params[[1]]$y.sec$scale$limits))
      }
    )
  )
)