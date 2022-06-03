"ICC2.lme" <-
function (dv, grp, data, weighted=FALSE)
 {
  dv <- data %>% dplyr::select({{dv}}) %>% purrr::reduce(c)
  grp <- data %>% dplyr::select({{grp}}) %>% purrr::reduce(c) %>% factor()
  
  mod <- lme(dv ~ 1, random=~1|grp, na.action=na.omit)
  if (!weighted)
  {icc2 <-  mean(gmeanrel(mod)$MeanRel) }
  else { icc2 <-  weighted.mean(gmeanrel(mod)$MeanRel, gmeanrel(mod)$GrpSize) }
return(icc2)
 
 }

