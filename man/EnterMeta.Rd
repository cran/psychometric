\name{EnterMeta}
\alias{EnterMeta}
\title{ Enter Meta-Analysis Data}
\description{
  This function creates data entry object suitable for creating an object needed
  in the typical meta-analysis. The object will have the appropriate variable names.
  }
\usage{
EnterMeta()
}
\details{
To create a data object appropriate for the meta-analysis functions in this package:
Type \cr
my.Meta.data <- EnterMeta() \cr
Then use the data editor to enter data in the appropriate columns. 
}
\value{
Does not return a value, but rather is used for naming columns of a data.frame()
The final object (if saved) will contain: \cr

 \item{study }{ Enter Study Code or article name}
 \item{Rxy }{ Correlation coefficient}
 \item{n }{ Sample size for study}
 \item{Rxx }{ Reliability of predictor variable X }
 \item{Ryy }{ Reliability of criterion variable Y}
 \item{u }{ Degree of range restriction - ratio of restricted to unrestricted standard deviations}
 \item{moderator }{ moderator variable (if any)}
}

\author{Thomas D. Fletcher \email{tom.fletcher.mp7e@statefarm.com} }

\note{ This is the general format required for data objects used for all the meta-analysis 
functions in this package. If certain variables are empty (e.g., Rxx, u), then the appropriate
correction is not made, but the placeholder must be there. Moderator is useful for the user 
to subset the data and re-run any functions. }

\section{Warning }{ This function will not automatically save your data object. You must create the
object using the assignment operator. } 


\seealso{ As an alternative, consider \code{\link{read.csv}} for importing data prepared 
elsewhere (e.g., Excel)}

\examples{

# my.data <- EnterMeta()
}
\keyword{ manip }
