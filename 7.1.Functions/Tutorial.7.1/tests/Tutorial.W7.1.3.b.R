test = list(
  name = "Tutorial.W7.1.3.b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_true(all(is_seq2("CATCATCAT"), 
                        is_seq2("CAUCAUCAU", seq.type="RNA"),
                        is_seq2("CACACA"),
                        is_seq2("CACACA", seq.type="RNA")))
        expect_false(TRUE %in% c(is_seq2("CATCATCAT", seq.type="RNA"),
                                 is_seq2("CAUCAUCAU")))
        expect_warning(is_seq2(7))
        expect_false(is_seq2(7))
        expect_error(is_seq2("ATG", seq.type="amino"))
      }
    )
  )
)