source("io/read_data.R")
source("exceptions/error_handlers.R")

library(dplyr)

handle_error({
  
  # Session -> Set working directory to source file location
  # The datasets have to be in the module structure
  
  df <- read_data("data/marketing_campaign.csv")
  if (!is.null(df)) {
    print(head(df))
  }
})
