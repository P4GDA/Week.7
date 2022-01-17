test = list(
  name = "Tutorial.W7.1.3.b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_equal(most.mutated.gene.2(cancer.type="Hepatobiliary Cancer", choose.sex="Male"), "CTNNB1")
        expect_warning(most.mutated.gene.2(cancer.type="Hepatobiliary Cancer", choose.sex="male"))
        expect_equal(most.mutated.gene.2(cancer.type="Hepatobiliary Cancer", choose.sex="male"), "TP53")
        expect_error(most.mutated.gene.2(cancer.type="Esophagogastric Cancer", age.range=40))
        expect_warning(most.mutated.gene.2(cancer.type="Esophagogastric Cancer", age.range=c(40,0)))
        expect_equal(most.mutated.gene.2(cancer.type="Esophagogastric Cancer", age.range=c(40,0)), "LRP1B")
      }
    )
  )
)