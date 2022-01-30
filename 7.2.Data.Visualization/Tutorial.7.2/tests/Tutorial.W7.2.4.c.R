test = list(
  name = "Tutorial.W7.2.4.c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        pancreatic_subtypes_age_mutations_survival
        expect_equal(pancreatic_subtypes_age_mutations_survival$data, filter(cancer_patient_data, cancer_subtype=="Pancreatic Adenocarcinoma" | cancer_subtype == "Pancreatic Neuroendocrine Tumor"))
        expect_equal(class(pancreatic_subtypes_age_mutations_survival$layers[[1]]$geom)[1], "GeomPoint")
        expect_equal(class(pancreatic_subtypes_age_mutations_survival$layers[[1]]$stat)[1], "StatIdentity")
        expect_equal("age", rlang::as_name(pancreatic_subtypes_age_mutations_survival$mapping$x))
        expect_equal("mutational_burden", rlang::as_name(pancreatic_subtypes_age_mutations_survival$mapping$y))
        expect_true(any(grepl("cancer_subtype", rlang::as_label(pancreatic_subtypes_age_mutations_survival$mapping$colour)),
                        grepl("cancer_subtype", rlang::as_label(pancreatic_subtypes_age_mutations_survival$layers[[1]]$mapping$colour))))

      }
    )
  )
)