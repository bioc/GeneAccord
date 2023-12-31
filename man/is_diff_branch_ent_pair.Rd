% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_handling_functions.R
\name{is_diff_branch_ent_pair}
\alias{is_diff_branch_ent_pair}
\title{Check whether pair is in different branches/clones.}
\usage{
is_diff_branch_ent_pair(ent1, ent2, clone_tbl)
}
\arguments{
\item{ent1}{One mutated gene/pathway from the pair.}

\item{ent2}{The other mutated gene/pathway from the pair.}

\item{clone_tbl}{A tibble containing the columns 
'altered_entity', and then a column for each clone
in the tumor, e.g. 'clone1', 'clone2', 'clone3'. This tibble 
can be generated e.g. from the \code{Cloe} output.}
}
\value{
\code{TRUE} or \code{FALSE} for whether or not the 
pair is mutated in different clones/in different
branches of the tree.
}
\description{
Check whether a given pair of mutated genes/pathways is in 
different branches/clones.
}
\details{
Given two mutated genes or pathways and the clone tibble as 
described in \code{\link{get_rate_diff_branch_ent_pair}}, 
this function returns \code{TRUE} or \code{FALSE} for whether 
the pair is mutated in different branches/clones.
}
\examples{
clone_tbl <- dplyr::tibble(
    altered_entity=c(paste("gene", seq_len(10), sep="")),
    clone1=c(rep(0,10)),
    clone2=c(sample(c(0,1), 10, replace=TRUE)),
    clone3=c(sample(c(0,1), 10, replace=TRUE)),
    clone4=c(sample(c(0,1), 10, replace=TRUE)))
is_diff_branch_ent_pair("gene1", "gene2", clone_tbl)
}
\author{
Ariane L. Moore
}
