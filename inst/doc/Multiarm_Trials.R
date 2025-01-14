## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(drugdevelopR)

## ----eval = FALSE-------------------------------------------------------------
# res <- optimal_multiarm(hr1 = 0.75, hr2 = 0.80, ec = 0.6, # define assumed true HRs and control arm event rate
#    n2min = 100, n2max = 200, stepn2 = 10,                 # define optimization set for n2
#    hrgomin = 0.76, hrgomax = 0.9, stephrgo = 0.02,        # define optimization set for HRgo
#    alpha = 0.025, beta = 0.1,                             # drug development planning parameters
#    c2 = 0.75, c3 = 1, c02 = 100, c03 = 150,               # define fixed and variable costs for phase II and III
#    b1 = 1000, b2 = 2000, b3 = 3000,                       # gains for each effect size category
#    strategy = 3,
#    num_cl = 3)

## ----eval=TRUE, include=FALSE-------------------------------------------------
# Comment this chunk after running it once
# res <- optimal_multiarm(hr1 = 0.75, hr2 = 0.80, ec = 0.6,# define assumed true HRs and control arm event rate
#   n2min = 100, n2max = 200, stepn2 = 10,                 # define optimization set for n2
#   hrgomin = 0.76, hrgomax = 0.9, stephrgo = 0.02,        # define optimization set for HRgo
#   alpha = 0.025, beta = 0.1,                             # drug development planning parameters
#   c2 = 0.75, c3 = 1, c02 = 100, c03 = 150,               # define fixed and variable costs for phase II and III
#   b1 = 1000, b2 = 2000, b3 = 3000,                       # gains for each effect size category
#   strategy = 3,
#   num_cl = 3)
# saveRDS(res, file="optimal_multiarm.RDS")

## ----eval=TRUE, include=FALSE-------------------------------------------------
res <- readRDS(file="optimal_multiarm.RDS")

## -----------------------------------------------------------------------------
res

