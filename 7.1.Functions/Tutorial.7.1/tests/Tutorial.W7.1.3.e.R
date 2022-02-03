test = list(
  name = "Tutorial.W7.1.3.e",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_false(exists("is_seq2_error"))
        expect_error(is_seq2("ABCD", seq.type="amino acid"))
      }
    )
  )
)