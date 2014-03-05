\name{plotlogm.resp}
\alias{plotlogm.resp}
\alias{plotresp.equiv}
\alias{plotresp.mix}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot Hill/Bliss Independence Model Data.}
\description{
These functions take data output calculated from the data generating functions (see details)
and plot either: the mean of the log transformed antibody doses by the response (\code{plotlogm.resp}),
equivalent increase in antibody plots (\code{plotresp.equiv}), or  response 
of one component versus a mixture (for details see \code{vignette("hbimdetails")}).
}
\usage{
plotlogm.resp(D, YLAB = "Efficacy", YLIM = c(0, 1), 
    XLIM = c(-2, 2),TITLE="")
plotresp.equiv(D, XLIM = c(0, 1), YLIM = c(1, 100), 
    RLAB = "Efficacy of", bounds= XLIM,TITLE="")
plotresp.mix(D, RLAB = "Efficacy of", XYLIM = c(0, 1),TITLE="")
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{D}{data, see details}
  \item{YLAB}{y label}
  \item{YLIM}{range of y axis}
  \item{XLIM}{range of x axis}
  \item{RLAB}{response label, currently use only either "Efficacy of" or "\% Protected by"}
  \item{bounds}{bounds on response of second antibody curve, see \code{vignette("hbimdetails")} }
  \item{XYLIM}{range of both x and y axes}
  \item{TITLE}{title of plot}
}
\details{
The following functions create data sets for plotting: 
\code{\link{eff.sigma}},
\code{\link{eff.mu}},
\code{\link{eff.rho}},
\code{\link{pp.sigma}},
\code{\link{pp.mu}},
\code{\link{pp.rho}}.
These functions plot that data. For details see \code{vignette("hbimdetails")}.
}
\value{
Plots
}
%\references{ ~put references to the literature/web site here ~ }
%\author{ ~~who you are~~ }
%\note{ ~~further notes~~ 
%
% ~Make other sections like Warning with \section{Warning }{....} ~
%}
%\seealso{ ~~objects to See Also as \code{\link{help}}, ~~~ }
%\examples{ }
\keyword{hplot}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
