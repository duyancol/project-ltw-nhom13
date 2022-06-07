<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 13/04/2022
  Time: 7:10 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="detail.css">
    <link rel="stylesheet" href="css/detail.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section class="detail-product">
    <div class="container">
        <div class="detail">
            <div class="text">
                <h3>${details.name}</h3>
                <p>${details.price-(details.price*details.saleprice/100)}</p>
                <button>add to cart</button>
                <button>detail</button>
            </div>
            <div class="image">
                <img src="${details.img}" alt="">
            </div>
        </div>
        <div class="description">
            <input type="radio" checked name="box" id="box1">
            <input type="radio" name="box" id="box2">
            <input type="radio" name="box" id="box3">
            <nav>
                <ul>
                    <li><label for="box1" class="check1">Detail</label></li>
                    <li><label for="box2" class="check2">Detail2</label></li>
                    <li><label for="box3" class="check3">Detail3</label></li>
                </ul>
            </nav>
            <section class="box-des">
                <div class="box1">
                    <h2>Description 1</h2>
                    <p>${details.mota}<
                    </p>
                </div>
                <div class="box2">
                    <h2>Description 2</h2>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sequi, facere dolorem eius vel ullam numquam,
                        temporibus labore ipsa, dolorum deserunt dolor! Minima asperiores corrupti
                        consequatur cupiditate? Repudiandae, reiciendis corrupti! Itaque?
                    </p>
                </div>
                <div class="box3">
                    <h2>Description 3</h2>
                    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Sequi, facere dolorem eius vel ullam numquam,
                        temporibus labore ipsa, dolorum deserunt dolor! Minima asperiores corrupti
                        consequatur cupiditate? Repudiandae, reiciendis corrupti! Itaque?
                    </p>
                </div>
            </section>
        </div>
    </div>
</section>
<jsp:include page="fooder.jsp"></jsp:include>
</body>
</html>
