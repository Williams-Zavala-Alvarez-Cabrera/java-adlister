
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

@WebServlet(name = "controllers.LoginServlet", urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        if (request.getSession().getAttribute("user") != null) {
//            response.sendRedirect("/profile");
//            return;
//        }
        request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = DaoFactory.getUsersDao().findByUsername(username);

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost : 3306/adlister_db?useSSL=false", "root", "codeup");

            //get data from username and password table using query:
            Statement stm = con.createStatement();
            ResultSet rs = stm.executeQuery("SELECT * FROM users WHERE username='" + username + "'AND password='" + password + "'");
            boolean validAttempt = Password.check(password, user.getPassword());
            boolean noInput = username.isEmpty()
                    || password.isEmpty();
            if (rs.next()) {
                //
                response.sendRedirect("/profile");
            }else if (validAttempt) {
                request.getSession().setAttribute("user", user);
                User currentUser = (User) request.getSession().getAttribute("user");
                String currentUsername = currentUser.getUsername();
                String email = currentUser.getEmail();
                request.getSession().setAttribute("username", currentUsername);
                request.getSession().setAttribute("email", email);
                if (request.getSession().getAttribute("visitAttempt") =="adsCreate") {
                    response.sendRedirect("/ads/create");
                } else {
                    response.sendRedirect("/profile");

                }
            }
            else if(noInput){
                response.sendRedirect("/repeat_login");
            }

        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }

//        Commented it out in case we might need this again - Alejandro
//        if (user == null) {
//            response.sendRedirect("/login");
//            return;
//        }

//        else if (validAttempt) {
//            request.getSession().setAttribute("user", user);
//            User currentUser = (User) request.getSession().getAttribute("user");
//            String currentUsername = currentUser.getUsername();
//            String email = currentUser.getEmail();
//            request.getSession().setAttribute("username", currentUsername);
//            request.getSession().setAttribute("email", email);
//            if (request.getSession().getAttribute("visitAttempt") =="adsCreate") {
//                response.sendRedirect("/ads/create");
//            } else {
//                response.sendRedirect("/profile");
//
//            }
//        } else {
//                response.sendRedirect("/login");
//            }
//        }
    }
}