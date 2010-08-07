\name{HSJt35}
\alias{HSJt35}
\docType{data}
\title{ Table 3.5 Hunter et al.}
\description{
  This is a useful and fictious example for conducting Meta-Analysis. 
  It appeared in Hunter et al (1982)}
\usage{data(HSJt35)}
\format{
  A data frame with 8 observations on the following 7 variables.
  \itemize{
    \item \emph{study} Study code
    \item \emph{Rxy} Published correlation
    \item \emph{n} Sample size
    \item \emph{Rxx} Reliability of predictor
    \item \emph{Ryy} Reliability of criterion
    \item \emph{u} Range Restriction Ratio
    \item \emph{moderator} none <na> 
  }} 

\details{
This example has been replicated a number of times (e.g., Hunter & Schmidt, 2004). 
It is useful in illustrating the basic concepts of validity generalization. 
The data can be used to demonstrate bare-bones MA as well as correction for artifacts.
This data format is the format necessary for the R functions in the psychometric package.

}
\references{
Hunter, J.E. and Schmidt, F.L. (2004). \emph{Methods of meta-analysis: 
Correcting error and bias in research findings (2nd ed.).} Thousand Oaks: Sage Publications.

Hunter, J.E., Schmidt, F.L., and Jackson, G.B. (1982). \emph{Meta-analysis: 
Cumulating research findings across studies.} Beverly Hills: Sage Publications.

}
\examples{
data(HSJt35)
rbar(HSJt35)
FunnelPlot(HSJt35)
CredIntRho(HSJt35)

}
\keyword{datasets}
