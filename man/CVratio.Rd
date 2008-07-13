\name{CVratio}
\alias{CVratio}
\title{ Content Validity Ratio }
\description{
Computes Lawshe's CVR for determining whether items are essential or not. }
\usage{
CVratio(NTOTAL, NESSENTIAL)
}

\arguments{
  \item{NTOTAL}{ Total number of Experts}
  \item{NESSENTIAL}{ Number of Experts indicating item 'essential' }
}
\details{
  To determine content validity (in relation to job performance), a panel of
  subject matter experts will examine a set of items indicating 
  whether the items are essential, useful, not necessary. The CVR is 
  calculated to indicate whether the item is pertinent to the content validity. \cr
  
  CVR values range +1 to -1. Values closer to +1 indicated experts are in aggreement that
  the item is essential to content validity.
  
}
\value{
  Content Validity Ratio
}

\references{ 
Lawshe, C. H. (1975). A quantitative approach to content validity. \emph{Personnel Psychology, 28,}
563-575.

}

\note{ 

CVR = (Ne - N/2)/(N-1) }

\author{ Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} }


\examples{
# Using 5 Expert panelists (SMEs)
# The ratings for an item is as follows:
# Rater1 = Essential
# Rater2 = Essential
# Rater3 = Essential
# Rater4 = Useful
# Rater5 = Not necessary
# # essential = 3
CVratio (5, 3)




}
\keyword{ univar }
