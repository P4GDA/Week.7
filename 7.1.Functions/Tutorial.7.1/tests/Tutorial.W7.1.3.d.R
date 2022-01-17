test = list(
  name = "Tutorial.W7.1.3.d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_false(is.seq_FALSE)
        expect_false(is.seq("CGTATCGGCTATGCCTAGCACCG", seq.type="RNA"))
      }
    )
  )
)