library(tercen)
library(dplyr)

(ctx = tercenCtx()) %>% 
  select(.y) %>% 
  transmute(negative = -(.y)) %>%
  ctx$addNamespace() %>%
  ctx$save()
  