"varr" <-
function(x)
 {
rxy <- x$Rxy
n <- x$n
rb <- rbar(x)
vr <- sum(n*(rxy-rb)^2,na.rm=T)/sum(n,na.rm=T)
return(vr)
}

