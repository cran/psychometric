\name{artifacts}
\alias{aRxx}
\alias{bRyy}
\alias{cRR}
\title{ Artifact Distribtutions Used in Meta-Analysis}
\description{
  Three artifact distributions are computed with each of these three
  functions which are then used to correct the observed sample-weighted
  mean correlation for attenuation. The artifacts are reliability in predictor, 
  reliability in criterion, and range-restriction.
}
\usage{
aRxx(x)
bRyy(x)
cRR(x)

}

\arguments{
  \item{x}{ A matrix or data.frame with columns Rxx, Ryy, and u: see \code{\link{EnterMeta}}}
}

\details{
 \itemize{
\item \emph{aRxx } Distribution of measurement error in the predictor: a = sqrt(Rxx)
\item \emph{bRyy } Distribution of measurement error in the criterion: b = sqrt(Ryy)
\item \emph{cRR } Degree of range restriction indicated by ratio u \cr
(restricted SD/unrestricted SD): \eqn{c = sqrt((1-u^2)*rb^2+u^2) }. 
}
These are used in the computation of the compound attentuation factor \code{\link{CAFAA}} = 
mean(a)*mean(b)*mean(c).

}

\value{
 A list containing:
 \item{ma }{ Mean of a (or b or c)}
 \item{va }{ Variance of a (or b or c)}
  
}

\references{ 
Arthur, Jr., W., Bennett, Jr., W., and Huffcutt, A. I. (2001) 
\emph{Conducting Meta-analysis using SAS.}
Mahwah, NJ: Erlbaum.

Hunter, J.E. and Schmidt, F.L. (2004). \emph{Methods of meta-analysis: 
Correcting error and bias in research findings (2nd ed.).} Thousand Oaks: Sage Publications.

Hunter, J.E., Schmidt, F.L., and Jackson, G.B. (1982). \emph{Meta-analysis: 
Cumulating research findings across studies.} Beverly Hills: Sage Publications.
}

\author{ Thomas D. Fletcher \email{t.d.fletcher05@gmail.com} }

\note{ One usually will not use these functions alone, but rather use functions that make use of 
these correction factors. }

\seealso{ \code{\link{rhoCA}}, \code{\link{varAV}}, \code{\link{varResT}}, \code{\link{pvaaa}}  }

\examples{

# From Arthur et al
data(ABHt32)
aRxx(ABHt32)
bRyy(ABHt32)
cRR(ABHt32)
rhoCA(ABHt32)

# From Hunter et al
data(HSJt35)
aRxx(HSJt35)
bRyy(HSJt35)
cRR(HSJt35)
rhoCA(HSJt35)

}
\keyword{ univar }
\keyword{ models }
