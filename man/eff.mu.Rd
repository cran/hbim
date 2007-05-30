\name{eff.mu}
\alias{eff.mu}
\alias{eff.sigma}
\alias{eff.rho}
\alias{pp.sigma}
\alias{pp.mu}
\alias{pp.rho}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Create data sets for plots}
\description{
These functions create the data sets used in the plots. The first part of the name denotes the 
output created. Thus, \code{eff.sigma}, \code{eff.mu}, \code{eff.rho} create efficacy values, while 
\code{pp.sigma}, \code{pp.mu}, \code{pp.rho}  create percent protected values. The second part of the 
name is the parameter which is changed. For example, \code{eff.sigma} creates efficacy values for different 
values of sigma. See details for a more complete  description. Default for eff. functions is integration, default
for pp. functions is simulation.
}
\usage{
eff.sigma(mu, sigmas, COLORS = c("red", "green", "blue"), rho = 0, ...)
eff.mu(mu, factor = c(1/10, 1/3, 1/2, 1), COLORS = c("red", "green", "blue", "black"), sigma = 0.553, rho = 0, ...)
eff.rho(mu, sigma = 0.553, rho = c(0, 0.25, 0.5, 0.75, 1), COLORS = c("black", "blue", "green", "red", "black"), ...)
pp.sigma(mu, sigmas, COLORS = c("red", "green", "blue"), rho = 0, nsim = 10^5)
pp.mu(mu, factor = c(1/10,1/3,1/2,1), COLORS = c("red", "green", "blue", "black"), sigma =0.553, rho = 0, nsim = 10^5)
pp.rho(mu, sigma = 0.553, rho = c(0, 0.25, 0.5, 0.75, 1), COLORS = c("black", "blue", "green", "red", "black"), nsim = 10^5)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{mu}{a vector of values of the mean of the log10 antibody}
  \item{factor}{a vector of values for defining the means of the second and third component (see details and warnings)}
  \item{COLORS}{colors for the plots, the ith color corresponds to the ith value of the parameter which is changing}
  \item{sigmas}{a vector of values of the standard deviation of the log10 antibody}
  \item{sigma}{a single value for sigma}
  \item{rho}{correlation vector (of length one for .sigma and .mu functions) of the log10 antibody, negative values not allowed}
  \item{nsim}{number of simulations for hbpp function}
  \item{\dots}{additional parameters may be added to the \code{\link{hbrr}} function}
}
\details{
For \code{eff.sigma} and \code{pp.sigma} we change sigma over the one, two, and three component model. 
For \code{eff.mu} and \code{pp.mu} we change the mean over the two and three component model. For \code{eff.mu}
and \code{pp.mu}
the factor parameter is associated with each level of the second and third component.
See \code{vignette("hbimdetails")} for details. 
For \code{eff.rho} and \code{pp.rho}  we change the correlation over the two and three component model; for the jth column of the 
out2 and out3 matrices, all correlations are given by jth level of factor. Because these calculations may take 
hours, we save the original calculations used in the paper as output data, 
\code{\link{deff.sigma}},  
\code{\link{deff.mu}},  
\code{\link{deff.rho}}, 
\code{\link{dpp.sigma}},  
\code{\link{dpp.mu}}, and  
\code{\link{dpp.rho}}. These output data set may be accessed by the command data(). For example, to access 
 \code{\link{deff.sigma}} type \code{data(deff.sigma)}. 
}
\value{
A list with items
  \item{out1}{response matrix for one component model, ith row corresponds to mu[i] and jth column corresponds to the jth level of the parameter which is changing}
  \item{col1}{colors corresponding to columns of out1}
  \item{out2}{response matrix for two component model, ith row corresponds to mu[i] and jth column corresponds to the jth level of the parameter which is changing}
  \item{col2}{colors corresponding to columns of out2}
  \item{out3}{response matrix for three component model, ith row corresponds to mu[i] and jth column corresponds to the jth level of the parameter which is changing}
  \item{col3}{colors corresponding to columns of out3}
  \item{cparms}{input vector of parameter that changes, e.g., factor vector}
  \item{sigma}{input sigma}
  \item{rho}{input rho}
}
%\references{ ~put references to the literature/web site here ~ }
\author{M.P. Fay}
%\note{ ~~further notes~~  ~Make other sections like Warning with \section{Warning }{....} ~}
\section{Warning}{Note to save computation time these functions do not check that all variance-covariance matrices used 
in the internal fucntions are positive definite. If you get an error message you do not understand check to see if the variance-covariance matrix is 
positive definite by checking the eigen values. For example, with sigma=1, rho=-.6, the 3 components model do not have a positive definite variance-covariance
matrix because there is a negative eigenvalue 
(to see this run \code{eigen(make.v(3,-.6,1)) }). 
}
\seealso{ \code{vignette("hbimdetails")} }
%\examples{
\keyword{datagen}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line