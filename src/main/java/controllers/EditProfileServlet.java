package controllers;

import dao.DaoFactory;
import models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditProfileServlet", urlPatterns = "/profile-edit")
public class EditProfileServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        long id = Long.parseLong(req.getParameter("editUser"));//<------------------ Pulling the value of the user ID associated with the button in profile.jsp
        User user = DaoFactory.getUsersDao().getUserById(id);// <---------------------- Passing the ID into the getUserById method returning the corresponding user object
        req.setAttribute("user", user);// <----------------------------------------- Setting user attribute to the new user object to be used in the doPost

        req.getRequestDispatcher("/editProfile.jsp").forward(req, resp);//<- Directing the user to the editProfile page containing the form
    }

    //TODO: Update the user username and email while maintaining the same ID and password:

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");// <------------------------- Pulling username user input from form on editProfile.jsp
        String email = req.getParameter("email");// <------------------------------- Pulling email user input from form on editProfile.jsp
        User user = (User) req.getSession().getAttribute("user");// <--------------- Pulling the currently logged in user object from session
        User updatedUser = new User();// <--------------------------------------------- Creating a new instance of user to set new values
        updatedUser.setUsername(username);// <----------------------------------------- Setting the new username to the user input
        updatedUser.setEmail(email);// <----------------------------------------------- Setting the new email to the user input
        updatedUser.setId(user.getId());// <------------------------------------------- Setting the user ID to the currently logged in user's ID
        updatedUser.setPassword(user.getPassword());// <------------------------------- Setting the password to the currently logged in user's password
        req.getSession().setAttribute("user", updatedUser);// <--------------------- Setting the new user as the current user

        boolean inputHasErrors = // <-------------------------------------------------- Checking that the form fields are not empty
                username.isEmpty()
                        || email.isEmpty();

        if (inputHasErrors) {
            resp.sendRedirect("/profile-edit");
            return;
        }
        DaoFactory.getUsersDao().update(updatedUser);// <------------------------------ Updating the database by passing the new user into the update method
        resp.sendRedirect("/profile");// <------------------------------------------ Sending the user back to their profile page
    }
}