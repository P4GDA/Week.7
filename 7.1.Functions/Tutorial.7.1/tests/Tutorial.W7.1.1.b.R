test = list(
  name = "Tutorial.W7.1.1.b",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_equal(my_factorial_function(3), 6)
        expect_equal(my_factorial_function(10), 3628800)
        expect_false(T %in% grepl("factorial\\(", body(my_factorial_function)))
      }
    )
  )
)