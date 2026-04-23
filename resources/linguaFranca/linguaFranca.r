library(dplyr)
library(readr)

file.path(
  "resources",
  "linguaFranca",
  "linguaFranca.csv"
) |>
  read_csv() ->
linguaFranca

linguaFranca |>
  as_tibble() |>
  mutate(
    lexicalSimilarityEN = lexicalSimilarityEN / 100
  ) |>
  arrange(
    -ratioAdjusted
  )
