package com.codeup.adlister.controllers;

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
        User currentUser = (User) request.getSession().getAttribute("user");
        request.getRequestDispatcher("/WEB-INF/editProf/UpdateProfile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//      // HERE IS WHERE ON POST OF THE UPDATE FORM, WE SUBMIT THE CHANGES TO EITHER USERNAME OR EMAIL
        System.out.println("This works");
    }
}

