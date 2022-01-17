test = list(
  name = "Tutorial.W7.1.3.c",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_true(is.seq("CATCATCAT"))
        expect_true(is.seq("CAUCAUCAU", seq.type="RNA"))
        expect_true(is.seq("CACACA"))
        expect_true(is.seq("CACACA", seq.type="RNA"))
      }
    )
  )
)