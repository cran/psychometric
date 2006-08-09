\name{varr}
\alias{varr}
\title{ Sample Size weighted variance}
\description{
Computes the weighted variance in correlations from a data object of the general format found in 
  \code{\link{EnterMeta}}}

\usage{
varr(x)
}
  \arguments{
    \item{x}{ A matrix or data.frame with columns Rxy and n: see \code{\link{EnterMeta}}}
  }

\details{
For a set of correlations for each study (i), varr is computed as:
\eqn{sum(Ni*(ri-rbar)^2)/sum(Ni)} where, Ni is the sample size of study i and ri
is the correlation in study i and rbar is the weighted mean correlation.
}

\value{
  Sample weighted variance in correlations: uncorrected for artifacts other than sampling error
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

\note{ This is the variance in correlations across studies corrected for sampling error. 
It is also known as bare-bones meta-analysis.}


\seealso{ \code{\link{vare}}, \code{\link{rbar}} }

\examples{
# From Arthur et al
data(ABHt32)
varr(ABHt32)
# From Hunter et al
data(HSJt35)
varr(HSJt35)

}
\keyword{ univar }
\keyword{ models }
