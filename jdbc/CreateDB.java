import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class CreateDB {

    // JDBC URL, username, and password of MySQL server
    static final String DB_URL = "jdbc:mysql://localhost/";
    static final String USER = "root";
    static final String PASS = "ssp@3";

    public static void main(String[] args) {
        // Declare Connection and Statement objects
        Connection conn = null;
        Statement stmt = null;

        try {
            // Step 1: Register the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Step 2: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // Step 3: Create a statement object
            System.out.println("Creating database...");
            stmt = conn.createStatement();

            // Step 4: Execute a query to create a database
            String sql = "CREATE DATABASE ADA";
            stmt.executeUpdate(sql);
            System.out.println("Database created successfully...");

        } catch (SQLException e) {
            // Handle SQL exceptions
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // Handle ClassNotFoundException
            e.printStackTrace();
        } finally {
            // Step 5: Close resources
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}
