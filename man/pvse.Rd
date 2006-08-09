\name{pvse}
\alias{pvse}
\title{ Percent of variance due to sampling error }
\description{
  Ratio of sampling error variance to weighted variance in correlations for a meta-analysis. 
  This value is compared to 75 (e.g., 75\% rule) to determine the presence of moderators.
}
\usage{
pvse(x)
}

\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy and n: see \code{\link{EnterMeta}}}

}
\details{
 \code{pvse} <- \code{\link{vare}}/\code{\link{varr}}*100
 }
\value{
A single numeric value of class matrix representing the \% of variance 
accounted for by sampling error}

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

\seealso{ \code{\link{varr}}, \code{\link{vare}} }

\examples{
# From Arthur et al
data(ABHt32)
pvse(ABHt32)
# From Hunter et al
data(HSJt35)
pvse(HSJt35)
}

\keyword{ univar }
\keyword{ models }
