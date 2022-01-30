test = list(
  name = "Tutorial.W7.2.4.d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        age_and_survival
        expect_equal(age_and_survival$data, filter(cancer_patient_data, cancer_type == "Hepatobiliary Cancer" | cancer_type == "Pancreatic Cancer" | cancer_type == "Breast Cancer" | cancer_type == "Prostate Cancer" | cancer_type == "Renal Cell Carcinoma"))
        expect_equal(class(age_and_survival$layers[[1]]$geom)[1], "GeomBoxplot")
        expect_equal(class(age_and_survival$layers[[1]]$stat)[1], "StatBoxplot")
        expect_equal("cancer_type", rlang::as_name(age_and_survival$mapping$x))
        expect_equal("age", rlang::as_name(age_and_survival$mapping$y))
        expect_true(any(grepl("survival_status", rlang::as_label(age_and_survival$mapping$fill)),
                        grepl("survival_status", rlang::as_label(age_and_survival$layers[[1]]$mapping$fill))))
        expect_equal(age_and_survival$labels, list(x="Cancer Type", 
                                                   y="Patient Age at Diagnosis", 
                                                   fill="Survival Status", 
                                                   title= "Common Cancer Types: Age and Survival Status"))
      }
    )
  )
)