pipeline {
    agent any 
    
    stages {
        stage('Kiểm tra kết nối Docker') {
            steps {
                echo 'Đang thử gọi quản gia Docker...'
                // Thử gõ lệnh kiểm tra phiên bản Docker trên Windows
                bat 'docker --version'
            }
        }
    }
}
