\name{varAV}
\alias{varAV}
\title{ Variance Due to Attenuating Artifacts}
\description{
Since the presence of artifacts may inflate the observed variance in correlations, 
one needs to compute the variance attributed to the artifacts. 
}
\usage{
varAV(x)
}

\arguments{
\item{x}{ A matrix or data.frame with columns Rxy, n and artifacts (Rxx, Ryy, u): 
  see \code{\link{EnterMeta}}}
}

\details{
 varAV is computed as \eqn{\code{rhoCA}^2 * \code{CAFAA}^2 * \code{CVF}}

varAV is used to compute the residual variance in correlations \code{\link{varResT}} }
\value{
A numeric value representing the variance due to attenuating artifacts}

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

\seealso{  \code{\link{CAFAA}},\code{\link{rhoCA}}, \code{\link{CVF}}   }

\examples{
# From Arthur et al
data(ABHt32)
varAV(ABHt32)

# From Hunter et al
data(HSJt35)
varAV(HSJt35)
}

\keyword{ univar }
\keyword{ models }
