# imports -----------------------------------------------------------------
# set modules path
options(box.path = box::file('..'))

# import translation module
box::use(
  br = translate/init
  , dplyr[...]
)

# mock data ---------------------------------------------------------------
data.frame(
  from = letters[1:19]
  , to = letters[1:19]
) |>
  mutate(
    to = ifelse(
      row_number() >= 3 &
        row_number() <= 7
      , toupper(to)
      , to
    )
  ) -> valid_from_to

data.frame(
  dsds = letters
  , ds = LETTERS
) -> invalid_from_to

patterns_csv <- box::file('../../lang/patterns.csv')
patterns_sep <- '|'

# [test] as from_to data type -------------------------------------------------------------------------
valid_from_to |>
  br$as.from_to() ->
  valid_from_to

invalid_from_to |>
  br$as.from_to()

# [test] is from_to data type -------------------------------------------------------------------------
valid_from_to |>
  br$is.from_to()

# [test] read from_to ------------------------------------------------------------
br$read.from_to(
  path = patterns_csv
  ,sep = patterns_sep
)

# [test] replace with from_to ----------------------------------------------------
letters |>
  br$replace.from_to(
    valid_from_to
  )
