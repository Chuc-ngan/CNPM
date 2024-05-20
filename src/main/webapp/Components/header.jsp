<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 5/17/2024
  Time: 12:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-lg-2">
            <div class="header__logo">
                <a href="./index.jsp">
                    <img src="img/logo.png" alt="">
                </a>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="header__nav">
                <nav class="header__menu mobile-menu">
                    <ul>
                        <li><a href="./index.jsp">Trang chủ</a></li>
                        <li><a href="./categories.jsp">Thể loại <span class="arrow_carrot-down"></span></a>
                            <ul class="dropdown">
                                <li><a href="./comic-list.jsp">Categories</a></li>
                                <li><a href="./comic-details.jsp">Anime Details</a></li>
                                <li><a href="./comic-reading.jsp">Anime Watching</a></li>
                                <li><a href="./blog-details.jsp">Blog Details</a></li>
                                <li><a href="./signup.jsp">Sign Up</a></li>
                                <li><a href="./login.jsp">Login</a></li>
                            </ul>
                        </li>
                        <li><a href="./blog.jsp">Tin tức</a></li>
                        <li><a href="https://facebook.com">Facebook</a></li>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="header__right">
                <a href="#" class="search-switch"><span class="icon_search"></span></a>
                <a href="./login.jsp"><span class="icon_profile"></span></a>
            </div>
        </div>
    </div>
    <div id="mobile-menu-wrap"></div>
</div>
</body>
</html>
