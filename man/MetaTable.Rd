\name{MetaTable}
\alias{MetaTable}
\title{ Summary function for 'Complete' Meta-Analysis}
\description{
  Computes and returns the major functions involved in a Meta-Analysis. It is generic
  in the sense that no options are available to alter defaults. }
  
\usage{
MetaTable(x)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy, n and artifacts (Rxx, Ryy, u): 
    see \code{\link{EnterMeta}}}
    }
\details{
  For a set of correlations for each study (i), the following calculations are made and returned:
  
  r-bar \code{\link{rbar}}, variance in r-bar \code{\link{varr}}, variance due to sampling error 
  (not approximated) \code{\link{vare}}, percent of variance due to sampling error \code{\link{pvse}},
  95\% CI for r-bar (using both the heterogenous and homogenous SE) \code{\link{CIrb}}, rho (
  corrected r-bar) \code{\link{rhoCA}}, variance in rho \code{\link{varRCA}}, percent of variance 
  attributable to artifacts \code{\link{pvaaa}}, 90\% Credibility interval \code{\link{CredIntRho}}
  
  }
\value{
Data.frame with various statistics returned - see details above}

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



\seealso{ \code{\link{rbar}}, \code{\link{rhoCA}} }

\examples{
# From Arthur et al
data(ABHt32)
MetaTable(ABHt32)
# From Hunter et al
data(HSJt35)
MetaTable(HSJt35)

}
\keyword{ univar }
\keyword{ models }
