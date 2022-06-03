"ICC1.lme" <-
function (dv, grp, data)
 {
  dv <- data %>% dplyr::select({{dv}}) %>% purrr::reduce(c)
  grp <- data %>% dplyr::select({{grp}}) %>% purrr::reduce(c)
  mod <- lme(dv ~ 1, random=~1|grp, na.action=na.omit)
  
  t0 <- as.numeric(VarCorr(mod)[1,1])
  sig2 <- as.numeric(VarCorr(mod)[2,1])
  icc1 <- t0/(t0+sig2)
 return(icc1)
  }

