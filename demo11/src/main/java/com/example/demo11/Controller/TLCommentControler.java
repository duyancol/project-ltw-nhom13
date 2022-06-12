//package com.example.demo11.Controller;
//
////import com.example.demo11.dao.CommentDao;
////import com.example.demo11.dao.TLCommentDao;
////import com.example.demo11.model.Comment;
////import com.example.demo11.model.TLComment;
//
//import javax.servlet.*;
//import javax.servlet.http.*;
//import javax.servlet.annotation.*;
//import java.io.IOException;
//import java.util.List;
//
//@WebServlet(name = "TLCommentControler", value = "/TLCommentControler")
//public class TLCommentControler extends HttpServlet {
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//        String content =request.getParameter("contentTL");
//        String id = request.getParameter("id");
//        String username = request.getParameter("usernameTL");
//
//
//
////        Comment cmt = new Comment();
////
////        cmt.setContent(content);
////        cmt.setId(id);
////        cmt.setUsername(username);
//
//
//
//
//        TLCommentDao.getInstance().InsertComment("99",content,username);
//            List<TLComment> list = TLCommentDao.getInstance().getdentailPComment();
//        request.setAttribute("listCommentTL",list);
//        RequestDispatcher rd=request.getRequestDispatcher("DisplayComment.jsp");
//
//        rd.forward(request,response);
//    }
//}
