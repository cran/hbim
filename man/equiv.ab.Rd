\name{equiv.ab}
\alias{equiv.ab}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Equivalent antibody calculations by Linear Interpolation}
\description{
This function inputs two antibody by response curves and outputs values needed for 
plots of equivalent antibody response.  
This is called by other functions (\code{\link{plotresp.equiv}}, \code{\link{plotresp.mix}}). 
It is not to be called directly. For that purpose use \code{\link{equiv.increase}}.
}
\usage{
equiv.ab(effab1, ab1, effab2, ab2, npts = 100)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{effab1}{vector of responses for antibody 1}
  \item{ab1}{vector of doses of antibody 1}
  \item{effab2}{vector of responses for antibody 2}
  \item{ab2}{vector of doses of antibody 2}
  \item{npts}{number of points used in some output}
}
\details{
The function uses the \code{\link{approx}} function to do linear interpolation and find the needed 
values. 
}
\value{
A list containing:
  \item{abpts}{a vector of values of antibody dose}
  \item{abpts10}{antilog of abpts, i.e., abpts raised to tenth power}
  \item{equiv.eff2}{equivalent response of antibody 2}
  \item{equiv.eff1}{equivalent response of antibody 1} 
  \item{equiv.ab1}{vector of antibody doses that correspond with equiv.eff1}
  \item{x}{equiv.ab1-abpts}
  \item{y}{equiv.eff1}
}
%\references{ ~put references to the literature/web site here ~ }
%\author{ ~~who you are~~ }
%\note{ This is called by other functions (\code{\link{plotresp.equiv}}, \code{\link{plotresp.mix}}). It is not to be called directly.}
%
% ~Make other sections like Warning with \section{Warning }{....} ~
%}
\seealso{ \code{\link{equiv.increase}} }
\keyword{misc}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
