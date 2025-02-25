% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/dplyr-verbs.R
\name{transmute.tsymble_ts}
\alias{transmute.tsymble_ts}
\title{transmute.tsymble_ts}
\usage{
\method{transmute}{tsymble_ts}(.data, ...)
}
\arguments{
\item{.data}{A data frame, data frame extension (e.g. a tibble), or a
lazy data frame (e.g. from dbplyr or dtplyr). See \emph{Methods}, below, for
more details.}

\item{...}{<\code{\link[dplyr:dplyr_data_masking]{data-masking}}> Name-value pairs.
The name gives the name of the column in the output.

The value can be:
\itemize{
\item A vector of length 1, which will be recycled to the correct length.
\item A vector the same length as the current group (or the whole data frame
if ungrouped).
\item \code{NULL}, to remove the column.
\item A data frame or tibble, to create multiple columns in the output.
}}
}
\value{
An object of the same type as \code{.data}. The output has the following
properties:
\itemize{
\item Rows are not affected.
\item Existing columns will be preserved according to the \code{.keep} argument.
New columns will be placed according to the \code{.before} and \code{.after}
arguments. If \code{.keep = "none"} (as in \code{transmute()}), the output order
is determined only by \code{...}, not the order of existing columns.
\item Columns given value \code{NULL} will be removed
\item Groups will be recomputed if a grouping variable is mutated.
\item Data frame attributes are preserved.
}
}
\description{
An S3 method for transmuting a \code{tsymble_ts} object
}
