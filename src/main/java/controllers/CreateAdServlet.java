package controllers;

import dao.DaoFactory;
import models.Ad;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@WebServlet(name = "CreateAdServlet", urlPatterns = "/ads/create")
public class CreateAdServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return;
        }
        request.getRequestDispatcher("/ads/create.jsp")
                .forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        User user = (User) request.getSession().getAttribute("user"); // Getting the current user from the session
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        List<String> categoriesList = Arrays.asList(request.getParameterValues("category")); // String values of the five different categories in an array
//        System.out.println(categoriesList);
        List<Long> catsAsLongs = new ArrayList<>();

        for (String s : categoriesList) { // Converting the values
            catsAsLongs.add(Long.valueOf(s));
        }
        System.out.println(catsAsLongs);

        Ad ad = new Ad();
        ad.setUserId(user.getId());
        ad.setTitle(title);
        ad.setDescription(description);
        ad.setCategoryIds(catsAsLongs);
        DaoFactory.getAdsDao().insert(ad);
        response.sendRedirect("/ads");
    }
}