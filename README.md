# Phân tích và Phân khúc Khách hàng dựa trên Dữ liệu Marketing

Đây là đồ án kết thúc môn học "Lập trình R cho Phân tích" của Nhóm 01, thực hiện phân tích dữ liệu khách hàng từ chiến dịch marketing nhằm hiểu rõ hơn về hành vi mua sắm và xác định các phân khúc khách hàng tiềm năng.

## Giới thiệu Dự án

Trong bối cảnh thị trường cạnh tranh, việc thấu hiểu khách hàng là yếu tố then chốt cho sự thành công của doanh nghiệp. Dự án này sử dụng ngôn ngữ R và các kỹ thuật phân tích dữ liệu để:

- Xác định và mô tả các nhóm khách hàng (phân khúc) có đặc điểm tương đồng.
- Tìm hiểu các yếu tố ảnh hưởng đến quyết định chấp nhận ưu đãi marketing của khách hàng.
- Xây dựng mô hình dự đoán tổng chi tiêu của khách hàng và các yếu tố tác động đến mức chi tiêu.

## Thành viên Nhóm 01

- Đỗ Kiến Hưng (23133030)
- Phan Trọng Quí (23133061)
- Phan Trọng Phú (23133056)
- Nguyễn Văn Quang Duy (23110086)

## Bộ dữ liệu

Dữ liệu được sử dụng là bộ "Customer Personality Analysis" từ Kaggle, chứa thông tin về nhân khẩu học, lịch sử mua sắm, và tương tác marketing của 2240 khách hàng.

- **Nguồn:** [https://www.kaggle.com/datasets/imakash3011/customer-personality-analysis](https://www.kaggle.com/datasets/imakash3011/customer-personality-analysis)
- **File chính:** `marketing_campaign.csv` (đặt trong thư mục `data/`)

## Cấu trúc Thư mục Dự án

```
customer-personality-analysis/
├── data/ # Chứa file dữ liệu marketing_campaign.csv
├── ref/ # Thư mục tham khảo, chứa tài liệu, bài báo liên quan
├── report/ # Chứa file báo cáo cuối cùng (.Rmd, .html/.pdf)
├── LICENSE # File giấy phép
└── README.md # File này
```

## Quy trình Phân tích

Dự án được thực hiện qua các bước chính sau:

1. **Tiền xử lý dữ liệu:**
    - Làm sạch dữ liệu (xử lý giá trị thiếu, loại bỏ dữ liệu không liên quan).
    - Xử lý giá trị ngoại lệ.
    - Tạo biến đặc trưng mới (feature engineering).

2. **Phân tích dữ liệu khám phá (EDA):**
    - Trực quan hóa bằng histogram, boxplot, scatter plot, v.v.
    - Phân tích mối quan hệ giữa các biến.

3. **Mô hình hóa dữ liệu:**
    - **Phân cụm K-Means**: Nhóm khách hàng theo đặc điểm tương đồng.
    - **Hồi quy Logistic**: Dự đoán khả năng khách hàng phản hồi với chiến dịch marketing (`Response`).
    - **Hồi quy Tuyến tính Đa biến**: Dự đoán tổng chi tiêu (`log_total_spent`) và các yếu tố ảnh hưởng.

4. **Đánh giá mô hình và Diễn giải kết quả:**
    - Đánh giá độ chính xác mô hình.
    - Kiểm định giả định hồi quy.
    - Phân tích ý nghĩa các yếu tố ảnh hưởng và đặc điểm phân khúc.

5. **Kết luận và Đề xuất:**
    - Tóm tắt phát hiện chính.
    - Đề xuất ứng dụng thực tiễn cho doanh nghiệp.

## Công cụ và Thư viện R chính

- **Ngôn ngữ**: R
- **IDE**: RStudio
- **Các gói R sử dụng**:
    - `dplyr`, `tidyr`: Xử lý dữ liệu
    - `lubridate`: Xử lý thời gian
    - `ggplot2`, `patchwork`, `corrplot`: Trực quan hóa dữ liệu
    - `cluster`, `factoextra`: Phân cụm và trực quan hóa
    - `caret`, `pROC`, `car`: Mô hình hóa và đánh giá mô hình
    - `knitr`: Tạo báo cáo R Markdown

## Cách chạy Báo cáo

1. Clone repository này về máy tính.
2. Mở file `.Rproj` hoặc file `.Rmd` trong thư mục `report/` bằng RStudio.
3. Đảm bảo đã cài đặt các thư viện R cần thiết.
4. Đặt file dữ liệu `marketing_campaign.csv` vào thư mục `data/`.
5. Nhấn Knit để tạo báo cáo (HTML hoặc PDF).

## Đóng góp

Xem chi tiết đóng góp của từng thành viên trong phần **"9. Đóng góp (Contributions)"** của báo cáo chính.

## Giấy phép

Dự án này được cấp phép theo MIT License. Xem file `LICENSE` để biết thêm chi tiết.
