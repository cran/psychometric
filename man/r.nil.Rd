\name{r.nil}
\alias{r.nil}
\alias{r.null}
\title{ Nil hypothesis for a correlation }
\description{
  Performs a two-tailed t-test of the H0 that r = 0
}
\usage{
r.nil(r, n)
}
\arguments{
  \item{r}{ Correlation coefficient}
  \item{n}{ Sample Size}
}


\value{
Returns a table with 4 elements
  \describe{
  \item{H0:rNot0}{correlation to be tested}
}
  \item{t }{ t value for the H0}
  \item{df }{ degrees of freedom}
  \item{p }{ p value}
  }
\references{ 

Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). 
\emph{Applied multiple regression/correlation analysis for the behavioral sciences (3rd ed.).}
Mahwah, NJ: Lawrence Erlbaum.

}
\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }

\seealso{ 
	\code{\link{rdif.nul}}, 
	\code{\link{CIrdif}}
}

\examples{
# From ch. 2 in Cohen et al (2003)
r.nil(.657, 15)
}
\keyword{ htest }
\keyword{ models }
