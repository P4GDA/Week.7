test = list(
  name = "Tutorial.W7.1.1.a",
  cases = list(
    ottr::TestCase$new(
      hidden = FALSE,
      name = NA,
      points = 1.0,
      code = {
        expect_equal(my_sum_function(c(1,2,3)), 6)
        expect_equal(my_sum_function(c(-1,2,-3)), -2)
        expect_equal(length(my_sum_function(c(1,2,3))), 1)
        expect_false(T %in% grepl("sum\\(", body(my_sum_function)))
      }
    )
  )
)