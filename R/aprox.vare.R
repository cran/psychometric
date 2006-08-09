"aprox.vare" <-
function(x)
 {
n <- x$n
rb <- rbar(x)
ve <- (1-rb^2)^2/(mean(n, na.rm=T)-1)
return(ve)
}

