<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 6/4/2022
  Time: 6:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 07/04/2022
  Time: 3:05 CH
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title> Responsiive Admin Dashboard | CodingLab </title>
    <link rel="stylesheet" href="admin.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"></head>
<body>
<div class="sidebar">
    <div class="logo-details">
        <i class='bx bxl-c-plus-plus'></i>
        <span class="logo_name">CodingLab</span>
    </div>
    <ul class="nav-links">
        <li>
            <a href="Dashboard" class="active">
                <i class='bx bx-grid-alt' ></i>
                <span class="links_name">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="rest">
                <i class='bx bx-box' ></i>
                <span class="links_name">Product</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-list-ul' ></i>
                <span class="links_name">Order list</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-pie-chart-alt-2' ></i>
                <span class="links_name">Analytics</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-coin-stack' ></i>
                <span class="links_name">Stock</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-book-alt' ></i>
                <span class="links_name">Total order</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-user' ></i>
                <span class="links_name">Team</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-message' ></i>
                <span class="links_name">Messages</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-heart' ></i>
                <span class="links_name">Favrorites</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class='bx bx-cog' ></i>
                <span class="links_name">Setting</span>
            </a>
        </li>
        <li class="log_out">
            <a href="#">
                <i class='bx bx-log-out'></i>
                <span class="links_name">Log out</span>
            </a>
        </li>
    </ul>
</div>
<section class="home-section">
    <nav>
        <div class="sidebar-button">
            <i class='bx bx-menu sidebarBtn'></i>
            <span class="dashboard">Dashboard</span>
        </div>
        <div class="search-box">
            <input type="text" placeholder="Search...">
            <i class='bx bx-search' ></i>
        </div>
        <div class="profile-details">
            <img src="images/profile.jpg" alt="">
            <span class="admin_name">Prem Shahi</span>
            <i class='bx bx-chevron-down' ></i>
        </div>
    </nav>

    <div class="home-content">
        <div class="overview-boxes">
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Order</div>
                    <div class="number">40,876</div>
                    <div class="indicator">
                        <i class='bx bx-up-arrow-alt'></i>
                        <span class="text">Up from yesterday</span>
                    </div>
                </div>
                <i class='bx bx-cart-alt cart'></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Sales</div>
                    <div class="number">38,876</div>
                    <div class="indicator">
                        <i class='bx bx-up-arrow-alt'></i>
                        <span class="text">Up from yesterday</span>
                    </div>
                </div>
                <i class='bx bxs-cart-add cart two' ></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Profit</div>
                    <div class="number">$12,876</div>
                    <div class="indicator">
                        <i class='bx bx-up-arrow-alt'></i>
                        <span class="text">Up from yesterday</span>
                    </div>
                </div>
                <i class='bx bx-cart cart three' ></i>
            </div>
            <div class="box">
                <div class="right-side">
                    <div class="box-topic">Total Return</div>
                    <div class="number">11,086</div>
                    <div class="indicator">
                        <i class='bx bx-down-arrow-alt down'></i>
                        <span class="text">Down From Today</span>
                    </div>
                </div>
                <i class='bx bxs-cart-download cart four' ></i>
            </div>
        </div>

        <div class="sales-boxes">
            <div class="recent-sales box">
                <div class="title">Recent Sales</div>
                <div class="sales-details">
                    <ul class="details">
                        <li class="topic">Date</li>
                        <li><a href="#">02 Jan 2021</a></li>
                        <li><a href="#">02 Jan 2021</a></li>
                        <li><a href="#">02 Jan 2021</a></li>
                        <li><a href="#">02 Jan 2021</a></li>
                        <li><a href="#">02 Jan 2021</a></li>
                        <li><a href="#">02 Jan 2021</a></li>
                        <li><a href="#">02 Jan 2021</a></li>
                    </ul>
                    <ul class="details">
                        <li class="topic">Customer</li>
                        <li><a href="#">Alex Doe</a></li>
                        <li><a href="#">David Mart</a></li>
                        <li><a href="#">Roe Parter</a></li>
                        <li><a href="#">Diana Penty</a></li>
                        <li><a href="#">Martin Paw</a></li>
                        <li><a href="#">Doe Alex</a></li>
                        <li><a href="#">Aiana Lexa</a></li>
                        <li><a href="#">Rexel Mags</a></li>
                        <li><a href="#">Tiana Loths</a></li>
                    </ul>
                    <ul class="details">
                        <li class="topic">Sales</li>
                        <li><a href="#">Delivered</a></li>
                        <li><a href="#">Pending</a></li>
                        <li><a href="#">Returned</a></li>
                        <li><a href="#">Delivered</a></li>
                        <li><a href="#">Pending</a></li>
                        <li><a href="#">Returned</a></li>
                        <li><a href="#">Delivered</a></li>
                        <li><a href="#">Pending</a></li>
                        <li><a href="#">Delivered</a></li>
                    </ul>
                    <ul class="details">
                        <li class="topic">Total</li>
                        <li><a href="#">$204.98</a></li>
                        <li><a href="#">$24.55</a></li>
                        <li><a href="#">$25.88</a></li>
                        <li><a href="#">$170.66</a></li>
                        <li><a href="#">$56.56</a></li>
                        <li><a href="#">$44.95</a></li>
                        <li><a href="#">$67.33</a></li>
                        <li><a href="#">$23.53</a></li>
                        <li><a href="#">$46.52</a></li>
                    </ul>
                </div>
                <div class="button">
                    <a href="#">See All</a>
                </div>
            </div>
            <div class="top-sales box">
                <div class="title">Top Seling Product</div>
                <c:forEach items="${pdlist}" var="p">
                    <c:if test="${p.saleprice!=0}">
                    <ul class="top-sales-details">
                        <li>
                            <a href="#">
                                <img src="${p.img}" alt="">
                                <span class="product">${p.name}</span>
                            </a>
                            <span class="price">$ ${p.price}</span>
                        </li>

                    </ul>
                    </c:if>
                </c:forEach>


            </div>
        </div>
    </div>
</section>

<script>
    let sidebar = document.querySelector(".sidebar");
    let sidebarBtn = document.querySelector(".sidebarBtn");
    sidebarBtn.onclick = function() {
        sidebar.classList.toggle("active");
        if(sidebar.classList.contains("active")){
            sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
        }else
            sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
    }
</script>

</body>
</html>
