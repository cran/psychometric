\name{Utility}
\alias{Utility}
\alias{MargUtil}
\alias{TotUtil}
\title{ Marginal and Total Utility of a Test}
\description{
  Computes the marginal or total utility of a test.}

\usage{
MargUtil(Rxy, Sy, MXg, COST, Nselected)

TotUtil(Rxy, Sy, MXg, COST, Nselected)
}

\arguments{
  \item{Rxy}{ Correlation of Test X with Criterion Y }
  \item{Sy}{ Standard Deviation of Y in monetary units }
  \item{MXg}{ Mean of selected group on test X in standard score units }
  \item{COST}{ Total cost of testing }
  \item{Nselected}{ number of applicants selected}
}

\details{

\emph{Marginal utility} is the gain expected in the outcome (i.e., job performance), in 
monetary units, for a person from the predictor selected subgroup compared to a person who 
is randomly selected. 
 
\emph{Total utility} is the total gain in the outcome (i.e., job performance), in monetary units,
expected for those selected using the test.  
  
  }

\value{
  Marginal or Total Utility of a Test (a numeric value in monetary units)
  
}

\references{ 
Cascio, W. F. &  Aguinis, H. (2005). \emph{Applied Psychology in Human Resource Management 
(6th ed.)} Englewood Cliffs, NJ: Prentice-Hall.  


Murphy, K. R. & Davidshofer, C. O. (2005). \emph{Psychological testing: Principles and 
applications (5th ed.).} Saddle River, NJ: Prentice Hall.


}

\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }


\note{ Computation for marginal and total utility are:  

 MU <- Rxy*Sy*MXg - COST/Nselected \cr
 TU <- Nselected*Rxy*Sy*MXg - COST

The computation of Sy should be done locally (within an organization) and is often difficult. 

}

\seealso{ \code{\link{ClassUtil}} }


\examples{
# Rxy = .35
# Each year 72 workers are hired
# SD of performance in dollars is $4000
# 1 out of 10 applicants are selected
# cost per test = $5
# average test score for those selected = 1.76
MargUtil(.35, 4000, 1.76, 720*5, 72)
TotUtil (.35, 4000, 1.76, 720*5, 72)
}
\keyword{ univar }
