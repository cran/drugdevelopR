## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(drugdevelopR)

## ----eval = FALSE-------------------------------------------------------------
#  res <- optimal_normal(Delta1 = 0.625, Delta2 = 0.8, fixed = FALSE, # treatment effect
#                        n2min = 20, n2max = 400, # sample size region
#                        stepn2 = 4, # sample size step size
#                        kappamin = 0.02, kappamax = 0.2, # threshold region
#                        stepkappa = 0.02, # threshold step size
#                        c2 = 0.675, c3 = 0.72, # maximal total trial costs
#                        c02 = 15, c03 = 20, # maximal per-patient costs
#                        b1 = 3000, b2 = 8000, b3 = 10000, # gains for patients
#                        alpha = 0.025, # significance level
#                        beta = 0.1, # 1 - power
#                        w = 0.6, in1 = 300, in2 = 600, #weight and amount of information
#                        a = 0.25, b = 0.75) #truncation values

## ----eval=TRUE, include=FALSE-------------------------------------------------
# Comment this chunk after running it once
# res <- optimal_normal(Delta1 = 0.625, Delta2 = 0.9 ,fixed = FALSE, # treatment effect
#                      n2min = 20, n2max = 400, # sample size region
#                       stepn2 = 4, # sample size step size
#                       kappamin = 0.02, kappamax = 0.1, # threshold region
#                       stepkappa = 0.02, # threshold step size
#                       c2 = 0.675, c3 = 0.72, # maximal total trial costs
#                       c02 = 15, c03 = 20, # maximal per-patient costs
#                       b1 = 3000, b2 = 8000, b3 = 10000, # gains for patients
#                       alpha = 0.025, # significance level
#                       beta = 0.1, # 1 - power
#                       w = 0.6, in1 = 300, in2 = 600, #weight and amoutn of information
#                       a = 0.25,b = 0.75) #truncation values
# saveRDS(res, file="optimal_normal_fixed_prior.RDS")

## ----eval=TRUE, include=FALSE-------------------------------------------------
res <- readRDS(file="optimal_normal_fixed_prior.RDS")

## -----------------------------------------------------------------------------
res

