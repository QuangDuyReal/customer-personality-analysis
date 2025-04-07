read_data <- function(file_path) {
  tryCatch({
    df <- read.csv(file_path, stringsAsFactors = FALSE)
    message("✅ Đọc dữ liệu thành công từ ", file_path)
    return(df)
  }, error = function(e) {
    message("❌ Lỗi khi đọc dữ liệu: ", e$message)
    return(NULL)
  })
}