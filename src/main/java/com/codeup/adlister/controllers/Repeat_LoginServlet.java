
package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;
import com.codeup.adlister.util.Password;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

import static com.codeup.adlister.dao.DaoFactory.getUsersDao;

@WebServlet(name = "controllers.Repeat_LoginServlet", urlPatterns = "/repeat_login")
public class Repeat_LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") != null) {
//            response.sendRedirect("/profile");
//            return;
//        }
        request.getRequestDispatcher("/WEB-INF/repeat_login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
//        User user = DaoFactory.getUsersDao().findByUsername(username);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost : 3306/adlister_db?useSSL=false", "root", "codeup");

            //get data from username and password table using query:
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM users WHERE username='" + username + "'AND password='" + password + "'");
            boolean noInput = username.isEmpty()
                    || password.isEmpty();
            if (rs.next()) {
                //
                response.sendRedirect("/profile");
            } else if (noInput) {
                response.sendRedirect("/repeat_login");
            }

        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

    }
}