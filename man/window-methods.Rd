\name{window-methods}
\docType{methods}
\alias{window-methods}
\alias{window,BCDating-method}
\title{Extracting a window of A BCDating}
\description{Methods for function \code{window}}
\section{Methods}{
\describe{
\item{\code{signature(x = "BCDating")}}{
Sometimes you need to know the state of economics in just a period of time. Using Window, you can obtain a new BCDating object limited to the time period mentioned. See examples.
}
}}
\author{
Majid Einian,\email{einian85@gmail.com}, \cr\href{http://www.mbri.ac.ir}{Monetary and Banking Research Institute}, \href{http://www.cbi.ir}{Central Bank of Islamic Republic of Iran}
}
\keyword{methods}
\examples{
library(BCDating)
data(MBRI.Iran.Dating)
MBRI.Iran.Dating
window(MBRI.Iran.Dating,start=c(1368,2),end=c(1376,1)) # 5th and 6th Gov's of IRI
}
