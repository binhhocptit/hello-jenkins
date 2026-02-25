pipeline {
    agent any 
    
    stages {
        stage('Build - Đóng gói Trang Web') {
            steps {
                echo 'Đang nhét trang web vào thùng container...'
                // Lệnh này đọc Dockerfile và nặn ra một cái container tên là "cho-bang-website"
                bat 'docker build -t cho-bang-website:latest .'
            }
        }
        
        stage('Deploy - Triển khai lên mạng') {
            steps {
                echo 'Đang dọn dẹp hệ thống cũ (nếu có)...'
                // Xóa container cũ đi để lấy chỗ chạy container mới (tránh lỗi trùng lặp)
                // Lệnh '|| exit 0' để bảo Jenkins đừng báo lỗi nếu đây là lần chạy đầu tiên chưa có container nào
                bat 'docker rm -f cho-bang-container || exit 0' 
                
                echo 'Đang khởi chạy Website mới...'
                // Chạy container ngầm (-d), mở cổng 8080 (-p), và đặt tên là "cho-bang-container"
                bat 'docker run -d -p 8080:80 --name cho-bang-container cho-bang-website:latest'
            }
        }
    }
    
    post {
        success {
            echo '==================================================='
            echo '✅ DEPLOY THÀNH CÔNG RỰC RỠ!'
            echo '🌐 Hãy mở trình duyệt và truy cập: http://localhost:8080'
            echo '==================================================='
        }
    }
}
