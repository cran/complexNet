% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/make_bnr.R
\name{make_bnr}
\alias{make_bnr}
\alias{make_bnr,numeric,numeric,numeric,numeric,numeric-method}
\alias{make_bnr,numeric,numeric,missing,numeric,numeric-method}
\title{Generating a Pb, Pn, Pr network}
\usage{
make_bnr(n, np, pb, pn, pr)

\S4method{make_bnr}{numeric,numeric,numeric,numeric,numeric}(n, np, pb, pn, pr)

\S4method{make_bnr}{numeric,numeric,missing,numeric,numeric}(n, np, pb, pn, pr)
}
\arguments{
\item{n}{Number of vertices (population size)}

\item{np}{numeric vector setting ids for the newborn (i.e. which individual will be replaced with a new one) and a parent(s). Length 2 or 3. If you want to randomly select an id for the newborn (first value) and parents (second and third value), simply use c(0,0) or c(0,0,0).}

\item{pb}{Probability to connect to parent (default is 1)}

\item{pn}{Probability to connect to neighbour of parent(s)}

\item{pr}{Probability to connect to individuals that are not connected to the parent}
}
\value{
Returns an unweighted (binary) adjacency matrix, where each cell represents the presence (1) or absence (0) of an interaction between the row and the column individual.
}
\description{
This function takes adj.matrix (ADJM), probabilities to connect to parent(s), neighbours, and randoms (PB, PN, PR), the index of the parent (if NULL, default, NPARENT number of individuals are randomly chosen as parent), number of parents (NPARENT, default is 1).
}
\details{
It is important to note that, although all three parameters (PB, PN, PR) are probabilities, i.e. values between 0 and 1, the same value (say 0.2) means something different for each of them. This is because, PB is the probability to connect to the parent(s), i.e. 1 or two individuals. In contrast, PN and PR are the probabilities to connect to neighbours of the parent(s) or to random other individuals. In the case of a small social neighbourhood of the parent(s) a PR of 0.2 would mean to connect to a large amount of individuals in the remaining network. Therefore, it is important to keep in mind that the value of both (or all three) values is important and not the individual one in isolation.
}
\examples{
make_bnr(n = 10, np = c(0,0), pb = 1, pn = .2, pr = .01)
}
