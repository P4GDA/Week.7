test = list(
  name = "Tutorial.W7.1.3.e",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_false(is.seq_FALSE_warning)
        expect_warning(is.seq(1, seq.type="RNA"))
      }
    )
  )
)