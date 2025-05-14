# Giả sử các thư viện cần thiết đã được nạp (factoextra, cluster, ggplot2, dplyr)
library("factoextra")
library("cluster") 

#1. Chuẩn bị dữ liệu cho phân cụm
# Ví dụ: Chọn các biến liên quan đến giá trị và hành vi chính
cols_for_clustering <- c("Income", "Recency", "Age", "Child_Total", 
                         "total_spent", "NumDealsPurchases", 
                         "NumWebPurchases", "NumCatalogPurchases", 
                         "NumStorePurchases", "NumWebVisitsMonth",
                         "Days_Customer", "AcceptedCmp_Total") 
                         
customers_clustering_data <- customers_final[, cols_for_clustering]

#2. Chuẩn hóa dữ liệu
customers_scaled <- scale(customers_clustering_data)
head(customers_scaled) # Kiểm tra dữ liệu đã chuẩn hóa