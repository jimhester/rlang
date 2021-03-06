% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/attr.R
\name{is_named}
\alias{is_named}
\alias{is_dictionary}
\alias{have_names}
\title{Is object named?}
\usage{
is_named(x)

is_dictionary(x)

have_names(x)
}
\arguments{
\item{x}{An object to test.}
}
\value{
\code{is_named()} and \code{is_dictionary()} are scalar
  predicates and return \code{TRUE} or \code{FALSE}.
  \code{have_names()} is vectorised and returns a logical vector as
  long as the input.
}
\description{
\code{is_named()} checks that \code{x} has names attributes, and
that none of the names are missing or empty (\code{NA} or
\code{""}). \code{is_dictionary()} checks that an object is a
dictionary: that it has actual names and in addition that there are
no duplicated names. \code{have_names()} is a vectorised version of
\code{is_named()}.
}
\examples{
# A data frame usually has valid, unique names
is_named(mtcars)
have_names(mtcars)
is_dictionary(mtcars)

# But data frames can also have duplicated columns:
dups <- cbind(mtcars, cyl = seq_len(nrow(mtcars)))
is_dictionary(dups)

# The names are still valid:
is_named(dups)
have_names(dups)


# For empty objects the semantics are slightly different.
# is_dictionary() returns TRUE for empty objects:
is_dictionary(list())

# But is_named() will only return TRUE if there is a names
# attribute (a zero-length character vector in this case):
x <- set_names(list(), character(0))
is_named(x)


# Empty and missing names are invalid:
invalid <- dups
names(invalid)[2] <- ""
names(invalid)[5] <- NA

# is_named() performs a global check while have_names() can show you
# where the problem is:
is_named(invalid)
have_names(invalid)

# have_names() will work even with vectors that don't have a names
# attribute:
have_names(letters)
}
