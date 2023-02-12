package controllers;

import dao.DaoFactory;
import models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) { // Make sure a user is logged in.
            response.sendRedirect("/login");                       // If not, send back to login
            return;
        }

        request.setAttribute("ads", DaoFactory.getAdsDao().all()); // <------------------------ Setting the ads attribute allowing us access on the index.jsp
//        request.setAttribute("categories", DaoFactory.getCategoriesDao().all()); //<------------ Attempting to display category names
        request.getSession().getAttribute("title"); //<---------------------------------------- Referencing the the ad object within the current session
        request.getRequestDispatcher("/WEB-INF/ads/index.jsp").forward(request, response); //<- Forwarding the user to the index.jsp along with the req and resp objects.
    }

}