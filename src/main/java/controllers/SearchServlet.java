package controllers;

import dao.DaoFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (name = "SearchServlet", urlPatterns = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // User must be logged in
        if (req.getSession().getAttribute("user") == null) {
            resp.sendRedirect("/login");
            return;

        }
        String keyWord = req.getParameter("search");
        req.setAttribute("ads", DaoFactory.getAdsDao().searchByUserInput(keyWord));
        req.getRequestDispatcher("/ads/search-results.jsp").forward(req, resp);



    }

}