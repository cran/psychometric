\name{CVF}
\alias{CVF}
\title{ Compound Variance Factor for Meta-Analytic Artifact Corrections }
\description{
  The compound variance factor is computed by summing the individual squared coefficients 
  of variation for each artifact when correcting for attenuation in a correlation coefficient
  }
\usage{
CVF(x)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns representing artifacts (Rxx, Ryy, u): 
  see \code{\link{EnterMeta}}}
}
\details{
  The CVF is equal to scv(a) + scv(b) + scv(c), where scv is the squared coefficient of variation. 
  The letters a, b, c represent artifacts reliability in predictor, reliability in criterion,
  and restriction of range respectively. The scv is computed as the variance in the artifact divided 
  by the square of the average for the artifact. 
  }
\value{
  a numeric value representing the compound variance factor
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

\seealso{  \code{\link{aRxx}}, \code{\link{bRyy}}, \code{\link{cRR}}, \code{\link{varAV}},
\code{\link{CAFAA}}}

\examples{
# From Arthur et al
data(ABHt32)
CVF(ABHt32)


# From Hunter et al
data(HSJt35)
CVF(HSJt35)
}

\keyword{ univar }
\keyword{ models }
\keyword{ htest }



