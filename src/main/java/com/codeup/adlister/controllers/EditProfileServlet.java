package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditProfileServlet", urlPatterns = "/profile/edit")
public class EditProfileServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/editProf/UpdateProfile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//      // HERE IS WHERE ON POST OF THE UPDATE FORM, WE SUBMIT THE CHANGES TO EITHER USERNAME OR EMAIL
        System.out.println("This works");
        String newUsername = req.getParameter("username");
        String newEmail = req.getParameter("email");
        User currentUser = (User) req.getSession().getAttribute("user");
        DaoFactory.getUsersDao().updateUserInfo(currentUser, newUsername, newEmail);
        // This is so the profile doGet is able to update get new info
        req.getSession().setAttribute("username", newUsername);
        req.getSession().setAttribute("email", newEmail);

        resp.sendRedirect("/profile");

    }
}

