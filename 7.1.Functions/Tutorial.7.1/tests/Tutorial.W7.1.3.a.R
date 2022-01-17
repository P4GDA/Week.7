test = list(
  name = "Tutorial.W7.1.3.a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_equal(most.mutated.gene(cancer.type="Hepatobiliary Cancer", choose.sex="Male"), "CTNNB1")
        expect_equal(most.mutated.gene(cancer.type="Hepatobiliary Cancer", choose.sex="Female"), "TP53")
        expect_equal(most.mutated.gene(cancer.type="Esophagogastric Cancer", age.range=c(0,40)), "LRP1B")
        expect_equal(most.mutated.gene(cancer.type="Esophagogastric Cancer", age.range=c(0,70)), "TP53")
      }
    )
  )
)