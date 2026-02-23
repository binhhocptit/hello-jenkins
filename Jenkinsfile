pipeline {
    agent any 
    
    // Thêm khối parameters để tạo menu lựa chọn
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
                // Jenkins sẽ in ra biến MOI_TRUONG mà bạn chọn lúc bấm nút chạy
                echo "Chú ý: Đang bắt đầu triển khai hệ thống lên môi trường ${params.MOI_TRUONG} !!!"
            }
        }
    }
}
