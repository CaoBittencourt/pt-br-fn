# modules
options(box.path = Sys.getenv("PTBRFN_MOD"))

# imports
box::use(
    str = stringr
)

# book directory
Sys.getenv("PTBRFN_BOOKS_LATEX") |> file.path("manual-ptbr") |> setwd()

# parse latex
readLines('manual.tex') |>
    str$str_split(' ') |>
    unlist() |>
    str$str_subset(' ', T) |>
    str$str_subset('^$', T) |>
    str$str_subset("^%", T) |>
    str$str_remove_all('\\\textit') |>
    str$str_remove_all('\\,') |>
    str$str_remove_all('\\.') |>
    str$str_remove_all('\\;') |>
    str$str_remove_all('\\:') |>
    str$str_remove_all('\\(') |>
    str$str_remove_all('\\)') |>
    str$str_remove_all('\\[') |>
    str$str_remove_all('\\]') |>
    str$str_remove_all('\\{') |>
    str$str_remove_all('\\}') |>
    str$str_remove_all('``') |>
    str$str_remove_all("''") |>
    str$str_remove_all("\"") |>
    str$str_remove_all("\\\\") |>
    str$str_remove_all("%") |>
    str$str_remove_all("\\+") |>
    str$str_remove_all("\\~") |>
    str$str_subset("[:digit:]", T) |>
    str$str_subset("^$", T) |>
    unique() |>
    sort() -> words

words |>
    str$str_subset('footnote', T) |>
    c(
        words |>
            str$str_subset('footnote') |>
            str$str_split('footnote') |>
            unlist() |>
            str$str_subset('^$', T)
    ) -> words


data.frame(
    prbr = words,
    brbr = ''
) |>
    write.csv(
        getwd() |> file.path('translate', 'words.csv'),
        row.names = F,
        quote = F
    )
