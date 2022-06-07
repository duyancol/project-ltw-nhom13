<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 10/04/2022
  Time: 9:17 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.google.gson.Gson" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="cart/css/style.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/repoint.css">
    <link rel="stylesheet" href="css/footer.css">
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="css/spyreponsive.css">
    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">
    <link rel="stylesheet" href="css/repointcart.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" >

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<div class="row mb " style="margin: auto;margin-left: 160px;margin-top: 5px; ">
    <div class="boxtrai mr" style=" height: 1100px;border-radius: 6px;">
        <!-- <div class="row" >
            <h1 style="font-size: 20px;color: #abad0a;margin:20px ;">THÔNG TIN NHẬN HÀNG</h1>
            <table class="thongtinnhanhang">
                <tbody id="thongtinnhanhang">
                <tr>
                    <td width="20%" style="color: #1d1c1c;font-weight: 900;">Họ tên</td>
                    <td><input type="text" name="hoten" style="color: black;"></td>
                </tr>
                <tr>
                    <td  style="color: #1d1c1c;font-weight: 900;">Địa chỉ</td>
                    <td><input type="text" name="diachi"style="color: black;"></td>
                </tr>
                <tr>
                    <td  style="color: #1d1c1c;font-weight: 900;">Điện thoại</td>
                    <td><input type="text" name="dienthoai"style="color: black;"></td>
                </tr>
                <tr>
                    <td  style="color: #1d1c1c;font-weight: 900;">Email</td>
                    <td><input type="text" name="email"style="color: black;"></td>
                </tr>
            </tbody>
            </table>
        </div> -->
        <div class="row mb class" style="margin-left:20px " >
            <h1  style="color: #1d1c1c;font-weight: 900;margin: 20px;"> GIỎ HÀNG</h1>
            <table id="cart" class="table table-striped table-bordered"  style="margin-left: 20%" >
                <thead>
                <tr>
                    <th>STT</th>
                    <th>Hình</th>
                    <th>Tên sản phẩm</th>
                    <th>Đơn giá</th>
                    <th>Số lượng</th>
                    <th>Thành tiền ($)</th>
                    <th>Xoa</th>

                </tr>
                </thead>
                <tbody>
                <c:set var="products" value="${cart.productList}"/>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td>1</td>
                        <td><img src="${product.img}" alt=""></td>
                        <td>${product.name}</td>
                        <td>${product.price}</td>
                            <%--                            <td>${product.quantitySol}</td>--%>
                        <td>
                            <input class="changeQuantity" pid="${product.id}" type="number" value="${product.quantitySol}">
                        </td>
                        <td><div class="total-product">${product.totalMoney}</div></td>

                        <td><button   style="border-radius: 5px;" class="remove-product" pid="${product.id}">Xóa</button></td>

                    </tr>
                </c:forEach>

                </tbody>
                <tr class="cart__price">
                    <th colspan="6">Tổng đơn hàng</th>
                    <th>
                        <%--                            <div class="total-cart">${cart.totalPrice} </div>--%>
                        <div class="total-cart"> </div>
                    </th>

                </tr>
            </table>
            <a  href="cart.html" style="text-decoration: none;margin-left: 180px;">Thanh toán >>></a>
            <button onclick="xoatatca()" style="border-radius: 5px;float: right; margin: 20px;">Xóa all</button>
        </div>
        <!-- <div class="row mb">
            <button class="dongy" onclick="dongydathang()">ĐỒNG Ý ĐẶT HÀNG</button>
        </div> -->
    </div>

    <div class="boxphai" >
        <div class="row mb " >
            <div class="boxtitle" >TÀI KHOẢN</div>
            <div class="boxcontent formtaikhoan">
                <form action="#" method="post">
                    <div class="row mb10 "style="color: #1d1c1c;" >
                        Tên đăng nhập<br>
                        <input type="text" name="user" style="margin: 20px 0;">
                    </div>
                    <div class="row mb10" style="color: #1d1c1c;">
                        Mật khẩu<br>

                        <input type="password" name="pass" style="margin: 20px 0;">
                    </div>
                    <div class="row mb10" style="color: #1d1c1c;">
                        <input type="checkbox" name="" > Ghi nhớ tài khoản?</div>
                    <div class="row mb10" style="color: #1d1c1c;">
                        <a href="index.html" style=" border: none; background: #1d1c1c;border-radius: 12px;
                                              color: white;
                                              padding: 7px 22px;
                                              text-align: center;
                                              text-decoration: none;
                                              display: inline-block;
                                              font-size: 16px; ">Đăng Nhập</a>
                    </div>
                </form>
                <li>
                    <a href="#">Quên mật khẩu</a>
                </li>
                <li>
                    <a href="signin.html">Đăng ký thành viên</a>
                </li>
            </div>
        </div>
        <div class="row mb thongtin">
            <div class="boxtitle" >THÔNG TIN</div>
            <div class="boxcontent2 menudoc">
                <ul>
                    <li>
                        <a href="ds_spY.html"> <i class="fas fa-caret-right"></i>  Hướng dẫn mua hàng</a>
                    </li>
                    <li>
                        <a href="lienhe.html"><i class="fas fa-caret-right"></i>   Liên hệ</a>
                    </li>
                    <li>
                        <a href="lienhe-map.html"><i class="fas fa-caret-right"></i>  Gửi câu hỏi tư vấn</a>
                    </li>
                    <li>
                        <a href="lienhe-map.html"><i class="fas fa-caret-right"></i>  Câu hỏi thường gặp</a>
                    </li>


                </ul>
            </div>

        </div>
        <div class="row mb">
            <div class="boxtitle" >DANH MỤC</div>
            <div class="boxcontent2 menudoc">
                <ul>
                    <li>
                        <a href="ds_spY.html">Rượu Vang Ý</a>
                    </li>
                    <li>
                        <a href="ds_spN.html">Rượu Vang Nhật</a>
                    </li>
                    <li>
                        <a href="ds_spP.html">Rượu Vang Pháp</a>
                    </li>
                    <li>
                        <a href="ds_spD.html">Rượu Vang Đức</a>
                    </li>
                    <li>
                        <a href="#">Phụ Kiện</a>
                    </li>

                </ul>
            </div>
            <div class="boxfooter searbox">
                <form action="#" method="post">
                    <input type="text" name="" id="">
                </form>
            </div>
        </div>
        <div >
            <div class="boxtitle1">TOP 10 YÊU THÍCH</div>
            <div class="row boxcontent1">
                <div class=" mb10 top10">
                    <img src="assets/product/cd-pd5.jpg" alt="">
                    <a href="#">Sir Rodney's Marmalade</a>
                </div>
                <div class=" mb10 top10">
                    <img src="assets/product/cd-pd8.jpg" alt="">
                    <a href="#">Cate de Blaye</a>
                </div>
                <div class=" mb10 top10">
                    <img src="assets/product/d-pd2.jpg" alt="">
                    <a href="#">Tharinger Rostbratwurst</a>
                </div>
                <div class=" mb10 top10">
                    <img src="assets/product/a-pd5.jpg" alt="">
                    <a href="#">Mishi Kobe Niku</a>
                </div>
                <div class=" mb10 top10">
                    <img src="assets/product/cd-pd4.jpg" alt="">
                    <a href="#">Sir Rodney's Marmalade</a>
                </div>
                <div class=" mb10 top10">
                    <img src="assets/product/a-pd6.jpg" alt="">
                    <a href="#">Cate de Blaye</a>
                </div>
                <div class=" mb10 top10">
                    <img src="assets/product/cd-pd4.jpg" alt="">
                    <a href="#">Tharinger Rostbratwurst</a>
                </div>
                <div class=" mb10 top10">
                    <img src="assets/product/y-pd1.jpg" alt="">
                    <a href="#">Mishi Kobe Niku</a>
                </div>
            </div>
        </div>
    </div>
</div>
<section id="foos" class="foost">

    <footer>
        <div class="footer-top">
            <div>
                <div class="row">
                    <div class="col-3 item1">
                        <a href="#">
                            <img src="assets/Panader-logo-footer.png">
                        </a>
                        <p class="textwidget">Just like a perfectly baked pastry, we created Panadería
                            with special love – and it shows.</p>
                    </div>
                    <div class="col-3 item2">
                        <h3 class="widget-title">Useful Links</h3>
                        <div class="widget-body">
                            <div class="widget-item ">
                                <a href="#" class="widget-link">
                                    <svg width="16px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 48 47.5" style="enable-background:new 0 0 48 47.5;" xml:space="preserve">
                                            <g>
                                                <path class="st0" d="M22.3,47.7c-1.1,0.7-0.9-0.7-1.8-1.1c-0.8-0.4-1.9,0-2.6-0.4c-1.8-0.9-5.3-4.1-7-5.9C3.6,32.5-3.4,13.3,5,5
                                                    c1.3-1.3,3.9-3,6.3-3.3c6.5-0.9,9.6,2.8,12.1,6.6c2.8-1.9,3.5-4.6,6.3-5.9c7.7-3.7,15.8,2.1,16.6,8.5c1.3,10-3.2,21.4-9.9,27.6
                                                    c-2,1.9-4.5,3.6-6.6,5.2C27.3,45.3,24.6,46.6,22.3,47.7z M6.1,10.9c1-2.5,5-4,5.2-5.9C8.6,5.7,5.7,8.2,6.1,10.9z M38.9,6.8
                                                    c-1.5-1-5.1-2.9-7-1.1c1.9,0.4,2.8-0.5,3.3,1.1c-1.3,1.2-2.7,2.7-4.4,4c-1.5,1.1-4.3,1.8-4,3.7c3.9-2.6,6.6-6.4,11.8-7.7
                                                    C38.5,7,38.8,7.2,38.9,6.8z M14.6,14.9c-2.1,1.9-4.3,4-6.6,5.2c-0.5-0.4-1.1-0.6-1.5-1.1c0-3.3,3.4-4.6,5.2-6.3
                                                    c2-1.9,3.6-4.2,6.3-5.2c-1.3-1.8-3.3-0.1-4.4,0.7c-2.3,1.8-4.5,5.6-6.6,7C6,15.1,6.1,16,5,15.7c0.9,3.1,0.3,6.3,2.2,8.8
                                                    c1-1,2.3-1.6,3.3-2.6c-0.6-0.1-0.8-0.6-0.7-1.5c0.8-0.3,0.6-1.2,1.1-1.8c2.6-3.2,6.9-5,9.9-7.7C18.4,9.5,16.5,13.2,14.6,14.9z
                                                        M29,16.8c-1.2,0.2-1.4-0.5-2.2-0.7c-3.5,2.6-6.4,7.4-11.8,7c-1.9,2.4-5.3,3.2-6.6,6.3c0.7,0.1,0.2,1.2,0.7,1.5
                                                    c2.7-1.6,5.7-3.8,8.8-5.9c2.5-1.6,6.5-6,9.9-2.9c-5.1,4.6-11.9,7.5-16.6,12.5c1.5,0.7,2.6-1.1,3.7-1.8c4.3-3.2,9.4-8.2,14.7-8.1
                                                    c3.3-1.6,6.7-3.1,9.9-4.8c0.4,0.3,1,0.5,1.8,0.4c0.2-1.9,0.7-3.5,0.7-5.5c-5.2,1.8-8.1,5.9-12.9,8.1c0-1.1-1.6-0.6-1.5-1.8
                                                    c0.7-2.4,3.3-3.5,5.2-4.8c2-1.4,4.1-2.9,6.3-4c0.9-1,1.8,0,2.6-0.7C41.2,10.3,40.9,9,40,8.3C36.7,11.5,33.3,14.6,29,16.8z M16.5,19
                                                    c3.1-0.6,4.2-3.2,7-4c0.1-0.9-0.6-1.2-1.1-1.5C20.7,15.6,18.3,17.1,16.5,19z M31.2,37.4c4.1-3.5,7.6-7.6,9.2-13.6
                                                    c-0.1-0.3-0.3-0.4-0.7-0.4c-3.4,2.3-7.1,4.1-11.4,5.5c-0.7,0-0.5-1-1.5-0.7c-4.2,3.3-8.3,6.6-12.9,9.6c1.2,0.5,1.4,2,2.9,2.2
                                                    c1.5-1.3,4.1-3.8,7-5.9c2.5-1.8,7.2-5.8,9.6-4.4c0.7,0.4,0.9,0.9,1.1,1.5c-5.3,3.5-10.5,6.9-14.7,11.4
                                                    C24.9,45.2,26.7,36.6,31.2,37.4z"></path>
                                            </g>
                                            </svg>
                                    <span>ABOUT US</span>
                                </a>
                            </div>
                            <div class="widget-item">
                                <a href="#" class="widget-link">
                                    <svg width="16px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 22 28" style="enable-background:new 0 0 22 28;" xml:space="preserve">
                                            <g>
                                                <path class="st0" d="M19.7,11.4c1,0,1.3,1.8,1.6,2.6c0.4,1.3,0.7,2.5,0.7,3.7c0,1.3-0.4,2.5-0.9,3.6c-0.3,0.9-0.8,1.5-1.3,2.2
                                                c-0.5,0.6-0.9,1-1.6,1.5c-0.4,0.2-0.6,0.6-0.9,0.8c-0.4,0.3-1,0.5-1.5,0.7c-0.5,0.3-1.1,0.4-1.7,0.5c-0.2,0.1-0.5,0.3-0.7,0.3
                                                c-0.9,0.2-1.9,0.1-2.8,0.1c-1.5,0-2.9,0.1-4.2-0.4c-0.3-0.1-0.7-0.3-1-0.5c-2-1-3.6-2.8-4.6-5c-0.1-0.3-0.3-0.5-0.4-0.7
                                                C0,19.7-0.1,17.7,0.1,16c0.1-1.2,0.4-2.6,0.8-3.6c0.4-1,0.7-1.6,1.4-2.5c0.5-0.7,1-1.1,1.6-1.7c0.5-0.5,1-0.8,1.8-1.3
                                                C6,6.6,6.6,6.2,7,6.1C7.8,5.9,8.4,6,9.3,5.8c0.3-1.2,0.6-2.3,1.3-3.1c0.5-0.6,1.7-1.6,2.6-1.9c0.6-0.2,1.4-0.3,2.1-0.4
                                                c3-0.4,5.3,2,5.5,4.6c0,0.8,0.1,1.8,0,2.6C20.7,9.1,20.2,10.3,19.7,11.4z M16.8,1.4c-1.1,0.5-2.2,1.4-3.4,1.8
                                                c-0.1,0.1,0,0.3-0.1,0.4C12.2,4.4,11,5.1,10,6c0,0.1,0,0.2,0,0.3c1.1-0.8,2.1-1.7,3.2-2.4c1.3-0.8,2.8-1.4,3.9-2.4
                                                C17,1.4,16.8,1.4,16.8,1.4z M14.8,1.5c-0.1,0.1-0.2,0.2-0.3,0.2c-0.3,0.2-0.8,0.4-1.2,0.6c-0.3,0.2-0.9,0.4-0.8,0.8
                                                c0.7-0.2,1.4-0.9,2-1.3C14.6,1.8,15.1,1.6,14.8,1.5C14.9,1.5,14.9,1.5,14.8,1.5z M11.7,3.1c0.7-0.4,1.5-0.8,2.1-1.4
                                                C13,1.9,12.3,2.5,11.7,3.1z M18.1,1.9c-0.5,0.6-1.4,0.8-1.9,1.5c0.1,0,0.3,0,0.4,0c0.6-0.4,1.3-0.7,1.8-1.3
                                                C18.3,2,18.2,1.9,18.1,1.9z M15.1,3.2c0.1,0.1,0.3,0,0.5,0c0.3-0.3,1-0.5,1.3-0.8c0,0,0.2-0.3,0.1-0.3C16.3,2.5,15.7,2.8,15.1,3.2z
                                                 M18.7,2.4c-0.5,0.4-1.2,0.7-1.7,1c0.2,0.9,1.7-0.6,1.9-0.9C18.9,2.5,18.9,2.4,18.7,2.4z M19.2,3C18.8,3.4,18,3.5,17.6,4
                                                c0.1,0.2,0.2,0.3,0.4,0.3c0.5-0.4,1.1-0.6,1.5-1.1C19.5,3.1,19.4,3,19.2,3z M11.4,4.6c0.4-0.3,1.4-0.9,0.8-1.2
                                                c-0.7,0.6-1.9,0.9-1.9,2C10.5,5.2,10.9,4.9,11.4,4.6z M11,3.7c0.1,0,0.2-0.1,0.2-0.2C11.1,3.4,11.1,3.6,11,3.7z M18.1,4.6
                                                c0,0.2,0,0.2,0,0.3c0.7-0.2,1.3-0.6,1.6-1.1C19.2,3.8,18.7,4.4,18.1,4.6z M17.8,5.9c-0.4-1.8-3-2.5-4.3-1c-1,1.4-0.3,3.9,1.4,4.2
                                                C15,9.1,15,9.3,15.1,9.4C16.8,9.2,18.3,7.7,17.8,5.9z M18.6,5.7c0.6-0.3,1.6-0.5,1.4-1.3C19.4,4.8,18.1,4.9,18.6,5.7z M12.5,4.9
                                                c-0.6,0.6-1.8,1.1-2.4,1.8C10,6.7,10,7,10,7.1c0.7-0.4,1.5-1.2,2.1-1.7c0.2-0.2,0.5-0.3,0.5-0.6C12.6,4.9,12.5,4.9,12.5,4.9z
                                                 M18.6,6.1c-0.1,0.3-0.1,0.5,0,0.8c0.3-0.1,0.6-0.4,0.9-0.6c0.2-0.2,0.7-0.4,0.6-0.8C19.5,5.6,19.1,5.8,18.6,6.1z M10.1,7.6
                                                c-0.1,0.1,0,0.4,0,0.5c0.5-0.4,1.1-0.9,1.6-1.3C12,6.6,12.5,6.5,12.3,6C11.4,6.4,10.8,7,10.1,7.6z M20,6.7c-0.6,0.7-1.9,0.9-2,1.9
                                                c0.8-0.5,1.5-1.1,2.1-1.8C20.2,6.7,20.1,6.6,20,6.7z M18.4,7.3C18.8,7.3,19,7,19.2,6.8C18.9,6.9,18.5,6.9,18.4,7.3z M6.8,7.4
                                                C6.5,7.7,6.4,8.5,6.2,8.9c0,0-0.1,0.1,0,0c-0.2,0.8-0.3,1.7-0.4,2.4c1.2-0.2,2.5-0.2,3.7-0.4C9.4,9.5,9.5,8.3,9.3,6.9
                                                C8.4,6.8,7.2,6.8,6.8,7.4z M12.2,7c-0.4,0.1-1.9,1.1-1.9,1.4c-0.1,0.4,0.2,0.8,0.4,1.1c0.3-0.3,0.7-0.6,1.1-0.9
                                                c0.4-0.3,1-0.5,0.8-1c-0.8,0.3-1.3,0.9-2,1.3C10.9,8,11.9,7.8,12.4,7C12.3,7,12.3,7,12.2,7z M17.2,9.7c-0.1,0-0.1-0.1-0.3-0.1
                                                C16.7,9.8,17,9.8,17,10c-0.2,0.2-0.6,0.4-0.6,0.8c-1.3,0.9-2.7,1.6-3.7,2.7c0.1,0.2,0.2,0.4,0.4,0.4c1.2-1.1,2.4-2.2,3.8-3.2
                                                c0-0.1,0-0.2,0-0.2c0.8-0.9,1.9-1.5,2.8-2.3c0.1-0.1,0.3-0.3,0.3-0.6C19,8.2,18.1,8.9,17.2,9.7z M5.5,8.2c-1.4,1.2-2.7,2.5-3.4,4.3
                                                c1-0.2,1.8-0.6,2.8-0.9C5,10.4,5.4,9.3,5.5,8.2C5.6,8.2,5.6,8.2,5.5,8.2z M12.7,8.4c-0.1,0-0.2,0.2-0.3,0.3
                                                c-0.6,0.4-1.9,0.9-1.6,1.6c0.2-0.1,0.3-0.3,0.5-0.5c0.5-0.5,1.2-0.8,1.6-1.4C12.8,8.4,12.8,8.4,12.7,8.4z M17.7,10.2
                                                c0.1,0,0.1,0.2,0.3,0.2c0.6-0.4,1-0.9,1.6-1.3C19.7,9,20,9,19.9,8.7c0-0.1-0.1-0.1-0.1-0.1C19.2,9.2,18.2,9.5,17.7,10.2z M13.1,8.9
                                                c-0.7,0.6-1.5,1-2.1,1.7c0,0.2,0.1,0.2,0.1,0.3c0.5-0.2,0.8-0.6,1.1-0.9c0.5-0.2,0.9-0.5,1.2-1C13.3,9,13.3,8.9,13.1,8.9z
                                                 M12.5,10.3c-0.6,0.4-1.3,0.6-1,1.4c0.7-0.7,1.7-1.3,2.3-2C13.3,9.5,13,10,12.5,10.3z M17.8,11c0.2,0,0.2,0.2,0.4,0.2
                                                c0.3-0.6,1.5-0.8,1.3-1.6C19,10.1,18.3,10.4,17.8,11z M16.2,9.9c-0.4,0-0.6,0.3-0.9,0.5c-0.9,0.6-2,1.2-2.7,1.8
                                                c-0.2,0-0.5,0.1-0.6,0.2c0.1,0.3,0.2,0.5,0.4,0.6C13.6,11.9,15,11,16.2,9.9C16.3,9.9,16.2,9.9,16.2,9.9z M14.4,10
                                                c-0.2,0.3-0.7,0.4-1,0.7c-0.3,0.2-0.6,0.5-0.8,0.7c-0.3,0.2-0.8,0.4-0.7,0.9c0.6-0.1,1-0.8,1.6-1.1c0.8-0.1,1.2-0.6,1.7-1
                                                C14.9,10,14.6,10,14.4,10z M13.4,14.2c0.1,0.1,0.1,0.3,0.3,0.3c1.1-1.2,2.4-2.1,3.7-3.1c-0.2-0.2,0.1-0.4-0.1-0.5
                                                C15.9,11.8,14.5,12.8,13.4,14.2z M14,14.6c0,0.1,0.2,0.2,0.2,0.2c1.3-0.9,2.2-2.2,3.6-3c0,0.1,0.1,0.1,0.1,0.2c-1,1-2.6,1.8-3.4,3
                                                c0.2,0.1,0.3,0.2,0.5,0.2c0.6-0.9,1.5-1.4,2.3-2c0.1,0,0.2,0,0.3,0c0.2-0.3,0.4-0.7,0.7-1.1c0.2-0.4,0.6-0.7,0.5-1.1
                                                C17,12,15.3,13.1,14,14.6z M10.2,11.8c-0.2,1.4,0,3.2,0,4.9c2.1,0.2,3.5,0.2,5.7,0.2c0-0.2,0.1-0.2,0-0.4c-0.2-0.1-0.3,0.2-0.6,0.1
                                                c-0.3-0.2-0.5-0.5-0.7-0.8c-1.8-0.8-2.9-2.4-3.8-4C10.6,11.8,10.4,11.8,10.2,11.8z M5.6,12.4c-0.1,1.4-0.3,3-0.3,4.2
                                                c1.2,0.3,2.6,0.2,4,0.2c0.1-1.7,0.1-3.4,0-4.9C8.2,11.9,6.7,12.1,5.6,12.4z M19,12.6c-0.6,1.1-1.5,2-2.3,2.9c0.1,0.5,0,0.9,0.1,1.3
                                                c1.3,0,2.8,0.3,4,0.1C20.9,15.3,19.9,13.4,19,12.6z M1.6,13.7c-0.4,0.9-0.5,2-0.7,3.1c1.2,0.1,2.4,0.1,3.6,0c0-1.1,0.4-2.8,0.2-4
                                                C3.6,13,2.6,13.4,1.6,13.7z M15.3,15.5c0.7,0.2,1-0.8,1.5-1.2C16.2,14.6,15.6,14.9,15.3,15.5z M0.9,17.7c0,0.9,0.1,1.8,0.3,2.5
                                                c0.9,0.7,2.1,1,3.5,1.3c0.1-1.3-0.1-2.6-0.2-3.8C3,17.7,2.1,17.6,0.9,17.7z M5.2,17.8c0.1,1.2,0.2,2.6,0.3,3.8
                                                C6.7,21.9,8.2,22,9.6,22c-0.1-1.5-0.1-2.8-0.2-4.3c-1.2,0-2.7-0.1-4-0.1C5.3,17.6,5.2,17.7,5.2,17.8z M10.2,17.8
                                                c0,1.5,0,2.8,0.2,4.3c1.5,0.2,3.3,0,4.9-0.2c0.4-1.1,0.6-2.7,0.6-3.9C14.3,17.7,12,17.6,10.2,17.8z M16.7,17.9
                                                c0,1.2-0.3,2.5-0.5,3.6c1.5,0.1,2.7-0.8,4-0.9c0.4-0.7,0.6-1.6,0.6-2.6C19.4,17.8,18.3,17.9,16.7,17.9z M5.5,25.4
                                                c-0.3-1-0.5-2.1-0.7-3.1c-1.2-0.2-2-0.6-3.1-1C2.5,23.2,3.5,24.8,5.5,25.4z M15.9,22.6c-0.3,1.1-0.7,2-1,3c2.2-0.6,3.7-2,4.8-3.8
                                                C18.4,21.9,17.2,22.4,15.9,22.6z M5.7,22.5c0,0.5,0.2,1.2,0.3,1.8c0.1,0.5,0.3,1.3,0.6,1.5c0.3,0.3,1.2,0.3,1.8,0.5
                                                c0.4,0.1,0.8,0.3,1.2,0.1c-0.1-0.8,0.2-2.3,0-3.5C8.2,22.8,7.1,22.7,5.7,22.5z M10.4,23c0,1.1,0.1,2.5,0,3.6c1.3,0,2.3-0.2,3.3-0.5
                                                c0.6-1,1.1-2.1,1.4-3.4C13.6,22.9,11.8,22.9,10.4,23z"></path>
                                            </g>
                                        </svg>
                                    <span><a href="https://www.google.com/maps/place/313+S+Maclay+Ave,+San+Fernando,+CA+91340,+Hoa+K%E1%BB%B3/@34.2823229,-118.4451155,17z/data=!3m1!4b1!4m5!3m4!1s0x80c2904a5eb192a1:0x73f25f3cf0de68ba!8m2!3d34.2823229!4d-118.4429268">LOCATIONS</a></span>

                                </a>
                            </div>
                            <div class="widget-item">
                                <a href="#" class="widget-link">
                                    <svg width="16px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 37 47.5" style="enable-background:new 0 0 37 47.5;" xml:space="preserve">
                                            <g>
                                                <path class="st0" d="M33,47.1c-9.1,0.9-19.8,0-29-0.2c-1.2-2-1.1-4.2-1.2-7.6c0-1.8-0.5-3.7-0.7-5.4C1.2,24,0.8,15.1,1.2,3.7
                                                    C2.6,2,5,2.6,7.3,2.5c5.9-0.2,13.1-0.4,18.4-1.7c1.5-0.3,3.5,2.9,4.5,4c1.3,1.6,2.3,3.2,3.3,4.5c-1.2,10.1,1.3,23.8,1.4,35.4
                                                    C34.1,45.4,33.6,46.3,33,47.1z M25.2,4.7c0.2-0.3,0.5-0.4,0.9-0.5c0.1-0.6-0.3-0.8-0.9-0.7C25.1,3.6,24.7,4.6,25.2,4.7z M22.4,4
                                                    C15.3,5,11.6,4.7,4,4.9c-0.8,6.5-0.1,10.8,0,17c0,2.9-0.1,5.8,0.2,8.7c0.4,2.8,0.7,5.6,1.2,8.5c-1.5,1.5-0.3,3.2,0.2,5.4
                                                    c4.6,1,10,0.2,15.1,0.5c4.2,0.2,8.4,0.7,11.8-0.2c0-11-1.9-21.4-1.7-33.5c-2.6,0.3-4.4,1.4-7.3,1.4C22.5,10,23.2,6.8,23.1,4
                                                    c-0.2,0-0.3,0-0.5,0C22.6,4,22.5,4,22.4,4z M25,6.5C25.1,7,24.7,7.9,25.2,8c0.7-0.9,2.1-1.2,2.8-2.1c-0.8,0.3-0.2-0.8-0.9-0.5
                                                    C26.7,6,26.2,6.6,25,6.5z M25.2,10.3c0.3,0.4,1.3-0.6,2.4-0.2c-0.4-1.4,1.7-1.6,1.2-2.4C27.7,8.7,26.2,9.3,25.2,10.3z"></path>
                                                <path class="st0" d="M22.4,11.3c-0.7,1.8-3.2,0.8-4.7,0.7c-2.1-0.1-4.3-0.2-6.6-0.2c-1.7,0-3.1,0.7-4.5-0.2
                                                    c-0.3-2.4,2.6-1.8,4.5-1.7c1.9,0.1,4.4,0.2,6.6,0.2C19.4,10.1,21.9,9.4,22.4,11.3z"></path>
                                                <path class="st0" d="M28.1,16.9c-0.5,2.1-1.8,1-3.3,0.9c-4.6-0.2-9.7,0.2-13.7,0.7c-1.3,0.2-3.5,0.9-4.2-0.7
                                                    c-0.1-1.5,1.9-1.2,2.8-1.4c3.6-0.7,8.5-0.9,12.3-0.7C24,15.8,26.9,15,28.1,16.9z"></path>
                                                <path class="st0" d="M27.1,22.8c-0.7,1.8-2.8,0.9-4.5,0.9c-2.5,0.1-5.2,0.3-7.6,0.5c-2.9,0.3-6.2,1.8-8,0c0-1.8,1.9-1.2,3.3-1.4
                                                    c2.9-0.4,6.8-1,11.1-1.2C23.6,21.5,26.2,21.2,27.1,22.8z"></path>
                                                <path class="st0" d="M28.8,31.1c-0.1,1.8-1.9,1-3.3,0.9c-1.3-0.1-2.9,0.2-4.2,0.2c-3.4,0-7.2-0.6-10.2-0.2c-1.6,0.2-2.8,1.3-3.8,0
                                                    c0.9-3.1,5.4-2.3,9-2.1c2.1,0.1,4.3,0,6.6,0C25.1,29.9,27.7,29.3,28.8,31.1z"></path>
                                                <path class="st0" d="M29,37.5c-0.2,1.8-2,1-3.1,1.2c-4,0.6-8.5,1.1-13.2,1.7c-1.3,0.2-3.2,0.7-4.3-0.5c0-2.2,3.5-1.9,5.7-2.1
                                                    c3.7-0.5,7.8-0.7,11.8-0.9C27,36.7,29.2,36,29,37.5z"></path>
                                            </g>
                                        </svg>
                                    <span>CAREERS</span>
                                </a>
                            </div>
                            <div class="widget-item">
                                <a href="#" class="widget-link">
                                    <svg width="16px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" viewBox="0 0 24 29.5" style="enable-background:new 0 0 24 29.5;" xml:space="preserve">
                                            <path class="st0" d="M10.2,10.1c1.5,2.3,2.9,4.9,4.6,7.2c0.3,0.4,0.8,1.2,1.1,1.2c0.6,0.1,1.6-0.5,2.2-0.8c1-0.4,1.9-0.9,2.7-0.6
                                                    c1.3,2.1,3.4,3.6,3.2,6.8c-0.9,1.3-2,2-3.4,3.1c-1,0.8-1.8,1.5-2.9,2.1c-0.7,0.4-2.1,0.6-3.1,0.1c-1.5-0.6-3-2.5-4.1-3.9
                                                    C9.2,23.8,8,22.5,7,20.9c-2-2.9-3.6-5.5-5-8.9c-0.5-1.1-1.3-2.9-1-4.7C1,6.8,1.7,5.6,2,5.1c0.9-1.3,2.5-2.7,3.7-3.6
                                                    C5.8,1.2,5.9,0.9,6,0.6c2.2-1.1,3.5,0.8,4.8,2.3c0.9,1,1.6,2,1.8,2.9C13.3,7.9,11.2,8.8,10.2,10.1z M7.3,1.5c0.2,0,0.2-0.1,0.3-0.2
                                                    c-0.1,0-0.2-0.1-0.3-0.1C7.2,1.4,7.3,1.3,7.3,1.5z M8.3,2.3c0.1-0.1,0.4-0.4,0.1-0.5C8.4,1.9,8.1,2.1,8.3,2.3z M5.9,2.5
                                                    c0,0.2,0.1,0.3,0.3,0.3c0-0.2,0.1-0.3,0.1-0.5C6,2.3,6,2.4,5.9,2.5z M6.9,6.9C7.2,6.8,7.3,6.4,7.3,6c0.4-1,1-2.3,0.9-3.7
                                                    C7.8,3.9,6.9,5.3,6.9,6.9z M9.1,3.1C9.3,3.2,9.4,3,9.6,3c0-0.3-0.1-0.5-0.3-0.5C9.1,2.6,9.2,2.9,9.1,3.1z M3.7,6.8
                                                    c0.6-0.5,0.7-1.5,1-2.3C4.9,4.2,5.1,3.6,5,3.3C4,3.9,4.1,5.5,3.7,6.8z M8.6,7.9c0.6,0,0.7-0.8,0.8-1.3C9.7,5.7,9.7,4.7,10.2,4
                                                    c0.2-0.1,0.2,0.1,0.3,0.1c0-0.4-0.3-0.4-0.5-0.6C9.6,5,9,6.4,8.6,7.9z M10.8,5.1c0-0.2,0.3-0.2,0.3-0.4c0-0.1-0.1-0.2-0.2-0.2
                                                    C10.8,4.7,10.6,5,10.8,5.1z M9.6,9C9,9.1,8.8,9.6,8.7,10.2c0.4,0,0.4-0.3,0.4-0.5c0.4-0.3,0.9-0.6,1.1-1.1C10.1,8.5,10,8.5,10,8.3
                                                    c0.2-1,0.7-2,0.6-3C10.3,6.5,9.8,7.6,9.6,9z M10.7,8.1c0.7-0.3,1.5-1.4,0.8-2.2C11.3,6.6,11,7.4,10.7,8.1z M6.1,6.8
                                                    c0-0.3,0-0.6-0.1-0.8C6,6.3,5.6,6.9,6.1,6.8z M7.9,7.5c0.1-0.4,0.3-1,0.2-1.3C8,6.5,7.4,7.2,7.9,7.5z M2.1,7.3
                                                    c0-0.1,0.2-0.4,0.1-0.5C2.1,6.9,1.9,7.2,2.1,7.3z M5.7,11.1c0.2-1.4,1-3.1,0.8-4.2c0,0-0.1,0-0.1,0C6.5,8.4,5.5,9.7,5.7,11.1z
                                                    M1.8,8.5C2,8.4,2.2,7.5,2,7.5C1.9,7.8,1.8,8.1,1.8,8.5z M3.6,11.3C4,10.4,4.3,8.7,4.2,7.7C3.9,8.8,3.4,10.1,3.6,11.3z M4.6,10.2
                                                    c-0.1,0.3-0.3,0.9,0.1,1c0.2-0.9,0.5-2.3,0.5-3.4C5.1,8.6,4.8,9.5,4.6,10.2z M8,9.6c0.1-0.3,0.5-0.9,0.2-1.2C8.1,8.7,7.8,9.2,8,9.6z
                                                    M2.5,9.4c0.1,0.7-0.4,1.4,0.2,1.6c0.2-0.5,0.1-1.2,0.2-1.7C2.9,9.1,2.6,9.4,2.5,9.4z M9.3,10.7c0,0.2,0.1,0.2,0.3,0.2
                                                    C9.6,10.8,9.5,10.7,9.3,10.7C9.3,10.7,9.3,10.8,9.3,10.7z M9.6,12.2c0.3,0,0.6-0.1,0.7,0.1c0.1,0.1,0,0.5,0.1,0.6c0.1,0,0.3,0,0.4,0
                                                    c-0.2-0.6-0.6-1.2-1-1.6C9.7,11.6,9.7,11.9,9.6,12.2z M5.7,12c0-0.2-0.1-0.3,0-0.5C5.4,11.4,5.2,12.1,5.7,12z M3.8,12.5
                                                    c0.1-0.2,0.2-0.4,0.1-0.7c-0.1,0-0.2,0-0.2-0.1C3.7,12,3.6,12.3,3.8,12.5z M6.9,15.3c0.3-0.8,0.7-1.9,0.8-2.7
                                                    C7.4,13.4,6.8,14.3,6.9,15.3z M5.7,15.8c-0.2,0-0.1,0.3-0.3,0.3C4.9,16,5.1,15.3,5,14.9c-0.1-0.2-0.4-0.2-0.3-0.4
                                                    c0-0.5,0.1-0.8,0-1.1c-0.9,1.4,0.4,2.8,1.1,3.7c0-1.4,0.7-2.8,0.6-3.8C6.1,14.1,5.6,14.9,5.7,15.8z M11.4,14.8
                                                    c0.2,0,0.3-0.1,0.5-0.1c0-0.2-0.2-0.4-0.3-0.5C11.6,14.5,11.4,14.5,11.4,14.8z M7.2,17.2c-0.1,0.4,0,1-0.4,1.2
                                                    c-0.5-0.2-0.3-0.6-0.3-1.1c-0.3-0.2-0.2,0.3-0.5,0.3c0.5,0.7,0.8,1.6,1.5,2.1c-0.5-1.5,0.4-3.3,0.3-4.7C7.6,15.7,7.4,16.5,7.2,17.2z
                                                    M12.1,16.1c0.3,0.1,0.7,0,0.8,0.3c0,0.3-0.1,0.5-0.1,0.8c0.4-0.1,0.7-0.1,0.9,0.1c-0.5,2.4-1.4,5.1-1.8,7.3c-0.1,0.4-0.2,1,0.3,1.1
                                                    c0.3-2.8,1-5.2,1.5-7.7c0.1-0.1,0.2-0.2,0.3-0.3c-0.6-0.8-1.1-1.7-1.8-2.5C12.2,15.5,12.1,15.8,12.1,16.1z M6.4,17
                                                    c0.3-0.3,0.4-1.2,0.3-1.6C6.6,15.9,6.5,16.5,6.4,17z M9.4,21.4c-0.1,0.4-0.3,1,0.1,1.2c0.4-2.4,1.4-4.7,1.6-7.1
                                                    C10.5,17.3,9.8,19.3,9.4,21.4z M19.7,18c-0.5,2.8-0.8,6.3-1,9c-0.2,0-0.3,0.2-0.5,0.2c-0.2-0.7-0.2-1.8-0.1-2.7
                                                    c0.1-1.6,0.4-3.6,0.5-5.2c0-0.2,0.2-0.7-0.1-0.9c-0.5,0.2,0,0.4,0,0.8c-0.7,2.8-1,6.2-1.4,9.1c0.6,0,0.6-0.5,1-0.7
                                                    c0.6-0.1,0.8-0.4,1.2-0.7c0-2.7,0.6-5.8,0.5-8.5c0.1-0.2,0.3-0.2,0.3-0.5C19.9,17.9,20,18,19.7,18z M20.6,22.3
                                                    c0.2-1,0.4-2.7,0.2-3.6C20.7,19.7,20.4,21.1,20.6,22.3z M17.3,19.2c-0.2,1.6-0.4,3.2-0.7,4.7c-0.2,1.6-0.7,3.1-0.5,4.6
                                                    c0.6,0,0.4-0.7,0.4-1c0.2-2.9,0.6-5.8,1.1-8.5c0-0.1-0.1-0.1-0.1-0.1C17.4,19.1,17.4,19.2,17.3,19.2z M16.1,20.5
                                                    c-0.6,1.8-0.8,4.3-1.1,6.3c-0.1,0.5-0.5,1.3,0.1,1.6c0.4-1.2,0.4-2.6,0.5-4c0.2-1.3,0.5-2.7,0.6-4c0-0.1-0.1-0.1-0.1-0.1
                                                    C16.1,20.3,16.1,20.4,16.1,20.5z M13.4,27.2c0.2,0.3,0.5,0.7,0.9,0.6c-0.1-2.1,0.4-5,0.9-7.2c0-0.1-0.1-0.1-0.1-0.1
                                                    C14.4,22.7,14,25.1,13.4,27.2z M10.8,21.3c0-0.1,0.2-0.5,0.1-0.5C10.8,20.9,10.6,21.2,10.8,21.3z M10.3,23.6c0-0.8,0.6-1.7,0.3-2.1
                                                    C10.6,22.1,10,22.9,10.3,23.6z M11.1,23.1c-0.1,0.5-0.3,1.3,0.1,1.4c0.2-0.9,0.5-2.2,0.4-2.9C11.5,22.1,11.2,22.6,11.1,23.1z
                                                    M19.9,26.3c0.5-0.3,1.8-0.8,1.2-1.4C21,25,21,25.3,20.8,25.4c-0.9-0.5,0.1-2.3-0.3-3C20.3,23.8,20.2,24.8,19.9,26.3z M12.8,26.5
                                                    c0.2-0.3,0.4-1.1,0.2-1.5C13.1,25.6,12.5,26.3,12.8,26.5z"></path>
                                            </svg>
                                    <span>CALL US 5555-00-444</span>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 item3">
                        <h3 class="widget-title">NEWS</h3>
                        <div class="widget-body">
                            <div class="widget-item">
                                <a href="#">
                                    <img src="assets/blog-img-10-150x150.jpg">
                                </a>
                                <div class="widget-item-right">
                                    <a href="#">
                                        <h5>BAKING HAPPY</h5>
                                    </a>
                                    <a href="#">
                                        <p>MARCH 18, 2019</p>
                                    </a>
                                </div>
                            </div>
                            <div class="widget-item">
                                <a href="#">
                                    <img src="assets/blog-img-11-150x150.jpg">
                                </a>
                                <div class="widget-item-right">
                                    <a href="#">
                                        <h5>BREADS & PASTRIES</h5>
                                    </a>
                                    <a href="#">
                                        <p>MARCH 18, 2019</p>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 item4">
                        <h3 class="widget-title">INSTAGRAM</h3>
                        <div class="widget-body">
                            <ul>
                                <li>
                                    <a href="#">
                                        <img src="assets/55731233_129432651513947_8126695847471313537_n.jpg">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="assets/54429281_123937955370614_5722280565074263255_n.jpg">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="assets/53730445_303350890349016_2105597345185984442_n.jpg">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="assets/53898305_294571244773286_1681076972782938727_n.jpg">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="assets/54732207_2309061759420411_7754229395380267702_n.jpg">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="assets/53423917_149512629413392_7621886354360448446_n.jpg">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="assets/53253055_333998163894397_315975867628131081_n.jpg">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="assets/54247961_673610903058322_5989601907598599138_n.jpg">
                                    </a>
                                </li>

                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="row">
                <div class="col-6">
                    <ul>
                        <a href="#">
                            <li>
                                <i class="fa fa-facebook-f"></i>
                                <span>FACEBOOK</span>
                            </li>
                        </a>
                        <a href="#">
                            <li>
                                <i class="fa fa-instagram"></i>
                                <span>INSTAGRAM</span>
                            </li>
                        </a>
                        <a href="#">
                            <li>
                                <i class="fa fa-twitter"></i>
                                <span>TWITTER</span>
                            </li>
                        </a>
                        <a href="#">
                            <li>
                                <i class="fa fa-pinterest"></i>
                                <span>PINTEREST</span>
                            </li>
                        </a>
                        <a href="#">
                            <li>
                                <i class="fa fa-behance"></i>
                                <span>BEHANCE</span>
                            </li>
                        </a>
                    </ul>
                </div>
                <div class="col-6 note">
                    <a href="#">
                        <span>© 2019 - Mikado - Themes. All Rights Reserved.</span>
                    </a>
                </div>
            </div>
        </div>
    </footer>
</section>

</div>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.js" ></script>
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js" ></script>
<script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js" ></script>
<script>
    var cart;
    var dt;
    $(document).ready(function() {
        <%String data=session.getAttribute("cart")==null?"{}":new Gson().toJson(session.getAttribute("cart"));%>

        cart =JSON.parse('<%=data%>')
        dt=  $('#cart').DataTable({
            responsive: {
                breakpoints: [
                    {name: 'bigdesktop', width: Infinity},
                    {name: 'meddesktop', width: 1480},
                    {name: 'smalldesktop', width: 1280},
                    {name: 'medium', width: 1188},
                    {name: 'tabletl', width: 1024},
                    {name: 'btwtabllandp', width: 848},
                    {name: 'tabletp', width: 768},
                    {name: 'mobilel', width: 480},
                    {name: 'mobilep', width: 320}
                ]
            }
        });
        loadCart(cart);
        $('#cart tbody .remove-product').on( 'click', function () {
            var id=$(this).attr('pid');
            thisRow=$(this);
            $.ajax({
                url:'/demo11/cart-remove',
                type:'POST',
                data:{
                    id:id
                },
                success:function (data){
                    delete cart.productList[id];
                    dt.row(thisRow.parents('tr')).remove().draw();
                    loadCart(cart)
                },
                error:function (data){
                    alert("eror")
                }
            });

        } );

        $('#cart tbody .changeQuantity').on( 'blur', function () {
            var id=$(this).attr('pid');
            var quantity=$(this).val();
            thisRow=$(this);
            $.ajax({
                url:'/demo11/cart-updateQuantity',
                type:'POST',
                data:{
                    id:id,
                    quantity:quantity
                },
                success:function (data){

                    JSQuantity=JSON.parse(data);
                    thisRow.val(JSQuantity.quantity);
                    updateQuantity(cart,id,JSQuantity.quantity)

                    loadCart(cart)
                },
                error:function (data){
                    alert("eror")
                }
            });

        } );


    } );
    function loadCart(cart){
        sum=0;


        for(const x in cart.productList){
            sum+=cart.productList[x].price*cart.productList[x].quantitySol;


        }





        $(".total-cart").html(sum);

    }
    function updateQuantity(cart,id,quantity){
        cart.productList[id].quantitySol=quantity;
    }


</script>
</body>



</html>