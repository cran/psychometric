\name{discrim}
\alias{discrim}
\title{ Item Discrimination }
\description{
Discrimination of an item is the ability for a specific item to distinguish among upper 
and lower ability individuals on a test}
\usage{
discrim(x)
}
\arguments{
  \item{x}{ matrix or data.frame of items to be examined. Rows represent persons, 
  Columns represent items }
}
\details{
The function takes data on individuals and their test scores and computes a total score to 
separate high and low ordered individuals. The upper and lower groups are defined as the top and 
bottom 1/3 of the total. Discrimination is then computed and returned for each item using the formula: \cr
(number correct in the upper group - number correct in the lower group ) / size of each group
  
  }
\value{
Discrimination index for each item in the data.frame or matrix analyzed.

}
\references{ 
Allen, M. J. & Yen, W. M. (1979). \emph{Introduction to measurement theory.} Monterey, CA: Brooks/Cole.
}

\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }

\note{ \code{discrim} is used by \code{\link{item.exam}} \code{discrim} is especially useful for 
dichotomously coded items such as correct/incorrect. If items are not dischotomously coded, the
interpretation of \code{discrim} has less meaning. }

 
\seealso{ \code{\link{item.exam}} }

\examples{
# see item.exam
# Scores on a test for 12 individuals
# 1 = correct
item1 <- c(1,1,1,0,1,1,1,1,1,1,0,1)
item2 <- c(1,0,1,1,1,1,1,1,1,1,1,0)
item3 <- c(1,1,1,1,1,1,1,1,1,1,1,1)
item4 <- c(0,1,0,1,0,1,0,1,1,1,1,1)
item5 <- c(0,0,0,0,1,0,0,1,1,1,1,1)
item6 <- c(0,0,0,0,0,0,1,0,0,1,1,1)
item7 <- c(0,0,0,0,0,0,0,0,1,0,0,0)
exam <- cbind(item1, item2, item3, item4, item5, item6, item7)
discrim(exam)


  }
\keyword{ models }
\keyword{ univar }
