<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 18/04/2022
  Time: 10:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/categogy-product.css">
    <!-- font awesome -->
    <script src="https://kit.fontawesome.com/dbed6b6114.js" crossorigin="anonymous"></script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class = "products">
    <div class = "container">
        <h1 class = "lg-title">${pdlistcc.name}</h1>
        <p class = "text-light">Lorem ipsum dolor sit amet consectetur adipisicing elit. Aspernatur quos sit consectetur, ipsa voluptatem vitae necessitatibus dicta veniam, optio, possimus assumenda laudantium. Temporibus, quis cum.</p>

        <div class = "product-items">
            <!-- single product -->
            <c:forEach items="${pdlist}" var="p">
            <div class = "product">
                <div class = "product-content">
                    <div class = "product-img">
                        <img src = "${p.img}" alt = "product image">
                    </div>
                    <div class = "product-btns">
                        <button type = "button" class = "btn-cart"> add to cart
                            <span><i class = "fas fa-plus"></i></span>
                        </button>
                        <button type = "button" class = "btn-buy"> buy now
                            <span><i class = "fas fa-shopping-cart"></i></span>
                        </button>
                    </div>
                </div>

                <div class = "product-info">
                    <div class = "product-info-top">
                        <h2 class = "sm-title">lifestyle</h2>
                        <div class = "rating">
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "fas fa-star"></i></span>
                            <span><i class = "far fa-star"></i></span>
                        </div>
                    </div>
                    <a href = "#" class = "product-name">${p.name}</a>
                    <p class = "product-price">$ ${p.price}</p>
                    <p class = "product-price">$ ${p.price-p.price*p.saleprice/100}</p>
                </div>


                <c:if test="${p.saleprice!=0.0}">
                                    <div class = "off-info">
                                        <h2 class = "sm-title">25% off</h2>
                                    </div>
                </c:if>
            </div>
            </c:forEach>
            <!-- end of single product -->
            <!-- single product -->

            <!-- end of single product -->
            <!-- single product -->

            <!-- end of single product -->
        </div>

    </div>
</div>

<div class = "product-collection">
    <div class = "container">
        <div class = "product-collection-wrapper">
            <!-- product col left -->
            <div class = "product-col-left flex">
                <div class = "product-col-content">
                    <h2 class = "sm-title">men's shoes </h2>
                    <h2 class = "md-title">men's collection </h2>
                    <p class = "text-light">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae consequatur facilis eligendi quibusdam voluptatibus exercitationem autem voluptatum, beatae architecto odit, quisquam repellat. Deleniti, architecto ab.</p>
                    <button type = "button" class = "btn-dark">Shop now</button>
                </div>
            </div>

            <!-- product col right -->
            <div class = "product-col-right">
                <div class = "product-col-r-top flex">
                    <div class = "product-col-content">
                        <h2 class = "sm-title">women's dresses </h2>
                        <h2 class = "md-title">women's collection </h2>
                        <p class = "text-light">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae consequatur facilis eligendi quibusdam voluptatibus exercitationem autem voluptatum, beatae architecto odit, quisquam repellat. Deleniti, architecto ab.</p>
                        <button type = "button" class = "btn-dark">Shop now</button>
                    </div>
                </div>

                <div class = "product-col-r-bottom">
                    <!-- left -->
                    <div class = "flex">
                        <div class = "product-col-content">
                            <h2 class = "sm-title">summer sale </h2>
                            <h2 class = "md-title">Extra 50% Off </h2>
                            <p class = "text-light">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae consequatur facilis eligendi quibusdam voluptatibus exercitationem autem voluptatum, beatae architecto odit, quisquam repellat. Deleniti, architecto ab.</p>
                            <button type = "button" class = "btn-dark">Shop now</button>
                        </div>
                    </div>
                    <!-- right -->
                    <div class = "flex">
                        <div class = "product-col-content">
                            <h2 class = "sm-title">shoes </h2>
                            <h2 class = "md-title">best sellers </h2>
                            <p class = "text-light">Lorem ipsum dolor sit, amet consectetur adipisicing elit. Molestiae consequatur facilis eligendi quibusdam voluptatibus exercitationem autem voluptatum, beatae architecto odit, quisquam repellat. Deleniti, architecto ab.</p>
                            <button type = "button" class = "btn-dark">Shop now</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="fooder.jsp"></jsp:include>
</body>
</html>
