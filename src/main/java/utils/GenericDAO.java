package utils;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * Lớp trừu tượng GenericDAO cung cấp các phương thức CRUD cơ bản sử dụng
 * Reflection để ánh xạ đối tượng và sử dụng Connection được kế thừa từ
 * DBContext.
 *
 * @param <T> Loại đối tượng Model
 */
public abstract class GenericDAO<T> extends DBContext {

    protected PreparedStatement statement;
    protected ResultSet resultSet;
    protected Map<String, Object> parameterMap;

    public static final boolean CONDITION_AND = true;
    public static final boolean CONDITION_OR = false;

    protected List<T> queryGenericDAO(Class<T> clazz) {
        List<T> result = new ArrayList<>();
        Connection conn = null; // KHAI BÁO BIẾN CỤC BỘ (conn)
        try {
            conn = getConnection();
            StringBuilder sqlBuilder = new StringBuilder();
            sqlBuilder.append("SELECT * FROM ").append(clazz.getSimpleName());
            statement = conn.prepareStatement(sqlBuilder.toString()); // SỬ DỤNG conn
            resultSet = statement.executeQuery();
            while (resultSet.next()) {
                T obj = mapRow(resultSet, clazz);
                result.add(obj);
            }

            return result;
        } catch (IllegalAccessException
                | IllegalArgumentException
                | InstantiationException
                | NoSuchMethodException
                | InvocationTargetException
                | SQLException
                | ClassNotFoundException e) {
            System.err.println("Exception ở hàm queryGenericDAO (findAll): " + e.getMessage());
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (Exception e) {
                System.err.println("Exception ở khối finally của queryGenericDAO: " + e.getMessage());
            }
        }
        return result;
    }

    protected List<T> queryGenericDAO(Class<T> clazz, String sql, Map<String, Object> parameterHashmap) {

        List<T> result = new ArrayList<>();
        Connection conn = null;
        try {
            conn = getConnection();

            List<Object> parameters = new ArrayList<>();

            if (parameterHashmap != null && !parameterHashmap.isEmpty()) {
                for (Map.Entry<String, Object> entry : parameterHashmap.entrySet()) {
                    parameters.add(entry.getValue());
                }
            }

            statement = conn.prepareStatement(sql);

            int index = 1;
            for (Object value : parameters) {
                statement.setObject(index, value);
                index++;
            }

            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                T obj = mapRow(resultSet, clazz);
                result.add(obj);
            }

            return result;
        } catch (IllegalAccessException
                | IllegalArgumentException
                | InstantiationException
                | NoSuchMethodException
                | InvocationTargetException
                | SQLException
                | ClassNotFoundException e) {
            System.err.println("Exception ở hàm queryGenericDAO (có tham số): " + e.getMessage());
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (conn != null) { // SỬ DỤNG conn ĐỂ ĐÓNG
                    conn.close();
                }
            } catch (SQLException e) {
                System.err.println("Exception ở khối finally của queryGenericDAO (có tham số): " + e.getMessage());
            }
        }
        return result;
    }

    private static <T> T mapRow(ResultSet rs, Class<T> clazz) throws
            SQLException,
            NoSuchMethodException,
            InstantiationException,
            IllegalArgumentException,
            IllegalAccessException,
            InvocationTargetException {

        T obj = clazz.getDeclaredConstructor().newInstance();

        Field[] fields = clazz.getDeclaredFields();

        for (Field field : fields) {
            // Nếu trường là 'transient', bỏ qua không ánh xạ
            if (java.lang.reflect.Modifier.isTransient(field.getModifiers())) {
                continue;
            }
            Object value = getFieldValue(rs, field);
            field.setAccessible(true);
            field.set(obj, value);
        }
        return obj;
    }

    private static Object getFieldValue(ResultSet rs, Field field) throws SQLException {

        Class<?> fieldType = field.getType();
        String fieldName = field.getName();

        // 1. Bỏ qua các field là Collection hoặc Map (Mapping phức tạp hơn)
        if (Collection.class.isAssignableFrom(fieldType) || Map.class.isAssignableFrom(fieldType)) {
            return null;
        }

        // Thử tên cột mặc định (tên thuộc tính Java)
        String columnName = fieldName;
        Object value = null;

        try {
            // Xử lý kiểu nguyên thủy (primitive)
            if (fieldType == int.class) {
                value = rs.getInt(columnName);
            } else if (fieldType == long.class) {
                value = rs.getLong(columnName);
            } else if (fieldType == double.class) {
                value = rs.getDouble(columnName);
            } else if (fieldType == boolean.class) {
                value = rs.getBoolean(columnName);
            } else if (fieldType == float.class) {
                value = rs.getFloat(columnName);
            } else {
                // Xử lý KIỂU ĐÓNG GÓI (Wrapper Class, String, Timestamp)
                value = rs.getObject(columnName);
            }
        } catch (SQLException e) {
            // Nếu thất bại (thường do lỗi tên cột), thử tên cột với chữ cái đầu tiên viết hoa
            try {
                if (columnName.length() > 0) {
                    columnName = Character.toUpperCase(columnName.charAt(0)) + columnName.substring(1);

                    if (fieldType == int.class) {
                        value = rs.getInt(columnName);
                    } else if (fieldType == long.class) {
                        value = rs.getLong(columnName);
                    } else if (fieldType == double.class) {
                        value = rs.getDouble(columnName);
                    } else if (fieldType == boolean.class) {
                        value = rs.getBoolean(columnName);
                    } else if (fieldType == float.class) {
                        value = rs.getFloat(columnName);
                    } else {
                        value = rs.getObject(columnName);
                    }
                } else {
                    throw e; // Ném lại lỗi ban đầu nếu không thể sửa tên
                }
            } catch (SQLException finalException) {
                // Nếu vẫn lỗi, ném lỗi ban đầu để debug
                throw e;
            }
        }

        // Nếu giá trị là NULL, trả về null.
        if (value == null) {
            return null;
        }

        // Nếu giá trị KHÔNG NULL, thực hiện ép kiểu chính xác
        if (fieldType == String.class) {
            return value.toString();
        } else if (fieldType == Integer.class) {
            return (Integer) value;
        } else if (fieldType == Long.class) {
            return (Long) value;
        } else if (fieldType == Double.class) {
            return (Double) value;
        } else if (fieldType == Boolean.class) {
            return (Boolean) value;
        } else if (fieldType == Float.class) {
            return (Float) value;
        } else if (fieldType == Timestamp.class) {
            return (Timestamp) value;
        } else {
            return value;
        }
    }

    protected boolean updateGenericDAO(String sql, Map<String, Object> parameterMap) {

        List<Object> parameters = new ArrayList<>();

        for (Map.Entry<String, Object> entry : parameterMap.entrySet()) {
            parameters.add(entry.getValue());
        }

        Connection conn = null;
        try {
            conn = getConnection();
            conn.setAutoCommit(false);
            statement = conn.prepareStatement(sql);

            int index = 1;
            for (Object value : parameters) {
                statement.setObject(index, value);
                index++;
            }
            statement.executeUpdate();
            conn.commit();
            return true;
        } catch (SQLException | ClassNotFoundException e) {
            try {
                if (conn != null) {
                    conn.rollback();
                }
            } catch (SQLException ex) {
                System.err.println("Exception ở hàm update (rollback): " + ex.getMessage());
            }
            System.err.println("Exception ở hàm update: " + e.getMessage());
            return false;
        } finally {
            try {
                if (statement != null) {
                    statement.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                System.err.println("Exception ở khối finally của updateGenericDAO: " + e.getMessage());
            }
        }
    }

    protected boolean deleteGenericDAO(String sql, Map<String, Object> parameterMap) {
        return updateGenericDAO(sql, parameterMap);
    }

    protected int insertGenericDAO(T object) {
        Class<?> clazz = object.getClass();
        Field[] fields = clazz.getDeclaredFields();

        StringBuilder sqlBuilder = new StringBuilder();
        sqlBuilder.append("INSERT INTO ").append(clazz.getSimpleName()).append(" (");

        List<Object> parameters = new ArrayList<>();

        for (Field field : fields) {
            field.setAccessible(true);
            String fieldName = field.getName();
            Object fieldValue;
            try {
                fieldValue = field.get(object);
            } catch (IllegalAccessException e) {
                fieldValue = null;
            }

            if (fieldValue != null && !fieldName.equalsIgnoreCase("id")) {
                sqlBuilder.append(fieldName).append(", ");
                parameters.add(fieldValue);
            }
        }

        // Xóa dấu phẩy cuối cùng
        if (sqlBuilder.charAt(sqlBuilder.length() - 2) == ',') {
            sqlBuilder.delete(sqlBuilder.length() - 2, sqlBuilder.length());
        }

        sqlBuilder.append(") VALUES (");
        for (int i = 0; i < parameters.size(); i++) {
            sqlBuilder.append("?, ");
        }

        // Xóa dấu phẩy cuối cùng
        if (sqlBuilder.charAt(sqlBuilder.length() - 2) == ',') {
            sqlBuilder.delete(sqlBuilder.length() - 2, sqlBuilder.length());
        }

        sqlBuilder.append(")");

        int id = 0;
        Connection conn = null; // KHAI BÁO BIẾN CỤC BỘ (conn)
        try {
            conn = getConnection();

            // Bắt đầu giao dịch và chuẩn bị câu truy vấn (lấy khóa chính tự động)
            conn.setAutoCommit(false);
            statement = conn.prepareStatement(sqlBuilder.toString(), Statement.RETURN_GENERATED_KEYS);

            // Gán tham số
            int index = 1;
            for (Object value : parameters) {
                statement.setObject(index, value);
                index++;
            }

            // Thực thi câu truy vấn
            statement.executeUpdate();

            // Lấy khóa chính (ID)
            resultSet = statement.getGeneratedKeys();
            if (resultSet.next()) {
                id = resultSet.getInt(1);
            }
            System.err.println("insertGenericDAO: " + sqlBuilder.toString());
            // Xác nhận giao dịch thành công
            conn.commit();
        } catch (SQLException | ClassNotFoundException e) {
            try {
                System.err.println("Exception ở hàm insert: " + e.getMessage());
                // Hoàn tác giao dịch
                if (conn != null) {
                    conn.rollback();
                }
            } catch (SQLException ex) {
                System.err.println("Exception ở hàm insert (rollback): " + ex.getMessage());
            }
        } finally {
            // Đảm bảo đóng kết nối và tài nguyên
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (conn != null) { // SỬ DỤNG conn ĐỂ ĐÓNG
                    conn.close();
                }
            } catch (SQLException e) {
                System.err.println("Exception ở khối finally của insertGenericDAO: " + e.getMessage());
            }
        }
        return id;
    }

    protected int insertGenericDAO(String sql, Map<String, Object> parameterMap) {
        List<Object> parameters = new ArrayList<>();

        for (Map.Entry<String, Object> entry : parameterMap.entrySet()) {
            parameters.add(entry.getValue());
        }

        int id = 0;
        Connection conn = null; // KHAI BÁO BIẾN CỤC BỘ (conn)
        try {
            conn = getConnection();

            // Bắt đầu giao dịch và chuẩn bị câu truy vấn (lấy khóa chính tự động)
            conn.setAutoCommit(false);
            statement = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            // Gán tham số
            int index = 1;
            for (Object value : parameters) {
                statement.setObject(index, value);
                index++;
            }

            // Thực thi câu truy vấn
            statement.executeUpdate();

            // Lấy khóa chính (ID)
            resultSet = statement.getGeneratedKeys();
            if (resultSet.next()) {
                id = resultSet.getInt(1);
            }
            // Xác nhận giao dịch thành công
            conn.commit();
        } catch (SQLException | ClassNotFoundException e) {
            try {
                System.err.println("Exception ở hàm insert (SQL tùy chỉnh): " + e.getMessage());
                // Hoàn tác giao dịch
                if (conn != null) {
                    conn.rollback();
                }
            } catch (SQLException ex) {
                System.err.println("Exception ở hàm insert (rollback): " + ex.getMessage());
            }
        } finally {
            // Đảm bảo đóng kết nối và tài nguyên
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (conn != null) { // SỬ DỤNG conn ĐỂ ĐÓNG
                    conn.close();
                }
            } catch (SQLException e) {
                System.err.println("Exception ở khối finally của insertGenericDAO (SQL tùy chỉnh): " + e.getMessage());
            }
        }
        return id;
    }

    protected int findTotalRecordGenericDAO(Class<T> clazz) {
        int total = 0;
        Connection conn = null; // KHAI BÁO BIẾN CỤC BỘ (conn)
        try {
            conn = getConnection();

            StringBuilder sqlBuilder = new StringBuilder();
            sqlBuilder.append("SELECT COUNT(*) FROM ").append(clazz.getSimpleName());
            List<Object> parameters = new ArrayList<>();
            statement = conn.prepareStatement(sqlBuilder.toString()); // SỬ DỤNG conn
            int index = 1;
            for (Object value : parameters) {
                statement.setObject(index, value);
                index++;
            }

            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                total = resultSet.getInt(1);
            }

        } catch (IllegalArgumentException | SQLException | ClassNotFoundException e) {
            System.err.println("Exception ở hàm findTotalRecord: " + e.getMessage());
        } finally {
            try {
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (conn != null) { // SỬ DỤNG conn ĐỂ ĐÓNG
                    conn.close();
                }
            } catch (SQLException e) {
                System.err.println("Exception ở khối finally của findTotalRecordGenericDAO: " + e.getMessage());
            }
        }
        return total;
    }

    protected int findTotalRecordGenericDAO(Class<T> clazz, String sql, Map<String, Object> parameterMap) {
        int total = 0;
        Connection conn = null; // KHAI BÁO BIẾN CỤC BỘ (conn)
        try {
            conn = getConnection();

            List<Object> parameters = new ArrayList<>();

            // Thêm tham số
            if (parameterMap != null && !parameterMap.isEmpty()) {
                for (Map.Entry<String, Object> entry : parameterMap.entrySet()) {
                    parameters.add(entry.getValue());
                }
            }

            statement = conn.prepareStatement(sql); // SỬ DỤNG conn

            // Gán giá trị cho các tham số
            int index = 1;
            for (Object value : parameters) {
                statement.setObject(index, value);
                index++;
            }

            resultSet = statement.executeQuery();

            if (resultSet.next()) {
                total = resultSet.getInt(1);
            }

        } catch (IllegalArgumentException | SQLException | ClassNotFoundException e) {
            System.err.println("Exception ở hàm findTotalRecord (có tham số): " + e.getMessage());
        } finally {
            try {
                // Đóng tài nguyên
                if (resultSet != null) {
                    resultSet.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (conn != null) { // SỬ DỤNG conn ĐỂ ĐÓNG
                    conn.close();
                }
            } catch (SQLException e) {
                System.err.println("Exception ở khối finally của findTotalRecordGenericDAO (có tham số): " + e.getMessage());
            }
        }
        return total;
    }

    public abstract List<T> findAll();

    public abstract int insert(T t);

}
