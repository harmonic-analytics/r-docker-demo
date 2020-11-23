data = dplyr::tibble(
  x = rnorm(100),
  y = rnorm(100)
)
readr::write_csv(data, "data/random_data.csv")