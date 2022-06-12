<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/8/2022
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <link rel="stylesheet" href="css/comment.css">
    <link rel="stylesheet" href="css/listComment.css">
    <title>Title</title>
</head>
<body>


    <div id="reader">
        <c:forEach items="${listComment}" var="m">
        <ol>
            <li>

                <div class="comment_box cs"> <a href="#"> <img src="avatar.jpg" alt="avatar"> </a>
                    <div class="inside_comment">
                        <div class="comment-meta">
                            <div class="commentsuser">${m.username} </div>
                            <div class="comment_date">December 1, 2012 at 1:32 am</div>
                        </div>
                    </div>
                    <div class="comment-body">
                        <p>${m.content}</p>
                    </div>
                    <div class="reply"> <a href="#">Reply</a> </div>
                    <div> <button onclick="showAlert('${m.commentid}','${m.id}')">BL</button></div>
                    <div class="arrow-down"></div>
                </div>



                <ul class="children">
                    <li>
                        <!--Comment Box 2-->
            <c:forEach items="${listRequestComment}" var="o">
                <c:if test="${m.commentid==o.commentid}">
                    <div class="comment_box"> <a href="#"> <img src="avatar.jpg" alt="avatar"> </a>
                        <div class="inside_comment">
                            <div class="comment-meta">
                                <div class="commentsuser">${o.reusername}</div>
                                <div class="comment_date">December 1, 2012 at 1:32 am</div>
                            </div>
                        </div>
                        <div class="comment-body">
                            <p>${o.recontent}</p>
                        </div>
                        <div class="reply"> <a href="#">Reply</a> </div>
                        <div class="arrow-down"></div>
                    </div>
<%--                    <div id="myrecomment" class="tongbl">--%>

<%--                    </div>--%>

                </c:if>

            </c:forEach>
                    </li>
                </ul>
            </li>
        </ol>


        </c:forEach>
    </div>



</body>
</html>
