\name{varResT}
\alias{varResT}
\title{ True residual variance in correlations }
\description{
  Residual variance attributed to both the variance due to sampling error and 
  artifacts.
}
\usage{
varResT(x, aprox = FALSE)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy, n and artifacts (Rxx, Ryy, u): 
  see \code{\link{EnterMeta}}}
  \item{aprox}{ Logical test to determine if the approximate or exact var e is used }
}
\details{
 \code{varResT} <- \code{varr} - \code{vare} - \code{varAV}

varResT is used in the compution of the variance in rho, \code{varRCA}
}

\value{
  A numeric value representing the True residual variance
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

\seealso{  \code{\link{varr}}, \code{\link{vare}}, \code{\link{varAV}}, \code{\link{varRCA}}    }

\examples{
# From Arthur et al
data(ABHt32)
varResT(ABHt32)

# From Hunter et al
data(HSJt35)
varResT(HSJt35)
}

\keyword{ univar }
\keyword{ models }
