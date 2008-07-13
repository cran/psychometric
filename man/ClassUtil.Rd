\name{ClassUtil}
\alias{ClassUtil}
\title{ Classical Utility of a Test }
\description{
Calculate the classical utility of a test given a correlation, base-rate and selection ratio.}

\usage{
ClassUtil(rxy = 0, BR = 0.5, SR = 0.5)
}

\arguments{
  \item{rxy}{ Correlation of Test X with Outcome Y }
  \item{BR}{ Base Rate or prevalence without use of a test}
  \item{SR}{ Selection Ratio: Number selected out of those tested }
}
\details{
  
 The degree of utility of using a test as a selection instrument over randomly 
 selecting individuals can be reflected in the decision outcomes expected by using the 
 selection instrument. Suppose you have a predictor (selection instrument) and a criterion 
 (job performance). By regressing the criterion on the predictor, and selecting individuals 
 based on some cut-off value, we have 4 possible outcomes. A = True Positives, B = True Negatives, 
 C = False Negatives, and D = False Positives. The classical utility of using the test over 
 current procedures (random selection) is:
 
 [A / (A+D)] - [(A + C) / (A + B + C + D)]
 
 Various manipulations of these relationships can be used to assist in decision making. 
 
   }
\value{
  Returns a table with the following elements reflecting decision outcomes:
  
  \item{True Positives}{ Probability of correctly selecting a successful candidate }
  \item{False Negatives}{ Probability of incorrectly not selecting a successful candidate }
  \item{False Positives}{ Probability of incorrectly selecting an unsuccessful candidate }
  \item{True Negatives}{ Probability of correctly not selecting an unsuccessful candidate }
  \item{Sensitivity}{ True Positives / (True Positives + False Negatives)}
  \item{Specificity}{ True Negatives / (True Negatives + False Positives)}
  \item{\% of Decisions Correct}{ Percentage of correct decisions}
  \item{Proportion Selected Succesful}{ Proportion of those selected expected to be successful}
  \item{\% Improvement over BR}{ Percentage of improvement using the test over random selection}
  
  }

\references{ 

Murphy, K. R. & Davidshofer, C. O. (2005). \emph{Psychological testing: Principles and 
applications (5th ed.).} Saddle River, NJ: Prentice Hall.

}

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} }


\seealso{ \code{\link{Utility}} }

\examples{
# 50 percent of those randomly selected are expected to be successful
# A company need only select 1/10 applicants
# The correlation between test scores and performance is .35
ClassUtil(.35, .5, .1)

}
\keyword{ univar }
