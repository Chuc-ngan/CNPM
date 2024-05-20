
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

<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__links">
                    <a href="./index.jsp"><i class="fa fa-home"></i> Trang chủ</a>
                    <a href="./categories.jsp">Thể loại</a>
                    <span>{Thể loại nào đó}</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Anime Section Begin -->
<section class="anime-details spad">
    <div class="container">
        <div class="anime__details__content">
            <div class="row">
                <div class="col-lg-3">
                    <div class="anime__details__pic set-bg" data-setbg="img/anime/details-pic.jpg">
                        <div class="comment"><i class="fa fa-comments"></i> 11</div>
                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="anime__details__text">
                        <div class="anime__details__title">
                            <h3>Fate Stay Night: Unlimited Blade</h3>
                            <span>フェイト／ステイナイト, Feito／sutei naito</span>
                        </div>
                        <div class="anime__details__rating">
                            <div class="rating">
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star"></i></a>
                                <a href="#"><i class="fa fa-star-half-o"></i></a>
                            </div>
                            <span>1.029 Votes</span>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        <div class="anime__details__widget">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <ul>
                                        <li><span>Type:</span> TV Series</li>
                                        <li><span>Studios:</span> Lerche</li>
                                        <li><span>Date aired:</span> Oct 02, 2019 to ?</li>
                                        <li><span>Status:</span> Airing</li>
                                        <li><span>Genre:</span> Action, Adventure, Fantasy, Magic</li>
                                    </ul>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <ul>
                                        <li><span>Scores:</span> 7.31 / 1,515</li>
                                        <li><span>Rating:</span> 8.5 / 161 times</li>
                                        <li><span>Duration:</span> 24 min/ep</li>
                                        <li><span>Quality:</span> HD</li>
                                        <li><span>Views:</span> 131,541</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="anime__details__btn">
                            <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> Theo dõi</a>
                            <a href="comic-reading.jsp" class="follow-btn">Xem từ đầu</a>
                            <a href="comic-reading.jsp" class="follow-btn">Xem tập mới nhất</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8 col-md-8">
                <div class="anime__details__chapter">
                    <div class="section-title">
                        <h5>Danh sách tập</h5>
                    </div>
                    <div class="list-group">
                        <a href="comic-reading.jsp" class="list-group-item list-group-item-action">Tập 8</a>
                        <a href="comic-reading.jsp" class="list-group-item list-group-item-action">Tập 7</a>
                        <a href="comic-reading.jsp" class="list-group-item list-group-item-action">Tập 6</a>
                        <a href="comic-reading.jsp" class="list-group-item list-group-item-action">Tập 5</a>
                        <a href="comic-reading.jsp" class="list-group-item list-group-item-action">Tập 4</a>
                        <a href="comic-reading.jsp" class="list-group-item list-group-item-action">Tập 3</a>
                        <a href="comic-reading.jsp" class="list-group-item list-group-item-action">Tập 2</a>
                        <a href="comic-reading.jsp" class="list-group-item list-group-item-action">Tập 1</a>
                    </div>
                </div>
                <jsp:include page="Components/comment.jsp" />
<%--                <div class="anime__details__review">--%>
<%--                    <div class="section-title">--%>
<%--                        <h5>Bình luận</h5>--%>
<%--                    </div>--%>

<%--                    <div class="anime__review__item">--%>
<%--                        <div class="anime__review__item__pic">--%>
<%--                            <img src="img/anime/review-1.jpg" alt="">--%>
<%--                        </div>--%>
<%--                        <div class="anime__review__item__text">--%>
<%--                            <h6>Chris Curry - <span>1 Hour ago</span></h6>--%>
<%--                            <p>whachikan Just noticed that someone categorized this as belonging to the genre--%>
<%--                                "demons" LOL</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="anime__review__item">--%>
<%--                        <div class="anime__review__item__pic">--%>
<%--                            <img src="img/anime/review-2.jpg" alt="">--%>
<%--                        </div>--%>
<%--                        <div class="anime__review__item__text">--%>
<%--                            <h6>Lewis Mann - <span>5 Hour ago</span></h6>--%>
<%--                            <p>Finally it came out ages ago</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="anime__review__item">--%>
<%--                        <div class="anime__review__item__pic">--%>
<%--                            <img src="img/anime/review-3.jpg" alt="">--%>
<%--                        </div>--%>
<%--                        <div class="anime__review__item__text">--%>
<%--                            <h6>Louis Tyler - <span>20 Hour ago</span></h6>--%>
<%--                            <p>Where is the episode 15 ? Slow update! Tch</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="anime__review__item">--%>
<%--                        <div class="anime__review__item__pic">--%>
<%--                            <img src="img/anime/review-4.jpg" alt="">--%>
<%--                        </div>--%>
<%--                        <div class="anime__review__item__text">--%>
<%--                            <h6>Chris Curry - <span>1 Hour ago</span></h6>--%>
<%--                            <p>whachikan Just noticed that someone categorized this as belonging to the genre--%>
<%--                                "demons" LOL</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="anime__review__item">--%>
<%--                        <div class="anime__review__item__pic">--%>
<%--                            <img src="img/anime/review-5.jpg" alt="">--%>
<%--                        </div>--%>
<%--                        <div class="anime__review__item__text">--%>
<%--                            <h6>Lewis Mann - <span>5 Hour ago</span></h6>--%>
<%--                            <p>Finally it came out ages ago</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="anime__review__item">--%>
<%--                        <div class="anime__review__item__pic">--%>
<%--                            <img src="img/anime/review-6.jpg" alt="">--%>
<%--                        </div>--%>
<%--                        <div class="anime__review__item__text">--%>
<%--                            <h6>Louis Tyler - <span>20 Hour ago</span></h6>--%>
<%--                            <p>Where is the episode 15 ? Slow update! Tch</p>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="anime__details__form">--%>
<%--                    <div class="section-title">--%>
<%--                        <h5>Bình luận của bạn</h5>--%>
<%--                    </div>--%>
<%--                    <form action="#" method="post">--%>
<%--                        <textarea name="comment" placeholder="Your Comment"></textarea>--%>
<%--                        <button type="submit"><i class="fa fa-location-arrow"></i> Gửi</button>--%>
<%--                    </form>--%>
<%--                </div>--%>
                <c:forEach var="comment" items="${comments}">
                    <div class="comment">
                        <p>${comment.commentContent}</p>
                        <!-- Hiển thị thông tin khác của bình luận nếu cần -->
                    </div>
                </c:forEach>
            </div>
            <div class="col-lg-4 col-md-4">
                <div class="anime__details__sidebar">
                    <div class="section-title">
                        <h5>Có thể bạn sẽ thích...</h5>
                    </div>
                    <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-1.jpg">
                        <div class="ep">18 / ?</div>
                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        <h5><a href="#">Boruto: Naruto next generations</a></h5>
                    </div>
                    <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-2.jpg">
                        <div class="ep">18 / ?</div>
                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                    </div>
                    <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-3.jpg">
                        <div class="ep">18 / ?</div>
                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        <h5><a href="#">Sword art online alicization war of underworld</a></h5>
                    </div>
                    <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-4.jpg">
                        <div class="ep">18 / ?</div>
                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        <h5><a href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                    </div>
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
<script>
    $(document).ready(function () {
        function ajaxReview() {
            let contents = $(".textarea textarea").val();

        }
    });
</script>
</body>

</html>
