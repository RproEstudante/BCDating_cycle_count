\name{avgts}
\alias{avgts}
\title{
TimeSeries averages over cycle phases.
}
\description{
This function returns the averages of the input time series over each of 
phases in the Dating. It omits the NA's in the time series, so will give an error with internal NA's.
}
\usage{
avgts(ts,Dating) 
}
\arguments{
  \item{ts}{
  The input time series.
  }
  \item{Dating}{
  The dating.
  }
}

\value{
A ts timeseries.
}

\author{
Majid Einian,\email{einian85@gmail.com}, \cr\href{http://www.mbri.ac.ir}{Monetary and Banking Research Institute}, \href{http://cbi.ir/default_en.aspx}{Central Bank of Islamic Republic of Iran}
}

\examples{
data("Iran.non.Oil.GDP.Quarterly.Growth")
data("MBRI.Iran.Dating")
avggrowth <- avgts(Iran.non.Oil.GDP.Quarterly.Growth,MBRI.Iran.Dating)
cbind(avggrowth,Iran.non.Oil.GDP.Quarterly.Growth)
plot(MBRI.Iran.Dating,avggrowth)
plot(MBRI.Iran.Dating,Iran.non.Oil.GDP.Quarterly.Growth,averages=TRUE)









}
\keyword{Averages over Cycle Phases}