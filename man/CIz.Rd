\name{CIz}
\alias{CIz}

\title{ Confidence Interval for Fisher z' }
\description{
  Constructs a CI for a specified level about z'. 
  This is useful for constructing CI for a correlation}
  
\usage{
CIz(z, n, level = 0.95)
}
\arguments{
  \item{z}{ Fishers z'}
  \item{n}{ Sample Size }
  \item{level}{ Significance Level for constructing the CI, default is .95}
}

}
\value{
  \item{LCL }{ Lower Confidence Limit of the CI}
  \item{UCL }{ Upper Confidence Limit of the CI}
  
}
\references{ 

Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). 
\emph{Applied multiple regression/correlation analysis for the behavioral sciences (3rd ed.).}
Mahwah, NJ: Lawrence Erlbaum.

}
\author{ Thomas D. Fletcher \email{FletcherT@umsl.edu} \cr
\url{http://www.umsl.edu/~fletchert}}

\seealso{ 
	\code{\link{r2z}}, 
	\code{\link{CIr}}, 
	\code{\link{SEz}}, 
	\code{\link{z2r}} }

\examples{
# From ch. 2 in Cohen et al (2003)
zp <- r2z(.657)
CIz(zp, 15)
}

\keyword{ htest }
\keyword{ models }
