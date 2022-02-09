test = list(
  name = "Tutorial.W7.1.3.a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_true(all(is_seq("CATCATCAT"), 
                        is_seq("CAUCAUCAU", seq.type="RNA"),
                        is_seq("CACACA"),
                        is_seq("CACACA", seq.type="RNA")))
        expect_false(TRUE %in% c(is_seq("CATCATCAT", seq.type="RNA"),
                                 is_seq("CAUCAUCAU")))
      }
    )
  )
)