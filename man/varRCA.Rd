\name{varRCA}
\alias{varRCA}
\title{ Variance in Meta-Analytic Rho }
\description{
Computes the estimate of the variance in the corrected correlation coefficient.}
\usage{
varRCA(x, aprox = FALSE)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy, n and artifacts (Rxx, Ryy, u): 
  see \code{\link{EnterMeta}}}
  \item{aprox}{ Logical test to determine if the approximate or exact var e is used }
}

\details{
Variance in Rho is computed as: \eqn{\code{VarResT} / \code{CAFFA}^2}

This is used to construct credibility intervals for rho \code{\link{CredIntRho}}

}
\value{
  A numeric value representing the variance in the population correlation coefficient
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

\seealso{ \code{\link{rhoCA}}, \code{\link{CAFAA}}, \code{\link{varResT}}, \code{\link{varRes}}  
\code{\link{CredIntRho}}}
\examples{
# From Arthur et al
data(ABHt32)
varRCA(ABHt32)

# From Hunter et al
data(HSJt35)
varRCA(HSJt35)
}

\keyword{ univar }
\keyword{ models }
