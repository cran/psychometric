\name{SErbar}
\alias{SErbar}
\alias{SERHET}
\alias{SERHOM}
\title{ Standard Error for Sample Size Weighted Mean Correlation }
\description{
  The standard error of homogenous or heterogenous samples is computed to be used for
  construction of confidence intervals about the Sample Size Weighted Mean Correlation in 
  meta-analysis. Use \code{SERHOM} if no moderators are present (population is homogenous), and 
  use \code{SERHET} if moderators are present (population is heterogenous). 
}
\usage{
SERHOM(x)
SERHET(x)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy and n: see \code{\link{EnterMeta}}}
}
\details{
  
The formula for each are: \cr
SERHOM <- \eqn{(1-rb^2)/sqrt(N-k)} \cr
SERHET <- \eqn{sqrt((1-rb^2)^2/(N-k)+varRes(x)/k)}

where, rb is \code{\link{rbar}}, N is the total sample size, k is the number of studies.
  
  }
\value{
  A numeric value, the standard error 
  
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

\seealso{ \code{\link{CIrb}}, \code{\link{rbar}} }

\examples{
# From Arthur et al
data(ABHt32)
SERHOM(ABHt32)
SERHET(ABHt32)
CIrb(ABHt32)

# From Hunter et al
data(HSJt35)
SERHOM(HSJt35)
SERHET(HSJt35)
CIrb(HSJt35)

}
\keyword{ univar }

