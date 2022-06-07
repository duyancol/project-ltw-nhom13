package com.example.demo11.controlAdmin;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Dashboard", value = "/Dashboard")
public class Dashboard extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = PDSevice.getInstance().getAll();
        request.setAttribute("pdlist",list);
        request.getRequestDispatcher("admin_web/admin.jsp").forward(request,response);
    }
}
