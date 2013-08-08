\name{BBQ}
\alias{BBQ}
\title{
Harding-Pagan (Quarterly Bry-Boschan) Business Cycle Dating Procedure
}
\description{
This function implements the Harding and Pagan algorithm that creates a quarterly dating from a univariate time series. 
}
\usage{
BBQ(y, mincycle = 5, minphase = 2, name = "")
}

\arguments{
  \item{y}{The input time series.}
  \item{mincycle}{Minimum length of a cycle. \emph{default=5}}
  \item{minphase}{ Minimum length of a phase of a cycle.\emph{default=2}}
  \item{name}{ The name of the series or dating.}
  }
  
  
\details{See Reference paper.}

\value{An object of class "BCDating". You can use show(), summary(), window(), and plot() on it.}
\references{
Harding, D. and Pagan A. 2002 "Dissecting the Cycle: A Methodological Investigation." \emph{Journal of Monetary Economics} \bold{49} (2), 365--381. \url{http://www.sciencedirect.com/science/article/pii/S0304393201001088}.
}
\author{
Majid Einian,\email{einian85@gmail.com}, 
\cr\href{http://www.mbri.ac.ir}{Monetary and Banking Research Institute}, \href{http://www.cbi.ir}{Central Bank of Islamic Republic of Iran}

\href{http://arnaud.ensae.net}{Franck Arnaud },
\cr \href{http://www.insee.fr/en/}{National Institute of Statistics and Economic Studies (INSEE), France}
}

\examples{
data("Iran.non.Oil.GDP.Cycle")
dat <- BBQ(Iran.non.Oil.GDP.Cycle, name="Dating Business Cycles of Iran")
show(dat)
summary(dat)
plot(dat)
data(MBRI.Iran.Dating)
plot(dat,MBRI.Iran.Dating)
}
\keyword{Business Cycle Dating}
\keyword{Quarterly Bry-Boschan}
\keyword{Hardin-Pagan}
