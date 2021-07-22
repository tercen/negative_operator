library(tercen)
library(dplyr)

options("tercen.workflowId" = "wwww")
options("tercen.stepId"     = "dddd")

ctx <- tercenCtx()

ctx %>% 
  select(.y) %>% 
  transmute(negative = -(.y)) %>%
  ctx$addNamespace() %>%
  ctx$save()
  