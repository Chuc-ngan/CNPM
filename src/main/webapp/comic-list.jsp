<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 5/17/2024
  Time: 12:48 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/plyr.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <title>Title</title>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<jsp:include page="Components/header.jsp" />
<!-- Header End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="list__product">
                    <div class="product__page__title">
                        <div class="row">
                            <div class="col-lg-8 col-md-8 col-sm-6">
                                <div class="section-title">
                                    <h4>{Tag bất kỳ}</h4>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4 col-sm-6">
                                <div class="product__page__filter">
                                    <p>Order by:</p>
                                    <select>
                                        <option value="">A-Z</option>
                                        <option value="">1-10</option>
                                        <option value="">10-50</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <c:choose>
                            <c:when test="${not empty stories}">
                                <c:forEach var="story" items="${stories}">
                                    <a href="comic-details.jsp">
                                        <div class="col-lg-3 col-md-6 col-sm-6">
                                            <div class="product__item">
                                                <div class="product__item__pic set-bg" data-setbg="img/cover/cover-1.jpg">
                                                    <div class="ep">18 / 18</div>
                                                    <div class="update">Cập nhật: Tập 18</div>
                                                    <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>
                                                    <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                                </div>
                                                <div class="product__item__text">
                                                    <h6><i class="fa fa-clock-o"></i> ${story.publishDate}</h6>
                                                    <h5 class="text-white"><i class="fa fa-address-book"></i> ${story.title}</h5>
                                                    <h5><a href="comic-details.jsp">${story.author}</a></h5>
                                                </div>
                                            </div>
                                        </div>
                                    </a>
                                </c:forEach>
                            </c:when>
                            <c:otherwise>
                                <p>Không có bản ghi nào.</p>
                            </c:otherwise>
                        </c:choose>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-1.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-2.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-3.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-4.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-5.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-6.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-7.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-8.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-9.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-10.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-11.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-12.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-13.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-14.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-15.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                        <%--                        <a href="comic-details.jsp">--%>
                        <%--                            <div class="col-lg-3 col-md-6 col-sm-6">--%>
                        <%--                                <div class="product__item">--%>
                        <%--                                    <div class="product__item__pic set-bg" data-setbg="img/cover/cover-16.jpg">--%>
                        <%--                                        <div class="ep">18 / 18</div>--%>
                        <%--                                        <div class="update">Cập nhật: Tập 18</div>--%>
                        <%--                                        <div class="like"><i class="fa fa-thumbs-up"></i> 102</div>--%>
                        <%--                                        <div class="view"><i class="fa fa-eye"></i> 9141</div>--%>
                        <%--                                    </div>--%>
                        <%--                                    <div class="product__item__text">--%>
                        <%--                                        <h6><i class="fa fa-clock-o"></i> 13/04/2024</h6>--%>
                        <%--                                        <h5><a href="comic-details.jsp">The Seven Deadly Sins: Wrath of the Gods</a></h5>--%>
                        <%--                                    </div>--%>
                        <%--                                </div>--%>
                        <%--                            </div>--%>
                        <%--                        </a>--%>
                    </div>
                </div>
                <div class="product__pagination">
                    <a href="#" class="current-page">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#"><i class="fa fa-angle-double-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->

<!-- Footer Section Begin -->
<footer class="footer">
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="footer__logo">
                    <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="footer__nav">
                    <ul>
                        <li class="active"><a href="./index.jsp">Trang chủ</a></li>
                        <li><a href="./categories.jsp">Categories</a></li>
                        <li><a href="./blog.jsp">Our Blog</a></li>
                        <li><a href="#">Contacts</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

            </div>
        </div>
    </div>
</footer>
<!-- Footer Section End -->

<!-- Search model Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/player.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>
