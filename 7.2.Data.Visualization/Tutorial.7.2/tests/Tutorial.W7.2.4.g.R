test = list(
  name = "Tutorial.W7.2.4.g",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        tobacco_vs_mutations_survival_cancer_type
        expect_equal(tobacco_vs_mutations_survival_cancer_type$data, filter(cancer_patient_data, cancer_type == "Hepatobiliary Cancer" | cancer_type == "Pancreatic Cancer" | cancer_type == "Breast Cancer" | cancer_type == "Prostate Cancer" | cancer_type == "Renal Cell Carcinoma"))
        expect_equal(class(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$geom)[1], "GeomPoint")
        expect_equal(class(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$stat)[1], "StatIdentity")
        expect_equal("tobacco_smoking_intensity", rlang::as_name(tobacco_vs_mutations_survival_cancer_type$mapping$x))
        expect_equal("mutational_burden", rlang::as_name(tobacco_vs_mutations_survival_cancer_type$mapping$y))
        expect_true(any(grepl("survival_status", rlang::as_label(tobacco_vs_mutations_survival_cancer_type$mapping$colour)),
                        grepl("survival_status", rlang::as_label(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$mapping$colour))))
        expect_true(any(grepl("cancer_type", rlang::as_label(tobacco_vs_mutations_survival_cancer_type$mapping$shape)),
                        grepl("cancer_type", rlang::as_label(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$mapping$shape))))
        expect_true(any(!is.null(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$geom_params$size),
                         !is.null(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$aes_params$size),
                         !is.null(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$mapping$size),
                         !is.null(tobacco_vs_mutations_survival_cancer_type$mapping$size)))
        expect_true(any(!is.null(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$geom_params$alpha),
                         !is.null(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$aes_params$alpha),
                         !is.null(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$mapping$alpha),
                         !is.null(tobacco_vs_mutations_survival_cancer_type$mapping$alpha)))
      }
    )
  )
)