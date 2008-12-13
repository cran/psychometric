\name{CI.tscore}
\alias{CI.tscore}
\alias{CI.obs}
\title{ Confidence Intervals for Test Scores }
\description{
  Computes the CI for a desired level for observed scores and estimated true scores}
\usage{
CI.tscore(obs, mx, s, rxx, level = 0.95)

CI.obs(obs, s, rxx, level = 0.95)

}
\arguments{
  \item{obs}{ Observed test score on test x}
  \item{mx}{ mean of test x }
  \item{s}{ standard deviation of test x }
  \item{rxx}{ reliability of test x}
  \item{level}{ Significance Level for constructing the CI, default is .95}
}
\details{
  \code{CI.tscore} makes use of \code{\link{Est.true}} to correct the observed score for 
  regression to the mean and \code{\link{SE.Est}} for the correct standard error. \code{CI.tscore}
  also requires entry of the mean of the test scores for correcting for regression to the mean. \cr
  \code{CI.obs} is much simpler in construction as it only makes use of the observed score without any 
  corrections. \code{CI.obs} uses \code{\link{SE.Meas}}, the SEM that appears in most test manuals and 
  text books.
  }
\value{
  Both functions return a table with 4 elements
  
  \item{SE. }{ Standard Error of the Estimate or SE of Measurement}
  \item{LCL }{ lower confidence limit of the CIDescription of 'comp2'}
  \item{T.Score }{ (or OBS) Estimate True Score or Observed score}
  \item{UCL }{ upper confidence limit of the CI}
  }
\references{ 
Dudek, F. J. (1979). The continuing misinterpretation of the standard error of measurement. 
\emph{Psychological Bulletin, 86}, 335-337. }

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} }

\note{ It is not in error to report any one of these. The misinterpretation is in taking the observed
score and making inferences about the true score without (1) using the correct standard error and (2) 
correcting for regression toward the mean of the observed scores. 
}
\section{Warning }{
 Be Cautious in construction and interpretation of CIs \cr
 To obtain percent for 1 SEM \cr
 1-((1-pnorm(1))*2) \cr
 To obtain percent for 2 SEM \cr
 1-((1-pnorm(2))*2) \cr

 95 percent CI corresponds to 1.96 * SE \cr
 1 * SE corresponds to .6827 \cr
 2 * SE corresponds to 0.9772499 \cr
 so, for two-sided, 2 * SE corresponds to 0.9544997 \cr
} 


\seealso{ \code{\link{SE.Meas}} }
\examples{
# Examples from Dudek (1979)
# Suppose a test has mean = 500, SD = 100 rxx = .9
# If an individual scores 700 on the test
CI.tscore (700, 500, 100, .9, level=.68)
CI.obs(700, 100,.9, level=.68)
}
\keyword{ models }
\keyword{ htest }