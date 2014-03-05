\name{deff.sigma}
\alias{deff.sigma}
\alias{deff.mu}
\alias{deff.rho}
\alias{dpp.mu}
\alias{dpp.sigma}
\alias{dpp.rho}
\docType{data}
\title{HBIM data}
\description{
These 6 data sets were calculated using the associated function. For example, \code{deff.sigma} was calculated with 
\code{\link{eff.sigma}}. The 3 data sets that begin with deff, give the expected efficacy for several values of mu. 
The 3 data sets that begin with dpp give the percent protected with several values of mu. The data sets that end in .sigma change 
for different values of sigma, and similarly for .mu and .rho (see \code{\link{deff.sigma}}). 
}
\usage{
data(deff.sigma)
data(deff.mu)
data(deff.rho)
data(dpp.sigma)
data(dpp.mu)
data(dpp.rho)
}
\format{
  The format is:
List of 8
\itemize{
\item{mu}{ vector of different values of mean for log10 antibody}
\item{out1}{matrix of either expected efficacy or percent protected for 1 component model, rows corespond to mu, cols correspond to cparms}
\item{out2}{matrix of either expected efficacy or percent protected for 2 component model, rows corespond to mu, cols correspond to cparms}
\item{out3}{matrix of either expected efficacy or percent protected for 3 component model, rows corespond to mu, cols correspond to cparms}
\item{col1}{vector of colors for different cparms of 1 component model}
\item{col2}{vector of colors for different cparms of 2 component model}
\item{col3}{vector of colors for different cparms of 3 component model}
\item{cparms}{vector parameters that change}
}
}
%\details{}
%\source{ ~~ reference to a publication or URL from which the data were obtained ~~}
%\references{ ~~ possibly secondary sources and usages ~~}
\examples{
## here is the code that produces the 6 data sets, it takes about 25 hours to run
## so it is commented out here
#NSIM<-5*10^5
#SIGMAS.POWER<-c(9,65,5000)
#SIGMAS<-log10(SIGMAS.POWER)/(2*qnorm(.975))
#SCOLORS<-c("green","blue","red")
#FACTORS<-c(1/10, 1/3, 1/2, 1)
#FCOLORS<-c("red", "green", "blue", "black")
#RHOS<-c(-.5,-.25,0, 0.25, 0.5, 0.75, 1)
#RCOLORS<- c("black","tan","yellow","blue", "green", "red", "black")
#set.seed(1234521)
#MU<-((-40:40)/10)
#deff.sigma<-eff.sigma(mu=MU, sigmas=SIGMAS, COLORS = SCOLORS, rho = 0)
#deff.mu<-eff.mu(mu=MU, factor = FACTORS, COLORS = FCOLORS, sigma = SIGMAS[2], rho = 0)
#deff.rho<-eff.rho(mu=MU, sigma = SIGMAS[2], rho = RHOS, COLORS =RCOLORS,simulate=TRUE,nsim=NSIM)
#set.seed(32401)
#dpp.sigma<-pp.sigma(MU,sigmas=SIGMAS,COLORS = SCOLORS, rho = 0,nsim=NSIM)
#set.seed(21345123)
#dpp.mu<-pp.mu(MU,factor = FACTORS, COLORS = FCOLORS, sigma = SIGMAS[2], rho = 0, nsim=NSIM)
#set.seed(435919)
#dpp.rho<-pp.rho(MU,sigma = SIGMAS[2], rho = RHOS, COLORS =RCOLORS,nsim=NSIM)
}
\keyword{datasets}
