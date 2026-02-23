pipeline {
    // Thay vì 'agent any' (chạy thẳng trên máy tính của bạn), 
    // chúng ta chỉ định Jenkins tạo một container từ image 'node:20-alpine'
    agent {
        docker { 
            image 'node:20-alpine' 
        }
    }
    
    stages {
        stage('Thực thi code bên trong Docker') {
            steps {
                echo 'Báo cáo: Đã chui vào bên trong thùng Container Linux thành công!'
                
                // LƯU Ý CỰC QUAN TRỌNG: 
                // Vì môi trường bên trong container 'node:20-alpine' là hệ điều hành Linux, 
                // nên chúng ta phải dùng lệnh 'sh' của Linux thay vì lệnh 'bat' của Windows.
                sh 'node --version'
                sh 'npm --version'
                sh 'echo "Haha, Jenkins không cần cài Node.js mà vẫn chạy được code!"'
            }
        }
    }
}
