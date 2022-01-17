test = list(
  name = "Tutorial.W7.1.3.f",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_false(exists("is.seq_error"))
        expect_error(is.seq("ABCD", seq.type="amino acid"))
      }
    )
  )
)