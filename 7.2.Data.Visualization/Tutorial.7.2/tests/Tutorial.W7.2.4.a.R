test = list(
  name = "Tutorial.W7.2.4.a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        pancreatic_cancer_subtype_survival
        expect_equal(pancreatic_cancer_subtype_survival$data, cancer_patient_data %>% filter(cancer_type=="Pancreatic Cancer"))
        expect_equal(class(pancreatic_cancer_subtype_survival$layers[[1]]$geom)[1], "GeomBar")
        expect_equal(class(pancreatic_cancer_subtype_survival$layers[[1]]$stat)[1], "StatCount")
        expect_true(any(grepl("cancer_subtype", pancreatic_cancer_subtype_survival$mapping$x)))
        expect_true(any(grepl("survival_status", pancreatic_cancer_subtype_survival$mapping$fill)) |
                      any(grepl("fill", pancreatic_cancer_subtype_survival$layers[[1]]$mapping)))
        expect_equal(pancreatic_cancer_subtype_survival$theme$axis.text.x$vjust, 0.5)
        expect_equal(pancreatic_cancer_subtype_survival$theme$axis.text.x$angle, 50)
      }
    )
  )
)