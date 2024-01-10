## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(drugdevelopR)

## ----eval = FALSE-------------------------------------------------------------
#  set.seed(123)
#  res1 <- optimal_multiple_tte(hr1 = 0.8, hr2 = 0.75,                   # define assumed true HRs
#                      id1 = NULL, id2 = NULL,
#                      n2min = 20, n2max = 400, stepn2 = 10,             # define optimization set for n2
#                      hrgomin = 0.7, hrgomax = 0.9, stephrgo = 0.05,    # define optimization set for HRgo
#                      alpha = 0.025, beta = 0.1,                        # drug development planning parameters
#                      c2 = 0.75, c3 = 1, c02 = 100, c03 = 150,          # define costs for phase II and III
#                      K = Inf, N = Inf, S = -Inf,                       # set constraints
#                      steps1 = 1,  stepm1 = 0.95,  stepl1 = 0.85,       # effect size categories
#                      b11 = 1000, b21 = 2000, b31 = 3000,
#                      b12 = 1000, b22 = 1500, b32 = 2000,               # define expected benefits (both categories)
#                      rho = 0.6, fixed = TRUE,                          # correlation and treatment effect
#                      num_cl = 2)

## ----eval=TRUE, include=FALSE-------------------------------------------------
# Comment this chunk after running it once
# set.seed(123)
# res1 <- optimal_multiple_tte(hr1 = 0.8, hr2 = 0.75,                   # define assumed true HRs
#                    id1 = NULL, id2 = NULL,
#                    n2min = 20, n2max = 400, stepn2 = 10,             # define optimization set for n2
#                    hrgomin = 0.7, hrgomax = 0.9, stephrgo = 0.05,    # define optimization set for HRgo
#                    alpha = 0.025, beta = 0.1,                        # drug development planning parameters
#                    c2 = 0.75, c3 = 1, c02 = 100, c03 = 150,          # define costs for phase II and III
#                    K = Inf, N = Inf, S = -Inf,                       # set constraints
#                    steps1 = 1,  stepm1 = 0.95,  stepl1 = 0.85,       # effect size categories
#                    b11 = 1000, b21 = 2000, b31 = 3000,
#                    b12 = 1000, b22 = 1500, b32 = 2000,               # define expected benefits (both categories)
#                    rho = 0.6, fixed = TRUE,                          # correlation and treatment effect
#                    num_cl = 2)
# saveRDS(res1, file="optimal_multiple_tte.RDS")

## ----eval=TRUE, include=FALSE-------------------------------------------------
res1 <- readRDS(file="optimal_multiple_tte.RDS")

## -----------------------------------------------------------------------------
res1

## ----eval = FALSE-------------------------------------------------------------
#  set.seed(123)
#  res2 <- optimal_multiple_normal(Delta1 = 0.8, Delta2 = 0.5,  # define assumed true treatment effects
#     in1= NULL, in2= NULL, sigma1 = 2, sigma2= 1,              # standard deviations
#     n2min = 20, n2max = 200, stepn2 = 10,                     # define optimization set for n2
#     kappamin = 0.02, kappamax = 0.2, stepkappa = 0.02,        # define optimization set for HRgo
#     alpha = 0.025, beta = 0.1,                                # drug development planning parameters
#     c2 = 0.75, c3 = 1, c02 = 100, c03 = 150,                  # define fixed and variable costs for phase II and III
#     K = Inf, N = Inf, S = -Inf,                               # set constraints
#     steps1 = 0,  stepm1 = 0.5, stepl1 = 0.8,                  # benefit categories
#     b1 = 1000, b2 = 2000, b3 = 3000,                          # define expected benefits
#     rho = 0.5, relaxed = TRUE,                                # relaxed "TRUE"
#     fixed = TRUE,                                             # fixed treatment effect
#     num_cl = 2)

## ----eval=TRUE, include=FALSE-------------------------------------------------
# Comment this chunk after running it once
# set.seed(123)
# res2 <- optimal_multiple_normal(Delta1 = 0.8, Delta2 = 0.5, # define assumed true treatment effects
#   in1= NULL, in2= NULL, sigma1 = 2, sigma2= 1,              # standard deviations
#   n2min = 20, n2max = 200, stepn2 = 10,                     # define optimization set for n2
#   kappamin = 0.02, kappamax = 0.2, stepkappa = 0.02,        # define optimization set for HRgo
#   alpha = 0.025, beta = 0.1,                                # drug development planning parameters
#   c2 = 0.75, c3 = 1, c02 = 100, c03 = 150,                  # define fixed and variable costs for phase II and III
#   K = Inf, N = Inf, S = -Inf,                               # set constraints
#   steps1 = 0,  stepm1 = 0.5, stepl1 = 0.8,                  # benefit categories
#   b1 = 1000, b2 = 2000, b3 = 3000,                          # define expected benefits
#   rho = 0.5, relaxed = TRUE,                                # relaxed "TRUE"
#   fixed = TRUE,                                             # fixed treatment effect
#   num_cl = 6)
# saveRDS(res2, file="optimal_multiple_normal.RDS")

## ----eval=TRUE, include=FALSE-------------------------------------------------
res2 <- readRDS(file="optimal_multiple_normal.RDS")

## -----------------------------------------------------------------------------
res2

