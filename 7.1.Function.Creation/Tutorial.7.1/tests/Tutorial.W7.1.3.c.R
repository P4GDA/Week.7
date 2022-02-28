test = list(
  name = "Tutorial.W7.1.3.c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_false(is_seq_2_FALSE)
        expect_false(is_seq_2("CGTATCGGCTATGCCTAGCACCG", seq.type="RNA"))
      }
    )
  )
)