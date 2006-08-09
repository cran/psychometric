\name{rhoCA}
\alias{rhoCA}
\title{ Meta-Analytically Derived Correlation Coefficient Corrected for Artifacts}
\description{
  This represents the population correlation coefficient free from attenuaton due to 
  artifacts (sampling error, range-restriction, reliability in the predictor and criterion).}
\usage{
rhoCA(x)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy, n and artifacts (Rxx, Ryy, u): 
  see \code{\link{EnterMeta}}}
}

\details{
  This is the sample weighted correlation coefficient \code{\link{rbar}} divided by the 
  compound attenuation factor, \code{\link{CAFAA}}.
  }
\value{
  A numeric value represting the corrected correlation coefficient.
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

\seealso{  \code{\link{CAFAA}}, \code{\link{rbar}}  }

\examples{
# From Arthur et al
data(ABHt32)
rhoCA(ABHt32)

# From Hunter et al
data(HSJt35)
rhoCA(HSJt35)
}

\keyword{ univar }
\keyword{ models }

