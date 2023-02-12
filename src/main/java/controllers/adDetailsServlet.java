package controllers;

import dao.DaoFactory;
import models.Ad;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet ("/ads/detailed")
public class adDetailsServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("id"));// id for button has to be ${Ad.id}

        // - Storing the ad being selected in this req obj so it can be displayed in the adDetails.jsp
        Ad ad = DaoFactory.getAdsDao().getAdById(id); // - Need to create a getAdById method
        req.setAttribute("ad", ad);                //   in the interface and define it
        req.setAttribute("userId",DaoFactory.getUsersDao().getUserById(ad.getUserId()));
        //   setting the attribute userId going in the Dao factory to have access to getUserById method
        // the query will then read as Select all from the users table where id is equal to user id in the ads table
        req.getRequestDispatcher("/ads/detailed.jsp").forward(req, resp);
    }

}