pipeline {
    agent any // Cho phép Jenkins chạy trên bất kỳ máy nào có sẵn
    
    stages {
        stage('Build - Đóng gói') {
            steps {
                echo 'Đang chuẩn bị môi trường và đóng gói code...'
            }
        }
        
        stage('Test - Kiểm thử') {
            steps {
                echo 'Đang chạy test để kiểm tra lỗi...'
                // Chúng ta gọi lại lệnh đọc file ban nãy (dùng 'bat' cho Windows)
                bat 'type hello.txt' 
            }
        }
        
        stage('Deploy - Triển khai') {
            steps {
                echo 'Không có lỗi! Đang triển khai lên server thật...'
            }
        }
    }
}
