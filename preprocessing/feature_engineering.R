# Tìm ngày đăng ký cuối cùng làm mốc
max_date <- max(as.Date(customers_filtered$Dt_Customer, format="%d-%m-%Y"), na.rm = TRUE)

customers_final <- customers_filtered %>%
  mutate(
    Age = 2014 - Year_Birth,
    total_spent = MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds,
    log_total_spent = log1p(total_spent), 
    Child_Total = Kidhome + Teenhome,
    AcceptedCmp_Total = AcceptedCmp1 + AcceptedCmp2 + AcceptedCmp3 + AcceptedCmp4 + AcceptedCmp5,
    Days_Customer = as.numeric(max_date - as.Date(Dt_Customer, format="%d-%m-%Y"))
  ) %>%
  # Chọn các cột cuối cùng 
  select(
    # Các biến độc lập (Predictors)
    Education, Marital_Status, Income, Recency, Complain, Age, Child_Total, 
    AcceptedCmp_Total, Days_Customer, 
    NumDealsPurchases, NumWebPurchases, NumCatalogPurchases, NumStorePurchases, NumWebVisitsMonth,
    # Các biến mục tiêu (Outcomes)
    Response,           # Cho Logistic Regression & RF Phân loại
    log_total_spent,    # Cho RF Hồi quy
    total_spent         # Giữ lại để EDA và diễn giải K-Means
  ) %>%
  # Chuyển đổi các biến ký tự thành factor
  mutate(across(where(is.character), as.factor))