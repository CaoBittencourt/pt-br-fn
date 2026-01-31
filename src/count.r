rbind.data.frame(
  list(
    glyph = "á",
    nchar = 2
  ),
  list(
    glyph = "ä",
    nchar = 3
  ),
  list(
    glyph = "à",
    nchar = 3
  ),
  list(
    glyph = "ã",
    nchar = 2
  ),
  list(
    glyph = "â",
    nchar = 3
  )
) -> .chars

list(
  ptBR = "lalala",
  brBR1 = "lá lala",
  brBR2 = "lá lalà",
  brBR3 = "lãlâlà",
  brBR4 = "lalalá"
) -> text


count.chars <- \(chr){
  chr |>
    strsplit("") |>
    table() |>
    as.data.frame() -> .chr
  names(.chr) <- c("glyph", "n")
  .chr |> merge(.chars) -> .chr
  sum(prod(.chr$n, .chr$nchar))
}

text |> lapply(count.chars)
