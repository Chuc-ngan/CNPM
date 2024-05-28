<%--
  Created by IntelliJ IDEA.
  User: PC
  Date: 5/17/2024
  Time: 10:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<div class="anime__details__review">
    <div class="section-title">
        <h5>Bình luận</h5>
    </div>
<%--    12.Hệ thống hiển thị danh sách sách bình luận--%>

    <c:forEach var="item" items="${comments}" varStatus="status">
    <div class="anime__review__item">
        <div class="anime__review__item__pic">
            <img src="img/anime/review-1.jpg" alt="">
        </div>
        <div class="anime__review__item__text">
            <h6>${item.userId} - <span>${item.commentDate}</span></h6>
            <p>${item.commentContent}</p>
        </div>
    </div>
    </c:forEach>
</div>
        <div class="anime__details__form">
        <div class="section-title">
        <h5>Bình luận của bạn</h5>
        </div>



            <form action="CommentController" method="post">
                <%--            1.	Sau khi đọc xong, người dùng điền nội dung bình luận của mình vào mẫu bình luận.--%>
        <textarea name="comment" placeholder="Your Comment"></textarea>
                <%--            2.	Người dùng ấn nút “Gửi” để đăng bình luận.--%>
        <button type="submit"><i class="fa fa-location-arrow"></i> Gửi</button>
                    <%--            3.	Hệ thống nhận dữ liệu bình luận được gửi đến controller thông qua phương thức POST của biểu mẫu.--%>

            </form>
        </div>


<div class="anime__details__form" id="edit-comment-form" style="display: none;">
    <div class="section-title">
        <h5>Chỉnh sửa bình luận</h5>
    </div>
    <form action="EditCommentController" method="post">
        <input type="hidden" name="commentId" id="edit-comment-id">
        <textarea name="comment" id="edit-comment-content" placeholder="Your Comment"></textarea>
        <button type="submit"><i class="fa fa-location-arrow"></i> Cập nhật</button>
    </form>
</div>

<div id="popup" class="popup">
    <div class="popup-content">
        <span id="popup-message"></span>
        <button onclick="closePopup()">Close</button>
    </div>
</div>
</body>
<script>
    function showPopup(message) {
        document.getElementById('popup-message').innerText = message;
        document.getElementById('popup').style.display = 'block';
    }

    function closePopup() {
        document.getElementById('popup').style.display = 'none';
    }

    function editComment(commentId, commentContent) {
        document.getElementById('edit-comment-id').value = commentId;
        document.getElementById('edit-comment-content').value = commentContent;
        document.getElementById('edit-comment-form').style.display = 'block';
        window.scrollTo(0, document.getElementById('edit-comment-form').offsetTop);
    }

    // 12 hiển thị thông báo trong phần bình luận của tập truyện.
    <% if (request.getAttribute("message") != null) { %>
    showPopup("<%= request.getAttribute("message") %>");
    <% } %>
</script>

<style>
    .popup {
        display: none;
        position: fixed;
        z-index: 1;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgba(0,0,0,0.6); /* Darker background for better contrast */
        backdrop-filter: blur(5px); /* Optional: Adds a blur effect to the background */
    }
    .popup-content {
        background-color: white;
        margin: 15% auto;
        padding: 20px;
        border-radius: 10px; /* Rounded corners */
        width: 80%;
        max-width: 400px; /* Increased width for better content accommodation */
        text-align: center;
        box-shadow: 0 2px 10px rgba(0,0,0,0.2); /* Slight shadow for depth */
        animation: fadeIn 0.3s ease-in-out; /* Fade-in effect */
    }
    .popup-content button {
        background-color: #ff5e5e;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s; /* Smooth transition for hover effect */
    }
    .popup-content button:hover {
        background-color: #ff3d3d; /* Darker red on hover */
    }
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
</style>
</html>
