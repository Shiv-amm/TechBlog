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
import javax.servlet.http.HttpSession;

public class LogServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LogServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            
            String userEmail=request.getParameter("email");
            String userPassword=request.getParameter("password");
            
            UserDao dao=new UserDao(ConProvider.getConnection());
            
            User u=dao.getUserByEmailAndPassword(userEmail, userPassword);
            
            if(u==null){
                out.println("Invalid details....Try Again!");
            }else{
                HttpSession s=request.getSession();
                s.setAttribute("currentUser", u);
                response.sendRedirect("profile.jsp");
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }   
}
