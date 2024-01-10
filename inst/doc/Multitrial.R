## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(drugdevelopR)

## ----eval = FALSE-------------------------------------------------------------
#  res <- optimal_multitrial(w = 0.3,                        # define parameters for prior
#     hr1 = 0.7, hr2 = 0.8, id1 = 210, id2 = 420,            # (https://web.imbi.uni-heidelberg.de/prior/)
#     d2min = 20, d2max = 200, stepd2 = 5,                   # define optimization set for d2
#     hrgomin = 0.7, hrgomax = 0.9, stephrgo = 0.02,         # define optimization set for HRgo
#     alpha = 0.025, beta = 0.1, xi2 = 0.7, xi3 = 0.7,       # drug development planning parameters
#     c2 = 0.75, c3 = 1, c02 = 100, c03 = 150,               # define fixed and variable costs
#     K = Inf, N = Inf, S = -Inf,                            # set constraints
#     b1 = 1000, b2 = 2000, b3 = 3000,                       # define expected benefits
#     fixed = TRUE,                                          # choose if  effects are fixed or random
#     case = 3, strategy = TRUE                              # choose case and strategy
#     num_cl = 3)

## ----eval=TRUE, include=FALSE-------------------------------------------------
# Comment this chunk after running it once
# res <- optimal_multitrial(w = 0.3,                       # define parameters for prior
#   hr1 = 0.7, hr2 = 0.8, id1 = 210, id2 = 420,            # (https://web.imbi.uni-heidelberg.de/prior/)
#   d2min = 20, d2max = 200, stepd2 = 5,                   # define optimization set for d2
#   hrgomin = 0.7, hrgomax = 0.9, stephrgo = 0.02,         # define optimization set for HRgo
#   alpha = 0.025, beta = 0.1, xi2 = 0.7, xi3 = 0.7,       # drug development planning parameters
#   c2 = 0.75, c3 = 1, c02 = 100, c03 = 150,               # define fixed and variable costs
#   K = Inf, N = Inf, S = -Inf,                            # set constraints
#   b1 = 1000, b2 = 2000, b3 = 3000,                       # define expected benefits
#   fixed = TRUE,                                          # choose if  effects are fixed or random
#   case = 3, strategy = TRUE,                             # choose case and strategy
#   num_cl = 3)
# saveRDS(res, file="optimal_multitrial_case3.RDS")

## ----eval=TRUE, include=FALSE-------------------------------------------------
res <- readRDS(file="optimal_multitrial_case3.RDS")

## -----------------------------------------------------------------------------
res

