\name{BCDating-package}
\alias{BCDating-package}
\alias{BCDating}
\docType{package}
\title{
Business Cycle Dating and Plotting Tools
}
\description{
This package implements the Harding and Pagan algorithm that creates a quarterly dating from a univariate time series. Procedures for printing and plotting appropriate graphs are provided. Also the dating for business cycles of the economy of Iran (by MBRI, CBI) is provided.}
\details{
\tabular{ll}{
Package: \tab BCDating\cr
Type: \tab Package\cr
Version: \tab 0.9.8\cr
Date: \tab 2019-01-06\cr
License: \tab GPL-2\cr
Depends: \tab methods\cr
}
}

\author{
Majid Einian,\email{m.einian@mbri.ac.ir}, \cr\href{http://www.mbri.ac.ir}{Monetary and Banking Research Institute}, \href{http://www.cbi.ir}{Central Bank of Islamic Republic of Iran}
}

\keyword{ package }
\seealso{
 \code{\link[BCDating:BBQ]{BBQ}},
 \code{\link[BCDating:BCDating-class]{BCDating Class}},
 \code{\link[BCDating:avgts]{avgts}}
}
\examples{
library(BCDating)
data("Iran.non.Oil.GDP.Cycle")
dat <- BBQ(Iran.non.Oil.GDP.Cycle, name="Dating Business Cycles of Iran")
show(dat)
summary(dat)
plot(dat)
plot(dat,Iran.non.Oil.GDP.Cycle)

data("MBRI.Iran.Dating")
plot(MBRI.Iran.Dating)
}