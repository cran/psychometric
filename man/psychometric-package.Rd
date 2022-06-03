\name{psychometric-package}
\alias{psychometric-package}
\alias{psychometric}
\alias{apt}
\docType{package}
\title{
Applied Psychometric Theory}
\description{
Provides tools useful for measurement theory (Allen & Yen 2001)<ISBN: 157766230X>, 
meta-analysis (validity-generalization) (Schmidt & Hunter)<doi:10.4135/9781483398105>, reliability, 
item analysis, inter-rater reliability, classical utility,
and correlation analysis  (Cohen et. al. 2003)<doi:10.4324/9780203774441> }
\details{
\tabular{ll}{
Package: \tab psychometric \cr
Type: \tab Package \cr
Version: \tab 2.3 \cr
Date: \tab 2022-05-27 \cr
License: \tab GPL (version 2.0 or later) \cr
}

The tools in this package correspond to  basic concepts encountered in an introductory course in 
Psychometric Theory at the Graduate level. It is especially useful for Industrial/Organizational
Psychologists, but will be useful for any student or practitioner of psychometric theory. I originally
developed this package to correspond with concepts covered illustrated in PSYC 7429 at the 
University of MO - St. Louis course in Psychometric Theory.
}
\author{


Thomas D. Fletcher\cr

Maintainer: Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} \cr
}

\keyword{ package }
\seealso{
 \code{multilevel-package}
 \code{ltm-package}
 \code{psy-package}
 \code{polycor-package}
 \code{nlme-package}
 }

\examples{
# Convert Pearson r to Fisher z'
r2z (.51)
# Convert Fisher z' to r
z2r (.563)

# Construct a CI about a True Score
# Observed = 700, Test Ave. = 500, SD = 100, and reliability = .9
CI.tscore (700, 500, 100, .9)

# Compute the classical utility of a test
# Assuming base-rate = .5, selection ratio = .5 and rxy = .5
ClassUtil(rxy=.5, BR=.5, SR=.5)

# Examine test score items
data(TestScores)
item.exam(TestScores[,1:10], y = TestScores[,11], discrim=TRUE)

}