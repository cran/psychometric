\name{FileDrawer}
\alias{FileDrawer}
\title{ File Drawer N  }
\description{
  Computes the number of 'lost' studies needed to render the observed meta-analytic
  correlation to non-significance.
}
\usage{
FileDrawer(x, rc = 0.1)
}
\arguments{
  \item{x}{ A matrix or data.frame with columns Rxy and n: see \code{\link{EnterMeta}}}
  \item{rc}{ cut-off correlation for which to make a comparison}
}

\details{
Use to detect availability bias in published correlations. It is computed as 
n <- k * (rb/rc - 1), where, n is the file drawer n, k is the number of studies in 
current meta-analyis, rb is rbar and rc is the cut-off correlation for which you wish 
to make a comparison. For a test of the null hypothesis, use rc = 0. In many instances, practitioners
are interested in reducing correlations to less than 1 percent of the variance accounted for
(i.e., rc = .1). 


}
\value{
  \item{"# of 'lost' studies needed" }{ File drawer N needed to change decision}
  }

\references{ 
Hunter, J.E. and Schmidt, F.L. (2004). \emph{Methods of meta-analysis: 
Correcting error and bias in research findings (2nd ed.).} Thousand Oaks: Sage Publications.

Rosenthal, R. (1979). The "file-drawer problem" and tolerance for null results. \emph{
Psychological Bulletin, 86,} 638-641.

}

\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }
\seealso{ \code{\link{FunnelPlot}} }

\examples{
# From Arthur et al
data(ABHt32)
FileDrawer(ABHt32)

# From Hunter et al
data(HSJt35)
FileDrawer(HSJt35)
 }
 \keyword{ univar }
 \keyword{ models }


