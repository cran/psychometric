\name{vare}
\alias{vare}
\alias{aprox.vare}
\alias{vare36}

\title{ Sampling Error Variance}
\description{
  Computes sampling error variance in correlations from a data object of the general format found in 
  \code{\link{EnterMeta}}
  }

\usage{
vare(x)
aprox.vare(x)
vare36(x)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy and n: see \code{\link{EnterMeta}}}
}
\details{
  \code{vare} is the 'core' equation for estimating the sampling error variance. Presumably because
  of the history of meta-analysis and lack of desktop computing power, hand-calculatons were needed. 
  Thus, two additional equations were developed. The \code{aprox.vare} appears in many textbooks and is
  used often (Arthur et al.). Another variation is presented by Hunter & Schmidt (2004)
  as their equation 3.6 \code{vare36}.
}
\value{
  Sampling error variance (exact, approximate, or alternate aproximate)
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

\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }
\note{ The equations for each function are: \cr
vare <- \eqn{sum(n*(1-rb^2)^2/(n-1),na.rm=TRUE)/sum(n,na.rm=TRUE)} \cr
aprox.vare <- \eqn{(1-rb^2)^2/(mean(n, na.rm=TRUE)-1)} \cr
vare36 <- \eqn{((1-rb^2)^2*k)/T}  where k is number of studies and T is total sample size

These are only presented here for completeness. The recommended equation is \code{vare}. 
}


\seealso{ \code{\link{varr}}, \code{\link{rbar}} }

\examples{
# From Arthur et al
data(ABHt32)
vare(ABHt32)
aprox.vare(ABHt32)
vare36(ABHt32)
# From Hunter et al
data(HSJt35)
vare(HSJt35)
aprox.vare(HSJt35)
vare36(HSJt35)
}

\keyword{ univar }
\keyword{ models }

