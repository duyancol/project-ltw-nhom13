<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 17/04/2022
  Time: 10:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="dentail.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class = "card-wrapper">
    <div class = "card" style="display: grid">
        <!-- card left -->
        <div class = "product-imgs"style="width: 400px">
            <div class = "img-display ">
                <div class = "img-showcase">
                    <img src = "${details.img}" alt = "shoe image">
                    <img src = "${details.img}" alt = "shoe image">
                    <img src = "${details.img}" alt = "shoe image">
                    <img src = "${details.img}" alt = "shoe image">
                </div>
            </div>
            <div class = "img-select">
                <div class = "img-item">
                    <a href = "#" data-id = "1">
                        <img src = "${details.img}" alt = "shoe image">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "2">
                        <img src = "${details.img}" alt = "shoe image">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "3">
                        <img src = "${details.img}" alt = "shoe image">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "4">
                        <img src = "${details.img}" alt = "shoe image">
                    </a>
                </div>
            </div>
        </div>
        <!-- card right -->
        <div class = "product-content">
            <h2 class = "product-title">${details.name}</h2>
            <a href = "#" class = "product-link">${pdlistcc.namecategogy}</a>
            <div class = "product-rating">
                <i class = "fas fa-star"></i>
                <i class = "fas fa-star"></i>
                <i class = "fas fa-star"></i>
                <i class = "fas fa-star"></i>
                <i class = "fas fa-star-half-alt"></i>
                <span>4.7(21)</span>
            </div>

            <div class = "product-price">
                <p class = "last-price">Old Price: <span>${details.price}$</span></p>
                <p class = "new-price">New Price: <span>${details.price-(details.price*details.saleprice/100)}$(${details.saleprice}%)</span></p>
            </div>

            <div class = "product-detail">
                <h2>about this item: </h2>
                <p>${details.mota}</p>

<%--                <ul>--%>
<%--                    <li>Color: <span>Black</span></li>--%>
<%--                    <li>Available: <span>in stock</span></li>--%>
<%--                    <li>Category: <span>Shoes</span></li>--%>
<%--                    <li>Shipping Area: <span>All over the world</span></li>--%>
<%--                    <li>Shipping Fee: <span>Free</span></li>--%>
<%--                </ul>--%>
            </div>

            <div class = "purchase-info">
                <input type = "number" min = "0" value = "1">
                <button type = "button" class = "btn">
                    Add to Cart <i class = "fas fa-shopping-cart"></i>
                </button>
                <button type = "button" class = "btn">Compare</button>
            </div>

            <div class = "social-links">
                <p>Share At: </p>
                <a href = "#">
                    <i class = "fab fa-facebook-f"></i>
                </a>
                <a href = "#">
                    <i class = "fab fa-twitter"></i>
                </a>
                <a href = "#">
                    <i class = "fab fa-instagram"></i>
                </a>
                <a href = "#">
                    <i class = "fab fa-whatsapp"></i>
                </a>
                <a href = "#">
                    <i class = "fab fa-pinterest"></i>
                </a>
            </div>
        </div>
    </div>
</div>
<jsp:include page="fooder.jsp"></jsp:include>

<script src="dentail.js"></script>
</body>
</html>
