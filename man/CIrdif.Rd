\name{CIrdif}
\alias{CIrdif}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Confidence Interval for the difference in Correlation Coefficients }
\description{
  Will construct the CI for a difference in two correlations for a desired level}
\usage{
CIrdif(r1, r2, n1, n2, level = 0.95)
}
\arguments{
  \item{r1}{ Correlation 1 }
  \item{r2}{ Correlation 2 }
  \item{n1}{ Sample size for \code{r1}  }
  \item{n2}{ Sample size for \code{r2} }
  \item{level}{ Significance Level for constructing the CI, default is .95}
}

\details{ Constructs a confidence interval based on the standard error of the difference 
of two correlations \eqn{(r1 - r2)}, sed \eqn{<- sqrt((1-r1^2)/n1 + (1-r2^2)/n2) }}

\value{
  Returns a table with 4 elements
  \item{DifR }{ Observed Difference in correlations}
  \item{SED }{ Standard error of the difference}
  \item{LCL }{ Lower Confidence Limit of the CI}
  \item{UCL }{ Upper Confidence Limit of the CI}

}
\references{ 
Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). 
\emph{Applied multiple regression/correlation analysis for the behavioral sciences (3rd ed.).}
Mahwah, NJ: Lawrence Erlbaum.

}
\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} }


\seealso{ 
	\code{\link{rdif.nul}} }

\examples{
# From ch. 2 in Cohen et al (2003)
CIrdif(.657, .430, 62, 143)

}
\keyword{ htest }
\keyword{ models }
