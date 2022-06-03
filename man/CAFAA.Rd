\name{CAFAA}
\alias{CAFAA}
\title{ Compound Attenuation Factor for Meta-Analytic Artifact Corrections }
\description{
  The compound attenuation factor is computed as the product of the mean for each 
  artifact distribution (square root of artifact) when correcting for attenuation 
  in a correlation coefficient. 
  
  }
\usage{
CAFAA(x)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxx, Ryy, and u: see \code{\link{EnterMeta}}}

}
\details{
  
  The compound attenuation factor is computed as the product of mean(a)*mean(b)*mean(c) where \cr
  a = sqrt(Rxx) and is computed with the function \code{\link{aRxx}} \cr
  b = sqrt(Ryy) and is computed with the function \code{\link{bRyy}} \cr
  c = \eqn{sqrt((1-u^2)*rbar^2+u^2)} and is computed with the function \code{\link{cRR}} 
  }
\value{
  A numeric value representing the compound attenuation factor
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

\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com}}


\note{ This value is used in the correction for artifacts of a correlation coefficient  }

\seealso{ \code{\link{rhoCA}}, \code{\link{aRxx}}, \code{\link{bRyy}}, \code{\link{cRR}} }

\examples{

#From Arthur et al
data(ABHt32)
CAFAA(ABHt32)
rhoCA(ABHt32)

# From Hunter et al
data(HSJt35)
CAFAA(HSJt35)
rhoCA(HSJt35)

}
\keyword{ univar }
\keyword{ models }
