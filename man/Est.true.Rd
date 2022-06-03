\name{Est.true}
\alias{Est.true}
\title{ Estimation of a True Score }
\description{
  Given the mean and reliability of a test, this function estimates the true score based
  on an observed score. The estimation is accounting for regression to the mean }
\usage{
Est.true(obs, mx, rxx)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obs}{ an observed score on test x}
  \item{mx}{ mean of test x }
  \item{rxx}{ reliability of test x}
}
\details{
The estimated true score (that) is computed as \cr
that <- mx*(1-rxx)+rxx*obs \cr
When the obs score is much higher than the mean, the that < obs \cr
When the obs score is much lower than the mean, that > obs
  
  
  }
\value{
  Estimated True score
}
\references{ 


Dudek, F. J. (1979). The continuing misinterpretation of the standard error of measurement. 
\emph{Psychological Bulletin, 86}, 335-337.
}
\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }


\seealso{ \code{\link{CI.tscore}}, \code{\link{SE.Est}} }

\examples{
# Examples from Dudek (1979)
# Suppose a test has mean = 500, SD = 100 rxx = .9
# If an individual scores 700 on the test
Est.true(700, 500, .9)

# If an individual scores 400 on the test
Est.true(400, 500, .9)

}
\keyword{ models }
\keyword{ distribution }