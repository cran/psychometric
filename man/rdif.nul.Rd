\name{rdif.nul}
\alias{rdif.nul}
\title{ Null hypothesis for difference in two correlations }
\description{
  Tests the hypothesis that two correlations are significantly different }
\usage{
rdif.nul(r1, r2, n1, n2)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{r1}{ Correlation 1}
  \item{r2}{ Correlation 2}
  \item{n1}{ Sample size for \code{r1} }
  \item{n2}{ Sample size for \code{r2}  }
}

\details{ First converts r to z' for each correlation. Then constructs a z test for the difference
z <- (z1 - z2)/sqrt(1/(n1-3)+1/(n2-3))}

\value{
Returns a table with 2 elements
  \item{zDIF }{ z value for the H0}
  \item{p }{ p value}
}

\references{ 

Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). 
\emph{Applied multiple regression/correlation analysis for the behavioral sciences (3rd ed.).}
Mahwah, NJ: Lawrence Erlbaum.

}
\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }


\note{ Does not test alternate hypotheses (e.g., difference = .1) }

\seealso{ 
	\code{\link{r.nil}}, 
	\code{\link{CIrdif}}
}

 \examples{
# From ch. 2 in Cohen et al (2003)
rdif.nul(.657, .430, 62, 143)

}
\keyword{ htest }
\keyword{ models }
