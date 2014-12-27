\name{plot-methods}
\docType{methods}
\alias{plot,BCDating,missing-method}
\alias{plot,BCDating,ts-method}
\alias{plot,ts,BCDating-method}
\alias{plot,BCDating,list-method}
\alias{plot,list,BCDating-method}
\alias{plot,BCDating,BCDating-method}
\alias{plot,list,missing-method}
\title{ Plotting BCDating Objects, and Plotting Time-Series on BCDating Plot Background}
\description{Methods for function \code{plot}. Some arguments are not applicable to all methods, but most are common.}
\arguments{
  \item{dates}{If \code{TRUE}, plots the dates of peaks and troughs on the plot. \emph{default=FALSE}}
  \item{yearrep}{Number of digits a year is represented if dates are plotted (i.e. \code{dates =  TRUE}), eg. \code{yearrep = 2} plots dates like 72:3, and \code{yearrep = 4} plots dates like 1372:3. \emph{default = 2}}
  \item{col.bg}{Background Color of Dating plot (i.e. the color for periods with unknown cycle state). \emph{default=gery(0.8)}}
  \item{col.exp}{Color for Expansions. \emph{default=grey(1)}}
  \item{col.rec}{Color for Recessions. \emph{default=grey(0.45)}}
  \item{main}{Main Title of the Plot, if not provided, the name of the Dating will be used. \emph{default=""}}
  \item{xlab}{Label of the X axis. \emph{default=""}}
  \item{ylab}{Label of the Y axis. \emph{default=""}}
  \item{lwd}{The line Width. \emph{default=2}}
  \item{cex}{Relative magnification factor. \emph{default=0.5}}
  \item{vert}{A vector of dates in which vertical lines should be plotted. \emph{default=NULL}}
  \item{col.vert}{Color of added vertical lines. \emph{default="darkblue"}}
  \item{windos}{If \code{TRUE}, plots the time series in the time horizon where the Dating is available, else plots the entire time series. \emph{default=FALSE}}
  \item{averages}{If \code{TRUE}, plots the averages of times series in each cycle phases. This can be either a vector with the length equal to number of time series in mts object, or just a single value, which would be used for all time series. \emph{default=FALSE}}
  \item{col}{Color of each of the time series plotted. This can be either a vector with the length equal to number of time series in mts object, or just a single value, which would be used for all time series. \emph{default="red"}}
}
\section{Methods}{
\describe{
\item{\code{signature(x = "BCDating", y = "missing")}}{Plots a BCDating.}
\item{\code{signature(x = "BCDating", y = "ts")}}{Plot a Time-Series, (or multiple time serires in case y's class is mts) on a BCDating.}
\item{\code{signature(x = "ts", y = "BCDating")}}{Plot a Time-Series, (or multiple time serires in case y's class is mts) on a BCDating.}
\item{\code{signature(x = "BCDating", y = "BCDating")}}{Plots 2 BCDatings, so you can compare them.}
\item{\code{signature(x = "list", y = "missing")}}{Plots a list of BCDating Objects, so you can compare them.}
}}



\author{
Majid Einian,\email{m.einian@mbri.ac.ir}, \cr\href{http://www.mbri.ac.ir}{Monetary and Banking Research Institute}, \href{http://www.cbi.ir}{Central Bank of Islamic Republic of Iran}

\href{http://arnaud.ensae.net}{Franck Arnaud },
\cr \href{http://www.insee.fr/en/}{National Institute of Statistics and Economic Studies (INSEE), France}
}
\examples{
library(BCDating)
data("MBRI.Iran.Dating")
plot(MBRI.Iran.Dating)
plot(MBRI.Iran.Dating,dates=TRUE)

data("Iran.non.Oil.GDP.Cycle")
plot(MBRI.Iran.Dating,Iran.non.Oil.GDP.Cycle)
plot(Iran.non.Oil.GDP.Cycle,MBRI.Iran.Dating)

data("Iran.non.Oil.GDP.Quarterly.Growth")
plot(MBRI.Iran.Dating,Iran.non.Oil.GDP.Quarterly.Growth,averages=TRUE)
plot(MBRI.Iran.Dating,cbind(Iran.non.Oil.GDP.Cycle*100,Iran.non.Oil.GDP.Quarterly.Growth))

dat <- BBQ(Iran.non.Oil.GDP.Cycle, name="Dating Business Cycles of Iran")
plot(dat,MBRI.Iran.Dating)
plot(list(dat,MBRI.Iran.Dating))
}
