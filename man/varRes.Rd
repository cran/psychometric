\name{varRes}
\alias{varRes}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Residual Variance in Meta-Analytic Correlation }
\description{
  Computes the residual variance in the sample-weighted correlation coefficient by removing
  variance due to sampling error.}
\usage{
varRes(x)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy and n: see \code{\link{EnterMeta}}}
}

\details{
computed as \code{varr} - \code{vare}

Useful in the construction of the SE for heterogenous populations \code{\link{SERHET}}}
\value{
  A numeric value representing the residual variance
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

\seealso{ \code{\link{varr}}, \code{\link{vare}}, \code{\link{SERHET}} }
\examples{
# From Arthur et al
data(ABHt32)
varRes(ABHt32)

# From Hunter et al
data(HSJt35)
varRes(HSJt35)
}

\keyword{ univar }
\keyword{ models }
