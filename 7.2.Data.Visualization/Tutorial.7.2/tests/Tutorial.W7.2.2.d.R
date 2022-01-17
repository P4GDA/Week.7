test = list(
  name = "Tutorial.W7.2.2.d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        age_vs_mutational_burden_breast_cancer
        expect_equal(age_vs_mutational_burden_breast_cancer$data, cancer_patient_data %>% filter(cancer_type=="Breast Cancer"))
        expect_equal(class(age_vs_mutational_burden_breast_cancer$layers[[1]]$geom)[1], "GeomPoint")
        expect_equal(class(age_vs_mutational_burden_breast_cancer$layers[[1]]$stat)[1], "StatIdentity")
        expect_true(any(grepl("age", age_vs_mutational_burden_breast_cancer$mapping$x)))
        expect_true(any(grepl("mutational_burden", age_vs_mutational_burden_breast_cancer$mapping$y)))
      }
    )
  )
)