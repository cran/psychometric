\name{SE.Meas}
\alias{SE.Meas}
\alias{SE.Est}
\alias{SE.Pred}

%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Standard Errors of Measurement (test scores) }
\description{
  These functions will calculate the three Standard Errors of Measurement as 
  described by Dudek(1979). They are useful in constructing CI about 
  observed scores, true scores and predicting observed scores on parallel measures.}
\usage{
SE.Meas(s, rxx)
SE.Est (s, rxx)
SE.Pred(sy, rxx)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{s}{ Standard Deviation in tests scores on test x }
  \item{sy}{ Standard Deviation in tests scores on parallel test y = x}
  \item{rxx}{ Reliability of test x }
}
\details{
  Dudek (1979) notes that in practice, individuals often misinterpret the SEM. 
  In fact, most textbooks misinterpret these measures. The SE.Meas \eqn{(s*sqrt(1-rxx))}
  is useful in the construction of CI about observed scores, but should not be 
  interpreted as indicating the TRUE SCORE is necessarily included in the CI. The
  SE.Est \eqn{(s*sqrt(rxx*(1-rxx)))} is useful in the construction of CI about the TRUE 
  SCORE. The estimate of a CI for a TRUE SCORE also requires the calculation of a 
  TRUE SCORE (due to regression to the mean) from observed scores. The SE.Pred 
  \eqn{(sy*sqrt(1-rxx^2))} is useful in predicting the score on a parallel measure (Y) 
  given a score on test X. SE.Pred is usually used to estimate the score of a 
  re-test of an individual.
  
}
\value{
The returned value is the appropriate standard error
}
\references{ 
Dudek, F. J. (1979). The continuing misinterpretation of the standard error of measurement. 
\emph{Psychological Bulletin, 86}, 335-337.

Lord, F. M. & Novick, M. R. (1968). \emph{Statistical theories of mental test scores.}
Reading, MA: Addison-Wesley.

Nunnally, J. C. & Bernstein, I. H. (1994). \emph{Psychometric Theory (3rd ed.).} New York: McGraw-Hill.
}
\author{ Thomas D. Fletcher \email{FletcherT@umsl.edu} \cr
\url{http://www.umsl.edu/~fletchert} }

\note{ Since strictly parallel tests have the same SD, s and sy are equivalent in these functions. 
SE.Meas() is used by \code{\link{CI.obs}}. SE.Est() is used by \code{\link{CI.tscore}}. You must use 
\code{\link{Est.true}} to first compute the estimated true score from an observed score accounting for regression
to the mean.

 }
\seealso{ \code{\link{Est.true}}, \code{\link{CI.obs}}, \code{\link{CI.tscore}}  }
\examples{
# Examples from Dudek (1979)
# Suppose a test has mean = 500, SD = 100 rxx = .9
# If an individual scores 700 on the test
# The three SE are:
SE.Meas (100, .9)
SE.Est (100, .9)
SE.Pred (100, 9)

# CI about the true score
CI.tscore(700, 500, 100, .9)

# CI about the observed score
CI.obs(700, 100, .9)

}
\keyword{ htest }
\keyword{ distribution }
