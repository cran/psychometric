\name{CI.Rsq}
\alias{CI.Rsq}

\title{ Confidence Interval for R-squared }
\description{
  Computes the confidence interval for a desired level for the squared-multiple correlation}
\usage{
CI.Rsq(rsq, n, k, level = 0.95)
}
\arguments{
  \item{rsq}{ Squared Multiple Correlation }
  \item{n}{ Sample Size }
  \item{k}{ Number of Predictors in Model }
  \item{level}{ Significance Level for constructing the CI, default is .95 }
}
\details{
  CI is constructed based on the approximate SE of Rsq \cr
  \eqn{sersq <- sqrt((4*rsq*(1-rsq)^2*(n-k-1)^2)/((n^2-1)*(n+3)))}
  }
\value{
  Returns a table with 4 elements
  \item{Rsq }{ Squared Multiple Correlation}
  \item{SErsq }{ Standard error of Rsq}
  \item{LCL }{ Lower Confidence Limit of the CI}
  \item{UCL }{ Upper Confidence Limit of the CI}}

\references{ 
Olkin, I. & Finn, J. D. (1995). Correlation Redux. \emph{Psychological Bulletin, 118}, 155-164.

Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). 
\emph{Applied multiple regression/correlation analysis for the behavioral sciences (3rd ed.).}
Mahwah, NJ: Lawrence Erlbaum.

}
\author{ Thomas D. Fletcher \email{FletcherT@umsl.edu} \cr
\url{http://www.umsl.edu/~fletchert}}

\note{ This is an adequate approximation for n > 60 } 

 \seealso{ \code{\link{CI.Rsqlm}}
 }

\examples{
# see section 3.6.2 Cohen et al (2003)
# 95 percent CI
CI.Rsq(.5032, 62, 4, level = .95)
# 80 percent CI
CI.Rsq(.5032, 62, 4, level = .80)

}
\keyword{ htest }
\keyword{ models }
