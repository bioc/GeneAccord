% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{ecdf_list}
\alias{ecdf_list}
\title{The list with the ECDF's of the test statistic under the null 
hypothesis}
\format{A list whose entries are the empirical cumulative 
distribution functions. Entry 1 is set to NULL, because
GeneAccord does not test pairs that occur in just one patient. 
Entry 2 then contains the ECDF of the test statistic
under the null hypothesis for the case that pairs are mutated 
in two patients. Entry 3 contains the ECDF for the case
where pairs occur in three patients.}
\source{
The list was generated with the function 
\code{\link{generate_ecdf_test_stat}} as demonstrated in 
the vignette, just
that the following parameter was set as 
\code{num_pairs_sim = 100000}.
}
\usage{
ecdf_list
}
\description{
This is a list whose entries are the empirical cumulative 
distribution functions for different
number of patients that pairs can be mutated in.
}
\keyword{datasets}
