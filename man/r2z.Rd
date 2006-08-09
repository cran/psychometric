\name{r2z}
\alias{r2z}
\alias{FISHER r to z}
\title{ Fisher r to z' }
\description{
  Converts a Pearson correlation coefficient to Fishers z'}
\usage{
r2z(x)
}
\arguments{
  \item{x}{ Pearson correlation coefficient}
}
\details{ z' = .5 * log((1+r)/(1-r))
}
\value{
Fisher z' }
\references{ 
Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). 
\emph{Applied multiple regression/correlation analysis for the behavioral sciences (3rd ed.).}
Mahwah, NJ: Lawrence Erlbaum.
 }

\author{ Thomas D. Fletcher \email{FletcherT@umsl.edu} \cr
\url{http://www.umsl.edu/~fletchert} }

\seealso{ \code{\link{z2r}}, 
          \code{\link{CIr}}, }

\examples{
# From ch. 2 in Cohen et al (2003)
r2z(.657)

}
\keyword{ htest }
\keyword{ models }