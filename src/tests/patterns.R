# SETUP -------------------------------------------------------------------
# - settings ----------------------------------------------------------------
# set working directory
setwd(box::file('../..'))

# set modules path
options(box.path = file.path(getwd(), 'src'))

# - imports -----------------------------------------------------------------
box::use(
  br = translate/init
  , dplyr[...]
)

# - data ---------------------------------------------------------------
# csv separator
csv_sep <- '|'

# patterns file
patterns_csv <- file.path(getwd(), 'lang','patterns.csv')

# word list
getwd() |>
  file.path(
    'lang'
    , 'words.csv'
  ) |>
  read.csv(
    sep = csv_sep
  ) |>
  as_tibble() ->
  words

# DATA WRANGLING ----------------------------------------------------------
# - patterns as from_to data frame ----------------------------------------------------
patterns_csv |>
  br$read.from_to(
    sep = csv_sep
  ) |>
  na.omit() ->
  patterns

patterns

patterns |> br$is.from_to()

# - apply patterns to word list -------------------------------------------
words |>
  mutate(
    pt_br_fn_pat =
      br$replace.from_to(
        pt_br, patterns
      )
  ) -> words