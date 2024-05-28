package org.example.project.Controller.api;

import org.example.project.Model.Account;
import org.example.project.Services.AccountService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/api/login")
public class LoginAPI extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        AccountService accountService = new AccountService();
        Account account = accountService.login(email, password);
        if(account == null){
            resp.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
            resp.getWriter().write("{\"error\": \"Đăng nhập thất bại\"}");
        }
        else{
            req.getSession().setAttribute("account", account);
            resp.getWriter().write("{\"role\": \""+account.getRole()+"\"}");
        }
    }
}
