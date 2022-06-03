\name{item.exam}
\alias{item.exam}
\title{ Item Analysis }
\description{
  Conducts an item level analysis. Provides item-total correlations, Standard deviation in items,
  difficulty, discrimination, and reliability and validity indices.}
  
\usage{
item.exam(x, y = NULL, discrim = FALSE)
}
\arguments{
  \item{x}{ matrix or  data.frame of items }
  \item{y}{ Criterion variable }
  \item{discrim}{ Whether or not the discrimination of item is to be computed}
}
\details{
  If someone is interested in examining the items of a dataset contained in data.frame x, and 
  the criterion measure is also in data.frame x, one must parse the matrix or data.frame and specify
  each part into the function. See example below. Otherwise, one must be sure that x and y are properly 
  merged/matched. If one is not interested in assessing item-criterion relationships, simply leave out 
  that portion of the call. The function does not check whether the items are dichotomously coded, 
  this is user specified. As such, one can specify that items are binary when in fact they are not. This
  has the effect of computing the discrimination index for continuously coded variables. \cr
  The difficulty index (p) is simply the mean of the item. When dichotomously coded, p reflects the
  proportion endorsing the item. However, when continuously coded, p has a different interpretation.}

\value{
  A table with rows representing each item and columns repsenting :
  \item{Sample.SD }{ Standard deviation of the item}
  \item{Item.total }{ Correlation of the item with the total test score }
  \item{Item.Tot.woi}{ Correlation of item with total test score (scored without item)}
  \item{Difficulty }{ Mean of the item (p) }
  \item{Discrimination }{ Discrimination of the item (u-l)/n }
  \item{Item.Criterion }{ Correlation of the item with the Criterion (y)}
  \item{Item.Reliab }{ Item reliability index}
  \item{Item.Rel.woi }{ Item reliability index (scored without item) }
  \item{Item.Validity }{ Item validity index }
}
\references{ 
Allen, M. J. & Yen, W. M. (1979). \emph{Introduction to measurement theory.} Monterey, CA: Brooks/Cole.
}

\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }

\note{ Most all text books suggest the point-biserial correlation for the item-total. 
Since the point-biserial is equivalent to the Pearson r, the \code{cor} function is used 
to render the Pearson r for each item-total. However, it might be suggested that the 
polyserial is more appropriate. For practical purposes, the Pearson is sufficient and is
used here. \cr

If discrim = TRUE, then the discrimination index is computed and returned EVEN IF the items 
are not dichotomously coded. The interpretation of the discrimination index is then suspect. 
\code{\link{discrim}} computes the number of correct responses in the upper and lower groups by
summation of the '1s' (correct responses). When data are continuous, the discrimination index
represents the difference in the sum of the scores divided by number in each group (1/3*N).}  

\section{Warning }{ Be cautious when using data with missing values or small data sets. \cr

Listwise deletion is employed for both X (matrix of items to be analyzed) and Y (criterion). 
When the datasets are small, such listwise deletion can make a big impact. Further, since the 
upper and lower groups are defined as the upper and lower 1/3, the stability of this division of 
examinees is greatly increased with larger N.} 

\seealso{  \code{\link{alpha}}, \code{\link{discrim}} }

\examples{

data(TestScores)
# Look at the data
TestScores
# Examine the items
item.exam(TestScores[,1:10], y = TestScores[,11], discrim=TRUE)

}

\keyword{ models }
\keyword{ univar }
