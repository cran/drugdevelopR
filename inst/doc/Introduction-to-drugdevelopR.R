## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(drugdevelopR)

## ----eval = FALSE-------------------------------------------------------------
#   res <- optimal_normal(Delta1 = 0.625, fixed = TRUE, # treatment effect
#                         n2min = 20, n2max = 400, # sample size region
#                         stepn2 = 4, # sample size step size
#                         kappamin = 0.02, kappamax = 0.2, # threshold region
#                         stepkappa = 0.02, # threshold step size
#                         c2 = 0.675, c3 = 0.72, # maximal total trial costs
#                         c02 = 15, c03 = 20, # maximal per-patient costs
#                         b1 = 3000, b2 = 8000, b3 = 10000, # gains for patients
#                         alpha = 0.025, # one-sided significance level
#                         beta = 0.1, # 1 - power
#                         Delta2 = NULL, w = NULL, in1 = NULL, in2 = NULL,
#                         a = NULL,b = NULL) # setting all unneeded parameters to NULL

## ----eval=TRUE, include=FALSE-------------------------------------------------
# Comment this chunk after running it once
#  res <- optimal_normal(Delta1 = 0.625, fixed = TRUE, # treatment effect
#                        n2min = 20, n2max = 400, # sample size region
#                        stepn2 = 4, # sample size step size
#                        kappamin = 0.02, kappamax = 0.2, # threshold region
#                        stepkappa = 0.02, # threshold step size
#                        c2 = 0.675, c3 = 0.72, # maximal total trial costs
#                        c02 = 15, c03 = 20, # maximal per-patient costs
#                        b1 = 3000, b2 = 8000, b3 = 10000, # gains for patients
#                        alpha = 0.025, # significance level
#                        beta = 0.1, # 1 - power
#                        Delta2 = NULL, w = NULL, in1 = NULL, in2 = NULL,
#                        a = NULL,b = NULL) # setting all unneeded parameters to NULL
# saveRDS(res, file="optimal_normal_basic_setting.RDS")

## ----eval=TRUE, include=FALSE-------------------------------------------------
res <- readRDS(file="optimal_normal_basic_setting.RDS")

## -----------------------------------------------------------------------------
res

