"item.exam" <-
function(x, y=NULL, binary=FALSE)
{
x <- na.exclude(as.matrix(x))
if (!binary) {discrim <- NA}
else {discrim <- discrim(x)}
k <- ncol(x)
n <- nrow(x)
TOT <- apply(x, 1, mean)
diff <- apply(x, 2, mean)
rix <- cor(x,TOT)
sx <- apply(x,2,sd)
vx <- ((n-1)/n)*sx^2# population variance for each item
if (is.null(y)) {riy <- NA} 
else { y <- y 
riy <- cor(x,y, use="complete") }
i.val <- riy*sqrt(vx)
i.rel <- rix*sqrt(vx)
mat <- data.frame(Sample.SD = sx, Item.total = rix, 
Difficulty = diff, Discrimination = discrim, 
Item.Criterion = riy, Item.Reliab = i.rel, Item.Validity = i.val)
return(mat)
}

