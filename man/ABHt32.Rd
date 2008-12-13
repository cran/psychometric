\name{ABHt32}
\alias{ABHt32}
\docType{data}
\title{Table 3.2 from Arthur et al}
\description{
  These data are used as an example in ch. 3 of Conducting Meta-Analysis using SAS.
  The data appear in table 3.1 and 3.2 on pages 66 and 68. The example data are 
  useful in illustrating simple meta-analysis concepts.
  }
\usage{data(ABHt32)}
\format{
  A data frame with 10 observations on the following 7 variables.
    \item{\code{study}}{ Study code} 
    \item{\code{Rxy}}{ Published Correlation}
    \item{\code{n}}{ Sample Size}
    \item{\code{Rxx}}{ Reliability of Predictor}
    \item{\code{Ryy}}{ Reliability of Criterion}
    \item{\code{u}}{ Range Restriction Ratio}
    \item{\code{moderator}}{ Gender}
  } 

\references{
  Arthur, Jr., W., Bennett, Jr., W., and Huffcutt, A. I. (2001) 
  \emph{Conducting Meta-analysis using SAS.}
  Mahwah, NJ: Erlbaum.
  }
\examples{
data(ABHt32)
str(ABHt32) 
rbar(ABHt32)
FunnelPlot(ABHt32) 
}
\keyword{datasets}
