package com.example.demo11.Controller;

import com.example.demo11.Sevice.PDSevice;
import com.example.demo11.model.Product;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Load8product", value = "/Load8product")
public class Load8product extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = PDSevice.getInstance().get8product();
        request.setAttribute("load8sp",list);

        request.getRequestDispatcher("index.jsp").forward(request,response);
    }
}
