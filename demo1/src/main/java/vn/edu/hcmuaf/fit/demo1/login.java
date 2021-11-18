package vn.edu.hcmuaf.fit.demo1;

import vn.edu.hcmuaf.fit.demo1.services.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "login", value = "/doLogin")
public class login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//response.getWriter().println("hello worlds");
// get email and passwords
        String username = request.getParameter("username");
        String password=request.getParameter("password");

     //   response.getWriter().println("email"+email);
      //  response.getWriter().println("passwords"+password);
        if(user.getInstance().checkLogin(username,password)){
            response.sendRedirect("/demo1/index1.jsp");
        }else{
          //  response.getWriter().println("login fail");
            request.setAttribute("error","Username or passwords is incorrect");
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }
}
