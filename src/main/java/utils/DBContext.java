package utils;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBContext {

    protected Connection connection = null;

    private static final String DRIVER_CLASS = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String DB_URL = "jdbc:sqlserver://localhost:1433;"
            + "databaseName=TankP_PRJ301;"
            + "user=sa;"
            + "password=123456;"
            + "encrypt=true;trustServerCertificate=true;";

    public DBContext() {
        Connection tempConnection = null;
        try {
            Class.forName(DRIVER_CLASS);
            tempConnection = DriverManager.getConnection(DB_URL);

            if (tempConnection != null) {
                DatabaseMetaData dm = (DatabaseMetaData) tempConnection.getMetaData();
                System.out.println("Driver name: " + dm.getDriverName());
                System.out.println("Driver version: " + dm.getDriverVersion());
                System.out.println("Product name: "
                        + dm.getDatabaseProductName());
                System.out.println("Product version: "
                        + dm.getDatabaseProductVersion());
            } else {
                System.out.println("NULL");
            }
        } catch (SQLException ex) {
            System.out.println("Khong ket noi duoc roi em oi...........");
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, "SQL Exception in DBContext constructor", ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            if (tempConnection != null) {
                try {
                    tempConnection.close();
                } catch (SQLException e) {
                }
            }
        }
    }

    public static void main(String[] args) {
        DBContext db = new DBContext();
    }

    // GenericDAO có thể lấy Connection
    protected Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName(DRIVER_CLASS);
        // Tạo và trả về Connection mới
        return DriverManager.getConnection(DB_URL);
    }
}
