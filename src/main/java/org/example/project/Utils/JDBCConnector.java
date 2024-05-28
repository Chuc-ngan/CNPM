package org.example.project.Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnector {
    private static Connection connection;

    public static Connection getConnection() {
        if(connection == null) connect();
        return connection;
    }
    private static void connect() {
        String host = "localhost";
        String port = "3306";
        String dbName = "storyonline";
        String username = "root";
        String password = "123456"; // viet mat khau ýql vo day 1234
        String url = "jdbc:mysql://" + host + ":" + port + "/" + dbName+"?useUnicode=true&characterEncoding=utf8";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

    public static void closeConnect() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            finally {
                connection = null;
            }
        }
    }

    public static void main(String[] args) {
        JDBCConnector.getConnection();
    }
}