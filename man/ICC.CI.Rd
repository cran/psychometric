\name{ICC.CI}
\alias{ICC.CI}
\alias{ICC1.CI}
\alias{ICC2.CI}
\title{ Confidence interval for the Intra-class Correlation }
\description{
  Computes the CI at the desired level for the ICC1 and ICC2}
\usage{

ICC1.CI(dv, iv, data, level = 0.95)

ICC2.CI(dv, iv, data, level = 0.95)
}

\arguments{
  \item{dv}{ The dependent variable of interest }
  \item{iv}{ cluster or grouping variable }
  \item{data}{ data.frame containing the data }
  \item{level}{ Significance Level for constructing the CI, default is .95}
}

\details{
Computes the ICC from a one-way ANOVA. The CI is then computed at the desired level using 
formulae provided by McGraw & Wong (1996). They use the terminology ICC(1) and ICC(k) for
ICC1 and ICC2 respectively. 

}

\value{
A table with 3 elements:  
  \item{LCL }{ lower confidence limit if CI}
  \item{ICC }{ intra-class correlation}
  \item{UCL }{ upper confidence limit if CI}
  
}

\references{ 
McGraw, K. O. & Wong, S. P. (1996). Forming some inferences about some intraclass 
correlation coefficients. \emph{Psychological Methods, 1,} 30-46.

Bliese, P. (2000). Within-group agreement, non-independence, and reliability: Implications 
for data aggregation and analysis. In K. J. Klein & S. W. J. Kozlowski (Eds.), 
\emph{Multilevel theory, research, and methods in organizations: Foundations, extensions, 
and new directions (pp. 349-381).} San Francisco: Jossey-Bass.
}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com}}


\seealso{  \code{\link{ICC.lme}}, \code{\link[multilevel]{ICC1}}, \code{\link[multilevel]{ICC2}} }

\examples{
library(multilevel)
data(bh1996)
ICC1.CI(HRS, GRP, bh1996)
ICC2.CI(HRS, GRP, bh1996)

}
\keyword{ models }
\keyword{ univar }
\keyword{ htest }
