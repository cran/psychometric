"bRyy" <-
function(x)
 {
 Ryy <- x$Ryy
 n <- length (x$Ryy[!(is.na(x$Ryy))])
 b <- mean(sqrt(Ryy),na.rm=T)
 vb <- var(sqrt(Ryy),na.rm=T)*(n-1)/n
 out <- list(b,vb)
 return(out)
 }

