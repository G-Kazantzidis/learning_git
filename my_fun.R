even_odd<-function (x) 
{
  res<-ifelse( round(x/2) == x/2 , "even", "odd" )
  return(res)
}


all_fac <- function(x) {
  x <- as.integer(x)
  div <- seq_len(abs(x))
  factors <- div[x %% div == 0L]
  factors <- list(neg = -factors, pos = factors)
  return(factors)
}


all_fac_l <- function(li) 
{
  num<-length(li[[1]])
  facto<-list()
  for( i in 1:num)
  {
    facto[[i]] <- all_factors(li[[1]][i])$pos
    
  }
  return(facto) 
}

my.lm<- function(dat)
{
  res<-summary(lm(y~x, data = dat))
  return(res$coef[c(1,2),4])
}

my.test<- function(df1, df2) 
{
  step1<- df1$y - df1$x
  estimator <- mean(step1)
  fit_pred<-df1$x + estimator
  resid_fit<- fit_pred - df1$y
  pred_val<-df2$x + estimator
  error_pre<-df2$y - pred_val
  return(list(fit_pred ,resid_fit, pred_val,error_pre ))
}
