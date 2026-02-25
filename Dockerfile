# Mượn một máy chủ web Nginx siêu nhẹ làm nền
FROM nginx:alpine

# Copy trang web của bạn thả vào thư mục phát sóng của Nginx
COPY index.html /usr/share/nginx/html/
