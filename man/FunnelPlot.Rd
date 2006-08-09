\name{FunnelPlot}
\alias{FunnelPlot}
\title{ Funnel Plot for Meta-Analysis }
\description{
  Produces a simple x-y plot corresponding to the correlation and sample size. A vertical line 
  is produced representing the sample weighted correlation.
}
\usage{
FunnelPlot(x)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy and n: see \code{\link{EnterMeta}}}
}
\details{
Plot showing 'no evidence' of availabilty bias will resemble funnel getting smaller at the top, and 
larger at the bottom of the plot. A plot showing evidence of availablity bias will not resemble a funnel.

}
\value{
a plot 
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

\seealso{ \code{\link{FileDrawer}} }

\examples{
# From Arthur et al
data(ABHt32)
FunnelPlot(ABHt32)

# From Hunter et al
data(HSJt35)
FunnelPlot(HSJt35)
 }
 \keyword{ univar }
 \keyword{ models }
