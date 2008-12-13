\name{Qrbar}
\alias{Qrbar}
\alias{aprox.Qrbar}
\title{ Meta-Analytic Q statistic for r-bar }
\description{
  Provides a chi-square test for significant variation in sample weighted correlation, rbar}

\usage{
Qrbar(x)
aprox.Qrbar(x)
}

\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy and n: see \code{\link{EnterMeta}}}
}
\details{
Q is distributed as chi-square with df equal to the number of studies - 1. 
Multiple equations exist presumably because of a need to do the calculations \sQuote{by hand} in the past. 
A significant Q statistic implies the presence of one or more moderating variables operating on the
observed correlations. 
}

\value{
  A table containing the following items: \cr
  \item{CHISQ }{ Chi-square value}
  \item{df }{ degrees of freedom}
  \item{p-val }{ probabilty value}
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


\note{
\code{Qrbar} is computed as: \eqn{sum((((n-1)*(r-rb)^2)/(1-rb^2)^2),na.rm=TRUE)} \cr
\code{aprox.Qrbar} is computed as:  \eqn{(N/(1-rb^2)^2)*vr}

where n is sample size of study i, N is total sample size across studies, 
rb is \code{\link{rbar}}, r is the correlation of study i, 
and vr is \code{\link{varr}}. }

\section{Warning }{The test is presented by Hunter et al. 1982, but is NOT recommended 
nor mentioned by Hunter & Schmidt (2004). The test is sensitive to the number of studies
included in the meta-analysis. Large meta-analyses may find significant Q statistics when
variation in the population is not present, and small meta-analyses may find lack of 
significant Q statistics when moderators are present. Hunter & Schmidt (2004) recommend
the credibility inteval, \code{\link{CredIntRho}}, or the 75\% rule, \code{\link{pvse}}, 
as determinants of the presence of moderators.}

\seealso{ \code{\link{varr}}, \code{\link{vare}}, \code{\link{rbar}}, 
\code{\link{CredIntRho}}, \code{\link{pvse}}}

\examples{
# From Arthur et al
data(ABHt32)
aprox.Qrbar(ABHt32)

# From Hunter et al
data(HSJt35)
Qrbar(HSJt35)
aprox.Qrbar(HSJt35)
}

\keyword{ univar }
\keyword{ models }
\keyword{ htest }


