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
  \itemize{
    \item \emph{study} Study code
    \item \emph{Rxy} Published Correlation
    \item \emph{n} Sample Size
    \item \emph{Rxx} Reliability of Predictor
    \item \emph{Ryy} Reliability of Criterion
    \item \emph{u} Range Restriction Ratio
    \item \emph{moderator} Gender
  }} 

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
