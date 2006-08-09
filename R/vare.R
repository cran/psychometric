"vare" <-
function(x)
 {
n <- x$n
rb <- rbar(x)
ve <- sum(n*(1-rb^2)^2/(n-1),na.rm=T)/sum(n,na.rm=T)
return(ve)
}

