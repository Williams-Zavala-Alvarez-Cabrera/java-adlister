package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "NameOfServlet", urlPatterns = "/profile/update/password")
public class EditPasswordServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/WEB-INF/editProf/UpdatePassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User currentUser = (User) req.getSession().getAttribute("user");
        String password = req.getParameter("password");
        String passwordConfirmation = req.getParameter("confirm_password");

        // validate input
        boolean inputHasError = password.isEmpty() || (!password.equals(passwordConfirmation));

        if (inputHasError) {
            resp.sendRedirect("/invalid_registration");
            return;
        }
        //this is where I would implement method to update the password
        DaoFactory.getUsersDao().updatePassword(currentUser, password);
        resp.sendRedirect("/profile");
    }
}