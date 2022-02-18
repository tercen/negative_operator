library(tercen)
library(dplyr)

options("tercen.workflowId" = "afd1de9b7dc4907294ea74bfec00293b")
options("tercen.stepId"     = "3f7c3c5e-a73b-49b0-88e5-3acb60b0ed80")

ctx <- tercenCtx()

ctx %>% 
  select(.y) %>% 
  transmute(negative = -(.y)) %>%
  ctx$addNamespace() %>%
  ctx$save()
  