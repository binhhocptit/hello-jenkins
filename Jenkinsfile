pipeline {
    agent any 
    
    parameters {
        choice(name: 'MOI_TRUONG', choices: ['DEV', 'PRODUCTION'], description: 'Bạn muốn triển khai lên đâu?')
    }
    
    stages {
        stage('Build & Test') {
            steps {
                echo 'Đóng gói và kiểm thử code thành công!'
            }
        }
        
        stage('Deploy - Triển khai') {
            steps {
                echo "Chú ý: Đang bắt đầu triển khai hệ thống lên môi trường ${params.MOI_TRUONG} !!!"
            }
        }
    }
    
    // KHỐI POST: Xử lý báo cáo sau khi chạy xong
    post {
        always {
            echo '🧹 Đang dọn dẹp chiến trường... (Bước này luôn chạy)'
        }
        success {
            echo "✅ BÁO CÁO: Tuyệt vời! Đã triển khai thành công mỹ mãn lên môi trường ${params.MOI_TRUONG}!"
        }
        failure {
            echo "❌ CẢNH BÁO KHẨN: Quy trình thất bại! Đội kỹ thuật vào kiểm tra gấp!"
        }
    }
}
