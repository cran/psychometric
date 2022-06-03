\name{CI.Rsqlm}
\alias{CI.Rsqlm}
\title{ Confidence Interval for Rsq - from lm() }
\description{
  Computes the CI for a desired level based on an object of class lm() }
\usage{
CI.Rsqlm(obj, level = 0.95)
}
\arguments{
  \item{obj}{ object of a linear model }
  \item{level}{ Significance Level for constructing the CI, default is .95 }
}
\details{
  Extracts the necessary information from the linear model object 
  and uses \code{\link{CI.Rsq}}}
\value{
  Returns a table with 4 elements
    \item{Rsq }{ Squared Multiple Correlation}
    \item{SErsq }{ Standard error of Rsq}
    \item{LCL }{ Lower Confidence Limit of the CI}
    \item{UCL }{ Upper Confidence Limit of the CI}
}
\references{ 
Olkin, I. & Finn, J. D. (1995). Correlation Redux. \emph{Psychological Bulletin, 118}, 155-164.

Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). 
\emph{Applied multiple regression/correlation analysis for the behavioral sciences (3rd ed.).}
Mahwah, NJ: Lawrence Erlbaum.

}
\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }

\note{ This is an adequate approximation for n > 60 } 

\seealso{ \code{\link{CI.Rsq}}}

\examples{
# Generate data 
x <- rnorm(100)
z <- rnorm(100)
xz <- x*z
y <- .25*x - .25*z + .25*x*z + .25*rnorm(100)
# Create an lm() object
lm1 <- lm(y ~ x*z)
CI.Rsqlm(lm1)

}
\keyword{ htest }
\keyword{ models }
