\name{alpha.CI}
\alias{alpha.CI}
\alias{CI.alpha}
\title{ Confidence Interval for Coefficient Alpha}
\description{
  Computes a one-tailed (or two-tailed) CI at the desired level for coefficient alpha }
\usage{
alpha.CI(alpha, k, N, level = 0.90, onesided = FALSE)
}

\arguments{
  \item{alpha}{ coefficient alpha to use for CI construction }
  \item{k}{ number if items }
  \item{N}{ sample size }
  \item{level}{ Significance Level for constructing the CI, default is .90 }
  \item{onesided}{ return a one-sided (one-tailed) test, default is FALSE }
}
\details{
  By inputting alpha, number of items and sample size, one can make inferences via 
  a confidence interval. This can be used to compare two alpha coefficients (e.g., from 
  two groups), or to compare alpha to some specified value (e.g., > = .7). onesided = FALSE renders
  a two-sided test (i.e., this is the difference between tails of .025/.975 and .05/.95)
}
\value{
  Returns a table with 3 elements
  \item{LCL }{lower confidence limit of CI}
  \item{ALPHA }{coefficient alpha}
  \item{UCL }{upper confidence limit of CI}
  
}
\references{ 
Feldt, L. S., Woodruff, D. J., & Salih, F. A. (1987). 
Statistical inferences for coefficient alpha. \emph{Applied Psychological Measurement, 11,} 93-103. 
}

\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com}}

\note{ Feldt et al., provide a number of procedures for making inferences about alpha
(e.g., F test of the null hypothesis). Since the CI is the most versatile, it is the only function
created in this package }

\section{ Warning }{You must first compute alpha and then enter into function. \code{alpha.CI}
will not evaluate a data.frame or matrix object. }
 
\seealso{ \code{\link{alpha}} }

\examples{
# From Feldt et al (1987)
# alpha = .79, #items = 26, #examinees = 41
# a two-tailed test 90\% level

alpha.CI(.79, 26, 41)

}
\keyword{ models }
\keyword{ univar }