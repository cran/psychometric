\name{CIrb}
\alias{CIrb}
\alias{CIrbar}
\title{ Confidence Interval about Sample Weighted Mean Correlation}
\description{
  Produces a CI for the desired level of the sample weighted mean correlation 
  using the appropriate standard error. 
  
}
\usage{
CIrb(x, LEVEL = 0.95, homogenous = TRUE)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy and n: see \code{\link{EnterMeta}}}
  \item{LEVEL}{ Significance Level for constructing the CI, default is .95}
  \item{homogenous}{ Whether or not to use homogenous or heterogenous SE }
}
\details{
  
The CI is constructed based on the uncorrected mean correlation. It is 
corrected for sampling error only. To get the CI for the mean correlation 
corrected for artifacts, use \code{\link{CredIntRho}}, but this is a 
credibility interval rather than a confidence interval. See Hunter &
Schmidt (2004) for more details on the interpretation of the differences.

If the CI is computed about a heterogenous mean correlation, one is 
implying that moderators are present, but that one can't determine what
those moderators might be. Otherwise, strive to parse the studies into 
homogenous subsets and create CI about those means within the subsets.

  }

\value{
A list containing:  
  \item{LCL }{ Lower Confidence Limit of the CI}
  \item{UCL }{ Upper Confidence Limit of the CI}
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
\url{http://www.umsl.edu/~fletchert}}

\seealso{ \code{\link{SErbar}}, \code{\link{rbar}} }

\examples{

#From Arthur et al
data(ABHt32)
rbar(ABHt32)
CIrb(ABHt32)

# From Hunter et al
data(HSJt35)
rbar(HSJt35)
CIrb(HSJt35)

}

\keyword{ univar }
\keyword{ models }
\keyword{ htest }