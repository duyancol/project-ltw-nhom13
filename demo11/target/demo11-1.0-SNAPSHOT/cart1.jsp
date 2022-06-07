<%@ page import="com.google.gson.Gson" %><%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 08/04/2022
  Time: 8:52 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%--<jsp:useBean id="cart" scope="request" type="com.example.demo11.model.Cart"/>--%>
<html>
<head>
    <title>Cart</title>
<%--    <link rel="stylesheet" href="cart/css/admin.css">--%>
<%--    <link rel="stylesheet" href="css/header.css">--%>
<%--    <link rel="stylesheet" href="css/footer.css">--%>
<%--    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>--%>
<%--    <link rel="stylesheet" href="css/spyreponsive.css">--%>
<%--    <link rel="stylesheet" href="fontawesome-free-5.15.4-web/css/all.min.css">--%>
<%--    <link rel="stylesheet" href="css/repointcart.css">--%>
<%--    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">--%>
<%--    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css" >--%>

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
            <table id="cart" class=" table table-hover"  style="margin-left: 20%" >
                <thead class="thead-dark">
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

<%--                        <td><button   style="border-radius: 5px;" class="remove-product" pid="${product.id}">Xóa</button></td>--%>
                        <td><button type="button" class="btn btn-danger remove-product" pid="${product.id}"><i class="fas fa-trash-alt"></i></button></td>

                    </tr>
                </c:forEach>

                </tbody>
                <tr class="cart__price thead-dark">
                    <th colspan="6">Tổng đơn hàng</th>
                    <th>
                        <%--                            <div class="total-cart">${cart.totalPrice} </div>--%>
                        <div class="total-cart"> </div>
                    </th>

                </tr>
            </table>
            <div class="cart-seen">
                <div class="continiu-bycart ">
                    <button class="btn" style="border-radius:5px;border: #CCCCCC solid 2px ">
                        <a  href="ProductServlet" style="text-decoration: none;margin-left: 10px;color: #abad0a;">Tiep tuc mua hang</a>
                    </button>
                </div>
                <div class="continiu-resent ">
                    <button class="btn" onclick="xoatatca()" style="border-radius: 5px;border: #1c1c1c solid 2px ">
                        <a class="thanhtoan"  href="cart.html" style="text-decoration: none;margin-left: 10px;color: #4CAF50">Thanh toán </a>
                    </button>
                </div>
        </div>
        <!-- <div class="row mb">
            <button class="dongy" onclick="dongydathang()">ĐỒNG Ý ĐẶT HÀNG</button>
        </div> -->
    </div>

    <div class="boxphai" >
        <div class="row mb " >

        </div>
        <div class="row mb thongtin" >
            <div class="boxtitle" >THÔNG TIN</div>
            <div class="boxcontent2 menudoc ">
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
        <div class="row mb danhmuc">
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
<%--            <div class="boxfooter searbox">--%>
<%--                <form action="#" method="post">--%>
<%--                    <input type="text" name="" id="">--%>
<%--                </form>--%>
<%--            </div>--%>
        </div>
        <div class="top10sp">
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
                    <a href="#">Mishi Kobe Niku niku</a>
                </div>

            </div>
        </div>
    </div>

</div>


</div>
<div style="margin-top: 1200px">
    <jsp:include page="fooder.jsp"></jsp:include>
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
            sum+=(cart.productList[x].price-(cart.productList[x].price*cart.productList[x].saleprice)/100)*cart.productList[x].quantitySol;


        }





        $(".total-cart").html(sum);

    }
    function updateQuantity(cart,id,quantity){
        cart.productList[id].quantitySol=quantity;
    }


</script>
</body>
</html>
