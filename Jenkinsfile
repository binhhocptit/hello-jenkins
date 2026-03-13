pipeline {
    agent any 
    
    stages {
        stage('Test - Kiểm tra mã nguồn') {
            steps {
                echo 'Đang rà soát lỗi cấu trúc HTML...'
                // Kiểm tra xem file index.html có chứa thẻ <h1> không. Nếu không có, đánh sập hệ thống ngay!
                bat 'findstr /C:"<h1>" index.html'
                
                echo 'Kiểm tra hoàn tất: Mã nguồn an toàn, không có lỗi ngớ ngẩn!'
            }
        }
        
        stage('Deploy bằng Docker Compose') {
            steps {
                echo 'Đang dùng siêu vũ khí Docker Compose...'
                // Lệnh này tự động: Đọc bản thiết kế -> Build Image -> Xóa web cũ -> Bật web mới
                bat 'docker compose up -d --build'
            }
        }
    }
    
    post {
        success {
            echo '==================================================='
            echo '✅ XUẤT SẮC! HỆ THỐNG VƯỢT QUA BÀI TEST VÀ DEPLOY THÀNH CÔNG!'
            echo '🌐 Truy cập ngay: http://localhost:8888'
            echo '==================================================='
        }
    }
}
