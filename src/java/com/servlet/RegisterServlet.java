package com.servlet;

import com.connection.helper.ConProvider;
import com.dao.UserDao;
import com.entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String check = request.getParameter("check");

            if (check == null) {
                out.println("Kindly check the box");
            } else {
                String name = request.getParameter("user_name");
                String email = request.getParameter("user_email");
                String password = request.getParameter("user_password");
                String gender = request.getParameter("gender");

                out.println("Name: " + name + "<br>");
                out.println("Email: " + email + "<br>");
                out.println("Password: " + password + "<br>");
                out.println("Gender: " + gender + "<br>");

                User user = new User(name, email, password, gender);

                UserDao dao = new UserDao(ConProvider.getConnection());
                if (dao.saveUser(user)) {
                    out.println("Registration successful!");
                } else {
                    out.println("Error in registration.");
                }
            }
        }
    }

}
