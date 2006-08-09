"SERHOM" <-
function (x)
 {
 N <- sum(x$n,na.rm=T)
rb <- rbar(x)
k <- length (x$Rxy[!(is.na(x$Rxy))])
se <- (1-rb^2)/sqrt(N-k)
return(se)
}

