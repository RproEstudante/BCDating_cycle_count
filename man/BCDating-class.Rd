\name{BCDating-class}
\Rdversion{1.1}
\docType{class}
\alias{BCDating-class}
\title{Class \code{"BCDating"}}
\description{
Class Designed for dating Business Cycles
}
\section{Objects from the Class}{
A BCDating is basically is a sequence of peaks and troughs. But it can also be represented as a discrete state process, with values such as -1 for recession and 1 for expansion phases. The BCDating class is designed to handle this kind of data: it can store, print and plot graphs of such data. 

Use BBQ to create object of BCDating type from Quarterly Data.
}
\section{Slots}{
  \describe{
    \item{\code{name}:}{Object of class \code{"character"} The name of the Dating }
    \item{\code{states}:}{Object of class \code{"ts"} States of the Dating (-1 for recession and 1 for expansion phases) }
    \item{\code{peaks}:}{Object of class \code{"numeric"} Indices of Peaks }
    \item{\code{troughs}:}{Object of class \code{"numeric"} Indices of Throughs }
    \item{\code{y}:}{Object of class \code{"ts"} The Refernce Time Series (e.g. the GDP Cycle) }
    \item{\code{param}:}{Object of class \code{"list"} Parameters of the Dating (i.e. min phase and min cycle) }
    \item{\code{type}:}{Object of class \code{"character"} Dating Type }
  }
}
\section{Methods}{
\code{\link[BCDating:plot,BCDating,missing-method]{plot,BCDating,missing-method}}, 

\code{\link[BCDating:plot,BCDating,ts-method]{plot,BCDating,ts-method}},
\code{\link[BCDating:plot,ts,BCDating-method]{plot,ts,BCDating-method}},


\code{\link[BCDating:plot,BCDating,BCDating-method]{plot,BCDating,BCDating-method}},
\code{\link[BCDating:plot,list,missing-method]{plot,list,missing-method}}
}
\references{
Franck Arnaud's R package datation}
\author{
Majid Einian,\email{einian85@gmail.com}, \cr\href{http://www.mbri.ac.ir}{Monetary and Banking Research Institute}, \href{http://www.cbi.ir}{Central Bank of Islamic Republic of Iran}

\href{http://arnaud.ensae.net}{Franck Arnaud },
\cr \href{http://www.insee.fr/en/}{National Institute of Statistics and Economic Studies (INSEE), France}
}

\keyword{classes}
