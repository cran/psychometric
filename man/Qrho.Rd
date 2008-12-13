\name{Qrho}
\alias{Qrho}
\title{ Meta-Analytic Q statistic for rho }
\description{
    Provides a chi-square test for significant variation in sample weighted correlation 
    corrected for attenuating artifacts}

\usage{
Qrho(x, aproxe = FALSE)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy, n and artifacts (Rxx, Ryy, u): 
  see \code{\link{EnterMeta}}}
  \item{aproxe}{ Logical test to determine if the approximate or exact var e is used}
}
\details{
  Q is distributed as chi-square with df equal to the number of studies - 1. 
A significant Q statistic implies the presence of one or more moderating variables operating on the
observed correlations after corrections for artifacts. 

}
\value{
  A table containing the following items: \cr
  \item{CHISQ }{ Chi-square value}
  \item{df }{ degrees of freedom}
  \item{p-val }{ probabilty value}
}

\references{ 
Arthur, Jr., W., Bennett, Jr., W., and Huffcutt, A. I. (2001) 
\emph{Conducting Meta-analysis using SAS.}
Mahwah, NJ: Erlbaum.

Hunter, J.E. and Schmidt, F.L. (2004). \emph{Methods of meta-analysis: 
Correcting error and bias in research findings (2nd ed.).} Thousand Oaks: Sage Publications.

Hunter, J.E., Schmidt, F.L., and Jackson, G.B. (1982). \emph{Meta-analysis: 
Cumulating research findings across studies.} Beverly Hills: Sage Publications.
}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} }
\note{ 

Q is defined as: (k*vr)/(vav+ve) 

where, k is the number of studies, vr is \code{\link{varr}}, vav is \code{\link{varAV}}, and ve is
\code{\link{vare}} }

\section{Warning }{The test is sensitive to the number of studies included in the meta-analysis.
Large meta-analyses may find significant Q statistics when variation in the population is not present, 
and small meta-analyses may find lack of significant Q statistics when moderators are present. Hunter &
Schmidt (2004) recommend the credibility inteval, \code{\link{CredIntRho}}, or the 75\% rule, 
\code{\link{pvse}}, as determinants of the presence of moderators.}

\seealso{ \code{\link{varr}}, \code{\link{vare}}, \code{\link{rbar}}, 
\code{\link{CredIntRho}}, \code{\link{pvse}}}

\examples{
# From Arthur et al
data(ABHt32)
Qrho(ABHt32)

# From Hunter et al
data(HSJt35)
Qrho(HSJt35)
}

\keyword{ univar }
\keyword{ models }
\keyword{ htest }

