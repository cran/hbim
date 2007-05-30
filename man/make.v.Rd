\name{make.v}
\alias{make.v}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Make Exchangeable Variance Matrix}
\description{
Not to be called directly. Used by \code{\link{eff.sigma}},
\code{\link{eff.mu}},
\code{\link{eff.rho}},
\code{\link{pp.sigma}},
\code{\link{pp.mu}}, and 
\code{\link{pp.rho}}.
}
\usage{
make.v(n, r, sig2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{dimension of variance matrix}
  \item{r}{correlation}
  \item{sig2}{variance}
}
%\details{}
\value{
An variance-covariance matrix, with all diagonal elements equal and all off diagonal elements equal.
}
%\references{ ~put references to the literature/web site here ~ }
%\author{ ~~who you are~~ }
%\note{ ~~further notes~~ 
%
% ~Make other sections like Warning with \section{Warning }{....} ~
%}
%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
%\examples{
\keyword{misc}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
