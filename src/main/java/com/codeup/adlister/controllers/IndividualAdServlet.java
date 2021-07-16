package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "IndividualAdServlet", urlPatterns = "/ads/singleAd")
public class IndividualAdServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        Long oneAd = Long.parseLong(request.getParameter("singleAd"));

        Ad singleAd = DaoFactory.getAdsDao().findUniqueAdId(oneAd);

        request.setAttribute("singleAd", singleAd);

        request.getRequestDispatcher("/WEB-INF/ads/singleAd.jsp").forward(request, response);

    }


}