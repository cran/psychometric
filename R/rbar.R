"rbar" <-
function(x)
{
rxy <- x$Rxy
n <- x$n
rbar <- sum(n*rxy, na.rm=T)/sum(n,na.rm=T)
return(rbar)
}

