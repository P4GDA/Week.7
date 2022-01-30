test = list(
  name = "Tutorial.W7.2.4.b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        pancreatic_subtypes_age_survival
        expect_equal(pancreatic_subtypes_age_survival$data, filter(cancer_patient_data, cancer_subtype=="Pancreatic Adenocarcinoma" | cancer_subtype == "Pancreatic Neuroendocrine Tumor"))
        expect_equal(class(pancreatic_subtypes_age_survival$layers[[1]]$geom)[1], "GeomBoxplot")
        expect_equal(class(pancreatic_subtypes_age_survival$layers[[1]]$stat)[1], "StatBoxplot")
        expect_equal("cancer_subtype", rlang::as_name(pancreatic_subtypes_age_survival$mapping$x))
        expect_equal("age", rlang::as_name(pancreatic_subtypes_age_survival$mapping$y))
        expect_true(any(grepl("survival_status", rlang::as_label(pancreatic_subtypes_age_survival$mapping$fill)),
                        grepl("survival_status", rlang::as_label(pancreatic_subtypes_age_survival$layers[[1]]$mapping$fill))))
      }
    )
  )
)