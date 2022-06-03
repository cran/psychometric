\name{SpearmanBrown}
\alias{SBrel}
\alias{SBlength}
\alias{SpearmanBrown}
\title{ Spearman-Brown Prophecy Formulae}
\description{
  These two functions are various manipulations of the Spearman-Brown Prophecy Formula. 
  They are useful in determining relibility if test length is changed or length of
  a new test if reliability were to change.}
\usage{
SBrel(Nlength, rxx)

SBlength(rxxp, rxx)
}
\arguments{
  \item{Nlength}{ New length of a test in relation to original}
  \item{rxx}{ reliability of test x }
   \item{rxxp}{ reliability of desired (parallel) test x }

}
\details{ Nlength represents a ratio of new to original. If the new test has 10 items, and the
original test has 5 items, Nlength is 2. Likewise, if the original test has 5 items, and the new
test has 10 items, Nlength is .5. In general, researchers should aim for reliabilities > .9. 

\code{SBrel} is used to address the question, what if I increased/decreased my test length? 
What will the new reliability be? This is used when computing split-half reliabilities
and when when concerned about reducing test length. \cr
\code{SBlength} is used to address the question, how long must my test be (in relation to the 
original test) in order to achieve a desired reliability? \cr
The formulae for each are: \cr
rxxp <- Nlength*rxx/(1+(Nlength-1)*rxx) \cr
N <- rxxp*(1-rxx)/(rxx*(1-rxxp))
  
  }
\value{
  \item{rxxp }{the prophesized reliability }
  \item{N }{Ratio of new test length to original test length }
  
}
\references{
Allen, M. J. & Yen, W. M. (1979). \emph{Introduction to measurement theory.} Monterey, CA: Brooks/Cole.
}
\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }

\seealso{ \code{\link{alpha}} }
\examples{
# Given a test with rxx = .7, 10 items
# Desire a test with rxx=.9, how many items are needed?
new.length <- SBlength(.9, .7)
new.length * 10
# 39 items are needed
# what is the reliability of a test 1/2 as long
SBrel(.5, .7)
}
\keyword{ univar }
\keyword{ models }
