library(rpart)
library(jsonlite)
load("decision_Tree_for_german_credit_data.RData")

#* @post /predict
predict.default.rate <- function(
  Status.of.existing.checking.account
  , Duration.in.month
  , Credit.history
  , Savings.account.bonds
) {
  data <- list(
    Status.of.existing.checking.account=Status.of.existing.checking.account
    , Duration.in.month=Duration.in.month
    , Credit.history=Credit.history
    , Savings.account.bonds=Savings.account.bonds
  )
  prediction <- predict(decision.tree, data)
  return(list(default.probability=unbox(prediction[1, 2])))
}
