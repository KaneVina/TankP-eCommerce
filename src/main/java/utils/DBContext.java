package utils;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {

    // 💡 ĐÃ XÓA: protected Connection connection = null;

    // Cần đảm bảo các hằng số này có dấu chấm phẩy kết thúc
    private static final String DRIVER_CLASS = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String DB_URL = "jdbc:sqlserver://localhost:1433;"
            + "databaseName=TankP;"
            + "user=sa;"
            + "password=123456;" // Hoặc mật khẩu thực tế của bạn
            + "encrypt=true;trustServerCertificate=true;";

    public DBContext() {
        // 💡 ĐÃ XÓA: Toàn bộ code kiểm tra kết nối trong constructor.
        // Nó không cần thiết và gây lãng phí tài nguyên
        // mỗi khi một DAO mới được khởi tạo.
    }

    public static void main(String[] args) {
        // Test kết nối theo cách chuẩn
        try (Connection conn = new DBContext().getConnection()) {
            if (conn != null) {
                DatabaseMetaData dm = conn.getMetaData();
                System.out.println("Driver name: " + dm.getDriverName());
                System.out.println("Product name: " + dm.getDatabaseProductName());
                System.out.println("Test kết nối thành công!");
            }
        } catch (Exception e) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, "Lỗi khi test kết nối CSDL", e);
        }
    }

    // GenericDAO sẽ gọi hàm này (Hàm này đã viết đúng)
    protected Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName(DRIVER_CLASS);
        // Tạo và trả về Connection mới
        return DriverManager.getConnection(DB_URL);
    }
}