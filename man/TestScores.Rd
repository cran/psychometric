\name{TestScores}
\alias{TestScores}
\docType{data}
\title{Fictitious Test Scores for Illustrative Purposes}
\description{
  These data were created to correspond to scores for 30 examinees on 10 items
  of test X plus a score on criterion Y. }
\usage{data(TestScores)}

\format{
  A matrix with 30 observations on the following 11 variables.
  \describe{
    \item{\code{i1}}{ item1 on test x}
    \item{\code{i2}}{ item2 on test x}
    \item{\code{i3}}{ item3 on test x}
    \item{\code{i4}}{ item4 on test x}
    \item{\code{i5}}{ item5 on test x}
    \item{\code{i6}}{ item6 on test x}
    \item{\code{i7}}{ item7 on test x}
    \item{\code{i8}}{ item8 on test x}
    \item{\code{i9}}{ item9 on test x}
    \item{\code{i10}}{ item10 on test x}
    \item{\code{y}}{ Score on criterion Y}
}    
  }

\details{ These data are constructed such that items 1 - 10 are coded 0,1 for incorrect/correct
responses. The data illustate that some items are better for maintaining internal consistency, 
whereas others may be more useful for relating to external criteria. }
  
\seealso{\code{\link{item.exam}}}

\examples{
data(TestScores)
str(TestScores) 
item.exam(TestScores[,1:10], y = TestScores[,11], discrim=TRUE)
alpha(TestScores[,1:10])
}
\keyword{datasets}
