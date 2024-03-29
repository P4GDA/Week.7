test = list(
  name = "Tutorial.W7.2.4.e",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        tobacco_vs_mutations_survival
        expect_equal(tobacco_vs_mutations_survival$data, filter(cancer_patient_data, cancer_type == "Hepatobiliary Cancer" | cancer_type == "Pancreatic Cancer" | cancer_type == "Breast Cancer" | cancer_type == "Prostate Cancer" | cancer_type == "Renal Cell Carcinoma"))
        expect_equal(class(tobacco_vs_mutations_survival$layers[[1]]$geom)[1], "GeomPoint")
        expect_equal(class(tobacco_vs_mutations_survival$layers[[1]]$stat)[1], "StatIdentity")
        expect_equal("tobacco_smoking_intensity", rlang::as_name(tobacco_vs_mutations_survival$mapping$x))
        expect_equal("mutational_burden", rlang::as_name(tobacco_vs_mutations_survival$mapping$y))
        expect_true(any(grepl("survival_status", rlang::as_label(tobacco_vs_mutations_survival$mapping$colour)),
                        grepl("survival_status", rlang::as_label(tobacco_vs_mutations_survival$layers[[1]]$mapping$colour))))
      }
    )
  )
)