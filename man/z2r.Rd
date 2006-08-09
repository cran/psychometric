\name{z2r}
\alias{z2r}
\alias{Fisher z to r}

\title{ Fisher z' to r}
\description{
  Converts a Fishers z' to Pearson correlation coefficient
}
\usage{
z2r(x)
}
\arguments{
  \item{x}{ z' (Fishers z prime) }
}
\details{ r = (exp(2*z)-1)/exp(2*z)+1)
}
\value{
A Pearson Correlation coefficient
}

\references{ 
Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). 
\emph{Applied multiple regression/correlation analysis for the behavioral sciences (3rd ed.).}
Mahwah, NJ: Lawrence Erlbaum.
  }

\author{ Thomas D. Fletcher \email{FletcherT@umsl.edu} }

\seealso{ 
	\code{\link{r2z}}, 
	\code{\link{CIr}}, 
	\code{\link{CIz}}, 
	\code{\link{SEz}} }

\examples{
# From ch. 2 in Cohen et al (2003)
zp <- r2z(.657)
zp
z2r(zp)

}


\keyword{ htest }
\keyword{ models }
