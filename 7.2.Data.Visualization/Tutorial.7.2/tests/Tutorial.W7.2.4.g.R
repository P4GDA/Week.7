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
        expect_true(any(grepl("tobacco_smoking_intensity", tobacco_vs_mutations_survival_cancer_type$mapping$x)))
        expect_true(any(grepl("mutational_burden", tobacco_vs_mutations_survival_cancer_type$mapping$y)))
        expect_true(any(grepl("size", names(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$geom_params))))
        expect_true(any(grepl("alpha", names(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$geom_params))))
        expect_true(any(grepl("colour", names(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$mapping))) | 
                      any(grepl("survival_status", tobacco_vs_mutations_survival_cancer_type$mapping$colour)))
        expect_true(any(grepl("shape", names(tobacco_vs_mutations_survival_cancer_type$layers[[1]]$mapping))) | 
                      any(grepl("cancer_type", tobacco_vs_mutations_survival_cancer_type$mapping$shape)))
      }
    )
  )
)