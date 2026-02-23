pipeline {
    agent any 
    
    // Khai báo môi trường: Lấy đồ trong két sắt ra
    environment {
        // Lấy secret có ID là 'KHOA_BIMAT_CUA_TOI' và gán vào biến 'PASSWORD_DB'
        PASSWORD_DB = credentials('KHOA_BIMAT_CUA_TOI')
    }
    
    stages {
        stage('Đăng nhập Database') {
            steps {
                echo 'Đang kết nối vào hệ thống tối mật...'
                
                // CỐ TÌNH LỘ MẬT KHẨU: Chúng ta thử in thẳng mật khẩu ra màn hình xem sao!
                echo "Mật khẩu được cấp là: ${PASSWORD_DB}"
            }
        }
    }
}
