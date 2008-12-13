\name{cRRr}
\alias{cRRr}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Correction for Range Restriction }
\description{
  Corrects a correlation for Range restriction given population and sample standard deviations}

\usage{
cRRr(rr, sdy, sdyu)
}

\arguments{
  \item{rr}{ Observed or restricted correlation }
  \item{sdy}{ Standard deviation of a restricted sample  }
  \item{sdyu}{ Standard deviation of an unrestricted sample }
}

\details{
 When one of the variables used to measure a correlation has a restricted variance
 One the correlation will be attenuated. This commonly occurs for instance when using
 incumbents (those already selected by previous procedures) to based decisions about 
 validity of new selection procedures. Given u (ratio of unrestricted 
 SD of one variable to the restricted SD of that variable), the following formula is used
 to correct for attenuation in a correlation coefficient: \cr
 \eqn{rxy <- (rr*(sdyu/sdy))/sqrt(1+rr^2*((sdyu^2/sdy^2)-1))}}

\value{
  \item{unrestricted }{corrected correlation}
  }

\references{ 
Cohen, J., Cohen, P., West, S. G., & Aiken, L. S. (2003). 
\emph{Applied multiple regression/correlation analysis for the behavioral sciences (3rd ed.).}
Mahwah, NJ: Lawrence Erlbaum.

}
\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} }

\note{ Do not confuse this function with the meta-analysis function cRR in this same package! 

}
\seealso{  \code{\link{cRR}} }
\examples{
# See section 2.10.3 of Cohen et al (2003)
cRRr(.25, 12, 5)

# Create two correlated variables 
x <- rnorm(1000)
y <- 0.71*x +rnorm(1000)
cor(x,y)
# order and select top 1/10 
tmp <- cbind(x,y)[order(y,x),][1:100,]
rxyr <- cor(tmp[,"x"],tmp[,"y"]) # restricted rxy
rxyr
# correct for restriction of range
cRRr(rxyr, sd(tmp[,"y"]), sd(y))


}
\keyword{ htest }
\keyword{ models }


