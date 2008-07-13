\name{CIr}
\alias{CIr}
\title{ Confidence Interval for a Correlation Coefficient }
\description{
  Will construct the CI for a desired level given a correlation and sample size }

\usage{
CIr(r, n, level = 0.95)
}

\arguments{
  \item{r}{ Correlation Coefficient}
  \item{n}{ Sample Size }
  \item{level}{ Significance Level for constructing the CI, default is .95}
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
\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} }


\note{ Does not compute r, you must enter it into the function}

\seealso{ 
	\code{\link{r2z}}, 
	\code{\link{CIz}}, 
	\code{\link{SEz}}, 
	\code{\link{z2r}} }

\examples{
# From ch. 2 in Cohen et al (2003)
CIr (.657, 15)
}



\keyword{ htest }
\keyword{ models }
