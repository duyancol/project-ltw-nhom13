package vn.edu.hcmuaf.fit.demo1;

import vn.edu.hcmuaf.fit.demo1.services.user;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Register", value = "/doRegister")
public class Register extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String username = request.getParameter("username");
String password = request.getParameter("password");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
if(user.getInstance().register(username,password,email,phone)){
    response.sendRedirect("/demo1/login.jsp");
}else{
    request.setAttribute("error","username exits");
    request.getRequestDispatcher("register.jsp").forward(request,response);
}




    }
}
