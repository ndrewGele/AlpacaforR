% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tsymble.R
\name{as_tsymble}
\alias{as_tsymble}
\title{Construct a tsybble}
\usage{
as_tsymble(
  x,
  index,
  symbol = get_sym(x),
  query = get_query(x),
  validate = TRUE,
  ...
)
}
\arguments{
\item{x}{Other objects to be coerced to a tsibble (\code{tbl_ts}).}

\item{index}{\code{(character)} index column name}

\item{symbol}{\code{(character)} Ticker symbol}

\item{query}{\code{(list)} Query metadata}

\item{validate}{\code{TRUE} suggests to verify that each key or each combination
of key variables leads to unique time indices (i.e. a valid tsibble). If you
are sure that it's a valid input, specify \code{FALSE} to skip the checks.}

\item{...}{
  Arguments passed on to \code{\link[tsibble:build_tsibble]{tsibble::build_tsibble}}
  \describe{
    \item{\code{key}}{Unquoted variable(s) that uniquely determine time indices. \code{NULL} for
empty key, and \code{c()} for multiple variables. It works with tidy selector
(e.g. \code{\link[dplyr:reexports]{dplyr::starts_with()}}).}
    \item{\code{key_data}}{A data frame containing key variables and \code{.rows}. When a data
frame is supplied, the argument \code{key} will be ignored.}
    \item{\code{index2}}{A candidate of \code{index} to update the index to a new one when
\link[tsibble]{index_by}. By default, it's identical to \code{index}.}
    \item{\code{ordered}}{The default of \code{NULL} arranges the key variable(s) first and
then index from past to future. \code{TRUE} suggests to skip the ordering as \code{x} in
the correct order. \code{FALSE} checks the ordering and may give a warning.}
    \item{\code{interval}}{\code{TRUE} automatically calculates the interval, and \code{FALSE} for
irregular interval. Use the specified interval via \code{\link[tsibble:new-interval]{new_interval()}} as is.}
    \item{\code{.drop}}{If \code{TRUE}, empty key groups are dropped.}
  }}
}
\description{
\lifecycle{experimental}
Constructs a \code{tsymble}. A \code{\link[tsibble]{tsibble}} with ticker symbol, and query metadata attributes.
}
