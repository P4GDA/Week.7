test = list(
  name = "Tutorial.W7.1.3.d",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_false(is_seq_2_FALSE_warning)
        expect_warning(is_seq_2(1, seq.type="RNA"))
      }
    )
  )
)