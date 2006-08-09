"alpha.CI" <-
function (alpha, k, N, level=.95, onesided=TRUE)
 {
 if (!onesided) { 
 nomau <- (1 - level)/2
 nomal <- (level)/2 }
 else {
 nomau <- (1 - level)
 nomal <- (level) }
 df1 <- N-1
df2 <- (k-1)*(N-1)
Fl <- qf(nomal, df1, df2) 
Fu <- qf(nomau, df1, df2)
lcl <- 1 - (1 - alpha) * Fl
ucl <- 1 - (1 - alpha) * Fu
mat <- data.frame(LCL = lcl, ALPHA = alpha, UCL = ucl)
return(mat)
}

