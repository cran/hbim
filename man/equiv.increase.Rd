\name{equiv.increase}
\alias{equiv.increase}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculate equivalent increase from two dose-response curves}
\description{
This function takes two curves defined by vectors of x and y values and 
calculates the equivalent increase in the x value at the response value for the 
first curve at e1. }
\usage{
equiv.increase(x1, y1, x2, y2, e1, xlog = TRUE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x1}{x vector for first curve}
  \item{y1}{y vector for first curve}
  \item{x2}{x vector for second curve}
  \item{y2}{y vector for second curve}
  \item{e1}{vector of y responses of first curve for associating with output}
  \item{xlog}{TRUE if x values are log transformed, changes the output}
}
\details{
The function repeatedly uses the \code{\link{approx}} function to do linear interpolation. 
}
\value{
A list with 5 components
  \item{a1}{vector of x values associated with e1 from first curve}
  \item{e2}{vector of y values associated with a1 from the second curve}
  \item{a2}{vector of x values associated with e2 from the second curve}
  \item{e1}{input vector for e1}
  \item{equiv.increase}{vector of equivalent increases associated with e1}
}
%\references{ ~put references to the literature/web site here ~ }
%\author{ ~~who you are~~ }
%\note{ ~~further notes~~ 
% ~Make other sections like Warning with \section{Warning }{....} ~
%}
%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
\examples{
data(deff.sigma)
D<-deff.sigma
equiv.increase(D$mu,D$out1[,2],D$mu,D$out2[,2],.5)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{arith}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
