package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import static java.lang.Long.parseLong;

@WebServlet(name = "EditAdServlet", urlPatterns = "/ads/edit/*")
public class EditAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

//        Get id using substring.....isnt working because ID's arent resetting after deleting and creating new ads.
        String adId = request.getPathInfo().substring(1);
        System.out.println(adId);

//        Run adId through find unique ad method
//        Parse long because find unique ad takes in long as parameter
        Ad grabId = DaoFactory.getAdsDao().findUniqueAdId(parseLong(adId));

//        Set grab id object to attribute ad
        request.getSession().setAttribute("ad",grabId);

//        Use object with get title method to set to existingTitle
        request.setAttribute("existingTitle", grabId.getTitle());

//        Use object with get description method to set to existingDescription
        request.setAttribute("existingDescription", grabId.getDescription());

//        Forward to editads jsp
        request.getRequestDispatcher("/WEB-INF/ads/editAd.jsp").forward(request, response);


    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

//        instantiate adObject to get attribute ad that was set from grabId above in the doGet
        Ad updatedAd = (Ad) request.getSession().getAttribute("ad");

//        Reset the values
        request.setAttribute("adObject", updatedAd);
        request.setAttribute("existingTitle", updatedAd.getTitle());
        request.setAttribute("existingDescription", updatedAd.getDescription());


        //Set values in the form
        String title = request.getParameter("title");
        String description = request.getParameter("description");


        DaoFactory.getAdsDao().edit(updatedAd, title, description);
        response.sendRedirect("/profile");

    }
}
