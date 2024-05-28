<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="org.example.project.Model.Chapter" %>
<%@ page import="java.util.List" %>
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
<%
    Chapter chapter = (Chapter) request.getAttribute("chapter");
    int id = chapter.getId();
    List<String> imageURLs = chapter.getImageURLs();
%>
<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<jsp:include page="Components/header.jsp" />
<!-- Header End -->

<div class="fixed-bottom">
    <img src="img/testnav.png" alt="">
</div>

<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__links">
                    <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                    <a href="./categories.html">Categories</a>
                    <a href="#">Romance</a>
                    <span>Fate Stay Night: Unlimited Blade</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Anime Section Begin -->
<section class="anime-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="anime__video__player">
                    <div class="section-title">
                        <h5>Sousou No Frieren tập 34</h5>
                    </div>
                    <% for(String url : imageURLs){ %>
                    <div style="width: 60%; padding: 10px; margin: auto;">
                        <img src="img/chapter/<%=id%>/<%=url%>" style="width: 100%;">
                    </div>
                    <%}%>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="anime__details__review">
                    <div class="section-title">
                        <h5>Bình luận</h5>
                    </div>
                    <div class="anime__review__item">
                        <div class="anime__review__item__pic">
                            <img src="img/anime/review-1.jpg" alt="">
                        </div>
                        <div class="anime__review__item__text">
                            <h6>Chris Curry - <span>1 Hour ago</span></h6>
                            <p>whachikan Just noticed that someone categorized this as belonging to the genre
                                "demons" LOL</p>
                        </div>
                    </div>
                    <div class="anime__review__item">
                        <div class="anime__review__item__pic">
                            <img src="img/anime/review-2.jpg" alt="">
                        </div>
                        <div class="anime__review__item__text">
                            <h6>Lewis Mann - <span>5 Hour ago</span></h6>
                            <p>Finally it came out ages ago</p>
                        </div>
                    </div>
                    <div class="anime__review__item">
                        <div class="anime__review__item__pic">
                            <img src="img/anime/review-3.jpg" alt="">
                        </div>
                        <div class="anime__review__item__text">
                            <h6>Louis Tyler - <span>20 Hour ago</span></h6>
                            <p>Where is the episode 15 ? Slow update! Tch</p>
                        </div>
                    </div>
                    <div class="anime__review__item">
                        <div class="anime__review__item__pic">
                            <img src="img/anime/review-4.jpg" alt="">
                        </div>
                        <div class="anime__review__item__text">
                            <h6>Chris Curry - <span>1 Hour ago</span></h6>
                            <p>whachikan Just noticed that someone categorized this as belonging to the genre
                                "demons" LOL</p>
                        </div>
                    </div>
                    <div class="anime__review__item">
                        <div class="anime__review__item__pic">
                            <img src="img/anime/review-5.jpg" alt="">
                        </div>
                        <div class="anime__review__item__text">
                            <h6>Lewis Mann - <span>5 Hour ago</span></h6>
                            <p>Finally it came out ages ago</p>
                        </div>
                    </div>
                    <div class="anime__review__item">
                        <div class="anime__review__item__pic">
                            <img src="img/anime/review-6.jpg" alt="">
                        </div>
                        <div class="anime__review__item__text">
                            <h6>Louis Tyler - <span>20 Hour ago</span></h6>
                            <p>Where is the episode 15 ? Slow update! Tch</p>
                        </div>
                    </div>
                </div>
                <div class="anime__details__form">
                    <div class="section-title">
                        <h5>Bình luận của bạn</h5>
                    </div>
                    <form action="#">
                        <textarea placeholder="Your Comment"></textarea>
                        <button type="submit"><i class="fa fa-location-arrow"></i> Gửi</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Anime Section End -->

<!-- Footer Section Begin -->
<footer class="footer">
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
