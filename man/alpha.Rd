\name{alpha}
\alias{alpha}
\title{ Cronbach's Coefficient Alpha}
\description{
  Coefficient alpha is a measure of internal consistency. It is a standard measure of 
  reliability for tests.
}
\usage{
alpha(x)
}
\arguments{
  \item{x}{ Data.frame or matrix object with rows corresponding individuals and columns to items }
}
\details{
  You can specify any portion of a matrix or data.frame. For instance, if using a data.frame 
  with numerous variables corresponding to items, one can specify subsets of those items. See examples
  below. \cr
alpha <- \eqn{k/(k-1)*(1-SumSxi/Sx)} \cr
where k is the number of items, Sx is the standard deviaton of the total test, and SumSxi is the
sum of the standard deviations for each item. 
}
\value{
  coefficient alpha}

\references{ 
Cronbach, L. J. (1951). Coefficient alpha and the internal structure of tests. 
\emph{Psychometrika, 6,} 297-334.

}

\author{Thomas D. Fletcher \email{FletcherT@umsl.edu} \cr
\url{http://www.umsl.edu/~fletchert} }


\seealso{ \code{\link{alpha.CI}} }

\examples{
data(attitude)
alpha(attitude)
alpha(attitude[,1:5])
}
\keyword{ models }
\keyword{ univar }
