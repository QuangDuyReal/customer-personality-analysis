# Nạp thư viện cần thiết
library(dplyr)
library(lubridate)

# 1. Loại bỏ NA trong Income
customers_clean <- customers_raw %>% filter(!is.na(Income))

# 2. Tính tuổi tạm thời và lọc outlier về tuổi và thu nhập
# Sử dụng 2014 làm năm tham chiếu 
customers_filtered <- customers_clean %>%
  mutate(Age_temp = 2014 - Year_Birth) %>%
  filter(Age_temp <= 100 & Age_temp >= 18) %>% # Giữ tuổi hợp lý
  filter(Income < 600000) %>% # Loại bỏ thu nhập quá cao (có thể điều chỉnh)
  select(-Age_temp) 

nrow(customers_filtered) # Xem số quan sát còn lại