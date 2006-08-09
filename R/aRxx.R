"aRxx" <-
function(x)
 {
 Rxx <- x$Rxx
 n <- length (x$Rxx[!(is.na(x$Rxx))])
 a <- mean(sqrt(Rxx),na.rm=T)
 va <- var(sqrt(Rxx),na.rm=T)*(n-1)/n
 out <- list(a,va)
 return(out)
 }

