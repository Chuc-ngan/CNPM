package org.example.project.Services;

import org.example.project.Model.Account;
import org.example.project.Utils.JDBCConnector;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountService {
    public Account login(String email, String password){
        try {
            Account account = new Account();
            String query = "SELECT * FROM account WHERE email = ? AND password = ?";
            PreparedStatement statement = JDBCConnector.getConnection().prepareStatement(query);
            statement.setString(1, email);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            int countResult = 0;
            while(rs.next()){
                account.setId(rs.getString("id"));
                account.setEmail(rs.getString("email"));
                account.setPassword(rs.getString("password"));
                account.setRole(rs.getString("role"));
                countResult++;
            }
            return (countResult == 1) ? account : null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
