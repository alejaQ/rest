library(plumber)
r <- plumb("deploy_ml_credit_model.R")
r$run(port=8000)
