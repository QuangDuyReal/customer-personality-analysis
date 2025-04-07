handle_error <- function(expr) {
  tryCatch(
    expr,
    error = function(e) {
      message("⚠️ Đã xảy ra lỗi: ", e$message)
    },
    warning = function(w) {
      message("⚠️ Cảnh báo: ", w$message)
    }
  )
}