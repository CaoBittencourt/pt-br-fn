# imports -----------------------------------------------------------------
# box::use(
#
# )

# from_to data type -------------------------------------------------------------------------
# as from to
as.from_to <- function(df) {
  # assert args
  stopifnot(
    "'df' must be a data frame with 'from' and 'to' character columns." = all(
      is.data.frame(df)
      , c('from', 'to') %in% names(df)
      , df$from |> is.character()
      , df$to |> is.character()
    )
  )

  # data frame
  # has from, to columns
  # from, to columns are strings

  # add from_to subtype to data frame

  # output
}

# is from to
is.from_to <- function(x) {
  return(any("from_to" == class(x)))
}

# read from_to ------------------------------------------------------------
# read from to
read.from_to <- function(path) {
  # assert args

  # read from_to as csv

  # apply as.from_to function

  # output
}

# replace with from_to ----------------------------------------------------
# replace from to
replace.from_to <- function(x, from_to = NULL) {
  # assert args
  # from_to NULL
  # or from_to data frame subtype
  # or is convertible to from_to data frame subtype

  # substitute all patterns in the from_to data frame, if provided
  if (is.from_to(from_to)) {

  }

  # output
  return(text)
}

# exports ------------------------------------------------------------------
box::export(
  as.from_to
  ,is.from_to
  ,read.from_to
  ,replace.from_to
)