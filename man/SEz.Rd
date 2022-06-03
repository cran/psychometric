\name{SEz}
\alias{SEz}
\title{ Standard Error of Fishers z prime }
\description{
  Given a sample size, n, will compute the aproximate standard error for z prime
  This is useful for constructing confidence intervals about a correlation.
}
\usage{
SEz(n)
}
\arguments{
  \item{n}{ sample size }
}
\details{ SEz = 1/sqrt(n-3) }

\value{
 The approximate standard error for Fisher's z prime }

\references{ 
Olkin, I. & Finn, J. D. (1995). Correlation Redux. \emph{Psychological Bulletin, 118}, 155-164.

Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). 
\emph{Applied multiple regression/correlation analysis for the behavioral sciences (3rd ed.).}
Mahwah, NJ: Lawrence Erlbaum.

}
\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }


\seealso{ 
	\code{\link{r2z}}, 
	\code{\link{CIr}}, 
	\code{\link{CIz}}, 
	\code{\link{z2r}} }

\examples{
# From ch. 2 in Cohen et al (2003)
zp <- r2z(.657)
zp
SEz(15)

}
\keyword{ htest }
\keyword{ models }
