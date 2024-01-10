## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(drugdevelopR)

## ----eval=TRUE, include=FALSE-------------------------------------------------
res <- readRDS(file="optimal_normal_basic_setting.RDS")

## -----------------------------------------------------------------------------
res

## ----eval = FALSE-------------------------------------------------------------
#   resK <- optimal_normal(Delta1 = 0.625, fixed = TRUE, # treatment effect
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
#                         a = NULL,b = NULL, # setting all unneeded parameters to NULL
#                         K = 200 # cost constraint
#                         )

## ----eval=TRUE, include=FALSE-------------------------------------------------
# Comment this chunk after running it once
#  resK <- optimal_normal(Delta1 = 0.625, fixed = TRUE, # treatment effect
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
#                        a = NULL,b = NULL,
#                        K = 200) # setting all unneeded parameters to NULL
# saveRDS(resK, file="optimal_normal_cost_constraint.RDS")

## ----eval=TRUE, include=FALSE-------------------------------------------------
resK <- readRDS(file="optimal_normal_cost_constraint.RDS")

## -----------------------------------------------------------------------------
resK

## ----eval = FALSE-------------------------------------------------------------
#   resN <- optimal_normal(Delta1 = 0.625, fixed = TRUE, # treatment effect
#                         n2min = 20, n2max = 400, # sample size region
#                         stepn2 = 4, # sample size step size
#                         kappamin = 0.02, kappamax = 0.2, # threshold region
#                         stepkappa = 0.02, # threshold step size
#                         c2 = 0.675, c3 = 0.72, # maximal total trial costs
#                         c02 = 15, c03 = 20, # maximal per-patient costs
#                         b1 = 3000, b2 = 8000, b3 = 10000, # gains for patients
#                         alpha = 0.025, # significance level
#                         beta = 0.1, # 1 - power
#                         Delta2 = NULL, w = NULL, in1 = NULL, in2 = NULL,
#                         a = NULL,b = NULL, # setting all unneeded parameters to NULL
#                         N = 200 # sample size constraint
#                         )

## ----eval=TRUE, include=FALSE-------------------------------------------------
# Comment this chunk after running it once
#  resN <- optimal_normal(Delta1 = 0.625, fixed = TRUE, # treatment effect
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
#                        a = NULL,b = NULL,
#                        N = 200)
# saveRDS(resN, file="optimal_normal_sample_size_constraint.RDS")

## ----eval=TRUE, include=FALSE-------------------------------------------------
resN <- readRDS(file="optimal_normal_sample_size_constraint.RDS")

## -----------------------------------------------------------------------------
resN

## ----eval = FALSE-------------------------------------------------------------
#   resS <- optimal_normal(Delta1 = 0.625, fixed = TRUE, # treatment effect
#                         n2min = 20, n2max = 400, # sample size region
#                         stepn2 = 4, # sample size step size
#                         kappamin = 0.02, kappamax = 0.2, # threshold region
#                         stepkappa = 0.02, # threshold step size
#                         c2 = 0.675, c3 = 0.72, # maximal total trial costs
#                         c02 = 15, c03 = 20, # maximal per-patient costs
#                         b1 = 3000, b2 = 8000, b3 = 10000, # gains for patients
#                         alpha = 0.025, # significance level
#                         beta = 0.1, # 1 - power
#                         Delta2 = NULL, w = NULL, in1 = NULL, in2 = NULL,
#                         a = NULL,b = NULL, # setting all unneeded parameters to NULL
#                         S = 0.87 #minimum success probability
#                         )

## ----eval=TRUE, include=FALSE-------------------------------------------------
# Comment this chunk after running it once
#  resS <- optimal_normal(Delta1 = 0.625, fixed = TRUE, # treatment effect
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
#                        a = NULL,b = NULL,
#                        S = 0.87) # setting all unneeded parameters to NULL
# saveRDS(resS, file="optimal_normal_probability_constraint.RDS")

## ----eval=TRUE, include=FALSE-------------------------------------------------
resS <- readRDS(file="optimal_normal_probability_constraint.RDS")

## -----------------------------------------------------------------------------
resS

## ----eval = FALSE-------------------------------------------------------------
#   res <- optimal_normal(Delta1 = 0.625, fixed = TRUE, # treatment effect
#                         n2min = 20, n2max = 400, # sample size region
#                         stepn2 = 4, # sample size step size
#                         kappamin = 0.02, kappamax = 0.2, # threshold region
#                         stepkappa = 0.02, # threshold step size
#                         c2 = 0.675, c3 = 0.72, # maximal total trial costs
#                         c02 = 15, c03 = 20, # maximal per-patient costs
#                         b1 = 3000, b2 = 8000, b3 = 10000, # gains for patients
#                         alpha = 0.025, # significance level
#                         beta = 0.1, # 1 - power
#                         Delta2 = NULL, w = NULL, in1 = NULL, in2 = NULL,
#                         a = NULL,b = NULL, # setting all unneeded parameters to NULL
#                         steps1 = 0.1, stepm1 = 0.6, stepl1 = 1 # step sizes for effect size categories
#                         )

## ----eval = FALSE-------------------------------------------------------------
#   resII <- optimal_normal(Delta1 = 0.625, fixed = TRUE, # treatment effect
#                         n2min = 20, n2max = 400, # sample size region
#                         stepn2 = 4, # sample size step size
#                         kappamin = 0.02, kappamax = 0.2, # threshold region
#                         stepkappa = 0.02, # threshold step size
#                         c2 = 0.675, c3 = 0.72, # maximal total trial costs
#                         c02 = 15, c03 = 20, # maximal per-patient costs
#                         b1 = 3000, b2 = 8000, b3 = 10000, # gains for patients
#                         alpha = 0.025, # significance level
#                         beta = 0.1, # 1 - power
#                         Delta2 = NULL, w = NULL, in1 = NULL, in2 = NULL,
#                         a = NULL,b = NULL, # setting all unneeded parameters to NULL
#                         skipII = TRUE #skipping phase II
#                         )

## ----eval=TRUE, include=FALSE-------------------------------------------------
# Comment this chunk after running it once
#  resII <- optimal_normal(Delta1 = 0.625, fixed = TRUE, # treatment effect
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
#                        a = NULL,b = NULL,
#                        skipII = TRUE)
# saveRDS(resII, file="optimal_normal_skipII.RDS")

## ----eval=TRUE, include=FALSE-------------------------------------------------
resII <- readRDS(file="optimal_normal_skipII.RDS")

## -----------------------------------------------------------------------------
resII

