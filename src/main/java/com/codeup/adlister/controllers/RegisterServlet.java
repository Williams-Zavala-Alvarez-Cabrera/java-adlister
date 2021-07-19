package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

import static com.codeup.adlister.dao.DaoFactory.getUsersDao;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String passwordConfirmation = request.getParameter("confirm_password");


        //Database Connection:
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost : 3306/adlister_db?useSSL=false","root","codeup");

            //get data from username and password table using query:
            Statement stm = con.createStatement();
            ResultSet rs =  stm.executeQuery("SELECT * FROM users WHERE username='"+username+"'OR email= '"+email+"'");
            boolean noInput = username.isEmpty()
                    || email.isEmpty()
                    || password.isEmpty()
                    || (! password.equals(passwordConfirmation));
            if (noInput){
                response.sendRedirect("/invalid_noinput");
            }
            else if(rs.next()){
                //
                response.sendRedirect("/invalid_username");
            }
            else{
                // create and save a new user
                User user = new User(username, email, password);
                getUsersDao().insert(user);
                response.sendRedirect("/login");
            }
        } catch (SQLException | ClassNotFoundException throwables) {
            throwables.printStackTrace();
        }






        // validate input
        boolean inputHasError = username.isEmpty()
            || email.isEmpty()
            || password.isEmpty()
            || (! password.equals(passwordConfirmation));

        boolean alreadyExists = false;

//        for(User singleUser : DaoFactory.getUsersDao().checkUsername()){
//            if (singleUser.getUsername().equals(username)) {
//                alreadyExists = true;
//                break;
//            }
//        }

        if (inputHasError) {
            response.sendRedirect("/invalid_registration");
            return;
        } else if (alreadyExists) {
            response.sendRedirect("/invalid_registration");
            return;
        }

        //Check to see if parameter value has already been created in the database - Alejandro


        // create and save a new user
        User user = new User(username, email, password);
        DaoFactory.getUsersDao().insert(user);
        response.sendRedirect("/login");

    }
}
