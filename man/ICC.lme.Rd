\name{ICC.lme}
\alias{ICC.lme}
\alias{ICC1.lme}
\alias{ICC2.lme}
\title{ Intraclass Correlation Coefficient from a Mixed-Effects Model }
\description{
  ICC1 and ICC2 computed from a lme() model. }
\usage{
ICC1.lme(dv, grp, data)

ICC2.lme(dv, grp, data, weighted = FALSE)

}
\arguments{
  \item{dv}{ The dependent variable of interest }
  \item{grp}{ cluster or grouping variable }
  \item{data}{ data.frame containing the data }
  \item{weighted}{ Whether or not a weighted mean is used in calculation of ICC2 }

}
\details{
First a lme() model is computed from the data. Then ICC1 is computed as \eqn{t00/(t00 + siqma^2)},
where t00 is the variance in intercept of the model and \eqn{sigma^2} is the residual variance for 
the model. The ICC2 is computed by computing the ICC2 for each group \eqn{t00/(t00 + sigma^2/nj)} 
where nj is the size of group j. The mean across all groups is then taken to be the ICC2. 
However, one can specify that the mean should be weigted by group size such that larger groups 
are given more weight. The calculation of the individual group ICC2 is done by Bliese's 
\code{\link[multilevel]{gmeanrel}} function. An alternate specification not used here, 
but sometimes seen in the literature for ICC2 is to use the formula above for the total data 
set, but replace nj with the average group size. This is the method used in Bliese's 
\code{\link[multilevel]{mult.icc}}. 
  }
  
\value{
  ICC1 or ICC2
  
}
\references{ 
Bliese, P. (2000). Within-group agreement, non-independence, and reliability: Implications 
for data aggregation and analysis. In K. J. Klein & S. W. J. Kozlowski (Eds.), 
\emph{Multilevel theory, research, and methods in organizations: Foundations, extensions, 
and new directions (pp. 349-381).} San Francisco: Jossey-Bass.
}
\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }

\note{ ICC1.lme and ICC2.lme should in principle be equal an ICC computed from a one-way ANOVA 
only when the data are balanced (equal group sizes for all groups and no missing data). The ICC.lme
should be a more accurate measure of ICC in all other instances. The three specifications of ICC2 
mentioned above (details) will be similar by not exactly equal because of group variablity. 
}

\section{Warning }{ If data used are attached, you will sometimes receive a warning that can be ignored. 
The warning states that the following variables ... are masked. This is because the function first 
attaches the data and then detaches it within the function. } 


\seealso{ \code{\link{ICC.CI}}, \code{\link[multilevel]{mult.icc}}, \code{\link[multilevel]{gmeanrel}} }

\examples{

library(nlme)
library(multilevel)
data(bh1996)
ICC1.lme(HRS, GRP, data=bh1996)
ICC2.lme(HRS, GRP, data=bh1996)
}
\keyword{ models }
\keyword{ univar }
