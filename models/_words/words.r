Sys.getenv("PTBRFN_MODELS") |>
  file.path(
    "words",
    "words.csv"
  ) |>
  read.csv() -> words

colMeans(words) |>
  rbind(
    colMeans(
      words - words[, 1]
    )
  ) |>
  round(2) |>
  write.csv(
    file = file.path(
      "models",
      "words",
      "means.csv"
    ),
    row.names = F,
    quote = F
  )
