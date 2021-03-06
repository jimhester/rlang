% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/env.R
\name{empty_env}
\alias{empty_env}
\title{Get the empty environment.}
\usage{
empty_env()
}
\description{
The empty environment is the only one that does not have a
parent. It is always used as the tail of a scope chain such as the
search path (see \code{\link{scoped_names}()}).
}
\examples{
# Create environments with nothing in scope (the default):
new_env(parent = empty_env())
}
