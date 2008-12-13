\name{CredIntRho}
\alias{CredIntRho}

\title{ Credibility Interval for Meta-Analytic Rho}
\description{
  Computed the credibility interval about the population correlation 
  coefficient at the desired level.}
\usage{
CredIntRho(x, aprox = FALSE, level = 0.95)
}
\arguments{
  \item{x}{  A matrix or data.frame with columns Rxy, n and artifacts (Rxx, Ryy, u): 
  see \code{\link{EnterMeta}}}
  \item{aprox}{ Logical test to determine if the approximate or exact var e is used}
  \item{level}{ Significance Level for constructing the CI, default is .95 }
}
\details{
  The credibility interval is used for the detection of potential moderators. Intervals that 
  large or include zero potentially reflect the presence of moderators. Credibility intervals
  are constructed about rho, whereas confidence intervals are generally constructed about rbar.
  See Hunter & Schmidt (2004) for a description of the different uses. 
  
  The credibility interval is computed as: rho +/- z[crit] * SD(rho)
  
  where, rho is the corrected correlation, z[crit] is the critcal z value (1.96 for 95\%), and
  SD(rho) is the sqrt(variance in rho). 
}
\value{
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

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com}}


\seealso{ \code{\link{rbar}}, \code{\link{rhoCA}}, \code{\link{CIrb}}, \code{\link{varRes}}  }

\examples{
# From Arthur et al
data(ABHt32)
CredIntRho(ABHt32, aprox=TRUE)

# From Hunter et al
data(HSJt35)
CredIntRho(HSJt35)
}

\keyword{ univar }
\keyword{ models }
\keyword{ htest }


