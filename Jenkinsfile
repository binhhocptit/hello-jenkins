pipeline {
    agent any // Quay lại dùng máy Windows làm máy chủ điều hành
    
    stages {
        stage('Thực thi code bên trong Docker') {
            steps {
                echo 'Đang mượn một thùng Container chứa Node.js từ Docker...'
                
                // Chúng ta tự tay gọi Docker, yêu cầu nó tạo container, in ra phiên bản Node, rồi tự hủy (--rm)
                bat 'docker run --rm node:20-alpine node --version'
                bat 'docker run --rm node:20-alpine npm --version'
                
                echo 'BÁO CÁO: Thành công rực rỡ! Máy tính Windows không hề cài Node.js nhưng vẫn chạy được lệnh Node!'
            }
        }
    }
}
