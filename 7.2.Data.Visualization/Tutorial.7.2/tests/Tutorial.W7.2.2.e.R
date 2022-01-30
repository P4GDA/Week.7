test = list(
  name = "Tutorial.W7.2.2.e",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        breast_cancer_subtype_mutational_burden
        expect_equal(breast_cancer_subtype_mutational_burden$data, cancer_patient_data %>% filter(cancer_type=="Breast Cancer"))
        expect_equal(class(breast_cancer_subtype_mutational_burden$layers[[1]]$geom)[1], "GeomBoxplot")
        expect_equal(class(breast_cancer_subtype_mutational_burden$layers[[1]]$stat)[1], "StatBoxplot")
        expect_equal("cancer_subtype", rlang::as_name(breast_cancer_subtype_mutational_burden$mapping$x))
        expect_equal("mutational_burden", rlang::as_name(breast_cancer_subtype_mutational_burden$mapping$y))
        expect_equal(breast_cancer_subtype_mutational_burden$theme$axis.text.x$vjust, 0.5)
        expect_equal(breast_cancer_subtype_mutational_burden$theme$axis.text.x$angle, 50)
      }
    )
  )
)