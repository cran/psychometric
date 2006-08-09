\name{pvaaa}
\alias{pvaaa}

\title{ Percent of Variance Accounted for by Artifacts in Rho }
\description{
  Computes the percentage variance attributed to attenuating artifacts (sampling error, 
  restriction of range, reliability in predictor and criterion.}
\usage{
pvaaa(x, aprox = FALSE)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy, n and artifacts (Rxx, Ryy, u): 
    see \code{\link{EnterMeta}}}
    \item{aprox}{ Logical test to determine if the approximate or exact var e is used}
}
\details{
  Percent of variance is computed as: ( \code{vare} + \code{varAV} ) / \code{varr} * 100
  }
  
\value{
  A numeric value representing the percent of variance accounted for by artifacts
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

\author{ Thomas D. Fletcher \email{FletcherT@umsl.edu} \cr
\url{http://www.umsl.edu/~fletchert} }

\seealso{\code{\link{vare}}, \code{\link{varAV}}, \code{\link{varr}}, \code{\link{pvse}} }

\examples{
# From Arthur et al
data(ABHt32)
pvaaa(ABHt32)

# From Hunter et al
data(HSJt35)
pvaaa(HSJt35)
}

\keyword{ univar }
\keyword{ models }
