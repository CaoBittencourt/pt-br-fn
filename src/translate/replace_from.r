# SETUP -------------------------------------------------------------------
# - imports -----------------------------------------------------------------
box::use(
  stringr[str_replace_all]
  ,vctrs[new_data_frame]
  ,mgsub[mgsub]
  ,utils[read.csv]
  ,tibble[as_tibble]
)

# FUNCTIONS ---------------------------------------------------------------
# - as from_to data type -------------------------------------------------------------------------
as.from_to <- function(df) {

  # assert args
  stopifnot(
    "'df' must be a data frame with 'from' and 'to' character columns." = all(
      is.data.frame(df)
      , c('from', 'to') %in% names(df)
    )
  )

  stopifnot(
    "'df' must be a data frame with 'from' and 'to' character columns." = all(
      df$from |> is.character()
      , df$to |> is.character()
    )
  )

  # add from_to subtype to data frame
  return(new_data_frame(df, class = c(class(df), 'from_to')))

}

# - is from_to data type -------------------------------------------------------------------------
is.from_to <- function(x) {return(any("from_to" == class(x)))}

# - read from_to ------------------------------------------------------------
read.from_to <- function(path, sep = ',') {

  # assert args
  stopifnot("'path' must be a valid file path to a from-to data frame in csv format." = is.character(path))
  stopifnot("'sep' must be a character string." = is.character(sep))

  # attempt to read from_to as csv apply as.from_to function
  tryCatch({
    read.csv(
      file = path
      ,sep = sep[[1]]
    ) |>
      as_tibble() |>
      as.from_to()
  }
  , error = function(e){

    message(paste0("Could not read from-to data frame from ", path, '.'))
    message(conditionMessage(e))

    return(NULL)

  }
  )
}

# - replace with from_to ----------------------------------------------------
replace.from_to <- function(x, from_to = NULL) {

  # assert args
  stopifnot("'x' must be a character vector." = is.character(x))

  stopifnot(
    "'from_to' must be either NULL or a 'from_to' data frame." = any(
      is.from_to(from_to)
      , is.null(from_to)
    )
  )

  # substitute all patterns in the from_to data frame, if provided
  if (is.from_to(from_to)) {

    x |>
      mgsub(
        from_to$from
        , from_to$to
      ) -> text

  }

  # output
  return(text)

}

# MODULE ------------------------------------------------------------------
# - exports ------------------------------------------------------------------
box::export(
  as.from_to
  ,is.from_to
  ,read.from_to
  ,replace.from_to
)