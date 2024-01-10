## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(drugdevelopR)

## ----eval = FALSE-------------------------------------------------------------
#  res <- optimal_binary(p0 = 0.5, p11 =  0.3,               # probabilities of the unfavorable outcome
#     n2min = 20, n2max = 400, stepn2 = 4,                   # define optimization set for n2
#     rrgomin = 0.7, rrgomax = 0.9, steprrgo = 0.01,         # define optimization set for RRgo
#     alpha = 0.025, beta = 0.1,                              # drug development planning parameters
#     c2 = 0.75, c3 = 1, c02 = 100, c03 = 150,               # define fixed and variable costs for phase II and III,
#     K = Inf, N = Inf, S = -Inf,                            # constraints
#     steps1 = 1, stepm1 = 0.95,  stepl1 = 0.85,             # treatment effect size categories as proposed by IQWiG (2016)
#     b1 = 1000, b2 = 2000, b3 = 3000,                       # expected benefit categories
#     w = 0.3, p12 = 0.5, in1 = 30, in2 = 60,                # prior (https://web.imbi.uni-heidelberg.de/prior/)
#     gamma = 0,                                             # population structures in phase II and III
#     fixed = TRUE,                                          # choose if true treatment effects are fixed or random
#     skipII = FALSE,                                        # choose if skipping phase II would be an option
#     num_cl = 1)

## ----eval=TRUE, include=FALSE-------------------------------------------------
# Comment this chunk after running it once
# res <- optimal_binary(p0 = 0.5, p11 =  0.3,               # probabilities of the unfavorable outcome
#   n2min = 20, n2max = 400, stepn2 = 4,                   # define optimization set for n2
#   rrgomin = 0.7, rrgomax = 0.9, steprrgo = 0.01,         # define optimization set for RRgo
#   alpha = 0.025, beta = 0.1,                              # drug development planning parameters
#   c2 = 0.75, c3 = 1, c02 = 100, c03 = 150,               # define fixed and variable costs for phase II and III,
#   K = Inf, N = Inf, S = -Inf,                            # constraints
#   steps1 = 1, stepm1 = 0.95,  stepl1 = 0.85,             # treatment effect size categories as proposed by IQWiG (2016)
#   b1 = 1000, b2 = 2000, b3 = 3000,                       # expected benefit categories
#   w = 0.3, p12 = 0.5, in1 = 30, in2 = 60,                # prior (https://web.imbi.uni-heidelberg.de/prior/)
#   gamma = 0,                                             # population structures in phase II and III
#   fixed = TRUE,                                          # choose if true treatment effects are fixed or random
#   skipII = FALSE,                                        # choose if skipping phase II would be an option
#   num_cl = 1)
# saveRDS(res, file="optimal_binary_basic_setting.RDS")

## ----eval=TRUE, include=FALSE-------------------------------------------------
res <- readRDS(file="optimal_binary_basic_setting.RDS")

## -----------------------------------------------------------------------------
res

