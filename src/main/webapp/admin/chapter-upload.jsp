<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Truyện</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .preview-images {
            display: flex;
            flex-wrap: wrap;
            margin-top: 20px;
        }
        .preview-images img {
            max-width: 150px;
            margin: 10px;
            border: 1px solid #ddd;
            padding: 5px;
            border-radius: 5px;
        }
    </style>
</head>
<%
    String storyId = (String) request.getAttribute("storyId");
%>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Upload Truyện</h2>
    <form id="uploadForm" enctype="multipart/form-data">
        <input type="text" name="storyId" value="<%=storyId%>" hidden>
        <div class="form-group">
            <label for="chapterNumber">Số tập</label>
            <input type="text" class="form-control" name="chapterNumber" id="chapterNumber" placeholder="Nhập số của tập">
        </div>
        <div class="form-group">
            <label for="storyName">Tên truyện</label>
            <input type="text" class="form-control" name="storyName" id="storyName" placeholder="Nhập tên truyện">
        </div>
        <div class="form-group">
            <label for="uploadImages">Upload ảnh truyện</label>
            <input type="file" class="form-control-file" name="uploadImages" id="uploadImages" multiple>
        </div>
        <div class="preview-images" id="previewImages"></div>
        <button type="submit" class="btn btn-primary">Upload</button>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
    document.getElementById('uploadImages').addEventListener('change', function(event) {
        let files = event.target.files;
        let previewContainer = document.getElementById('previewImages');
        previewContainer.innerHTML = ''; // Clear previous previews

        for (let i = 0; i < files.length; i++) {
            let file = files[i];
            let reader = new FileReader();

            reader.onload = function(e) {
                let img = document.createElement('img');
                img.src = e.target.result;
                previewContainer.appendChild(img);
            }

            reader.readAsDataURL(file);
        }
    });
    $(document).ready(function() {
        $('#uploadForm').submit(function(event) {
            event.preventDefault();
            var formData = new FormData(this);
            $.ajax({
                url: '/api/chapter-upload',
                type: 'POST',
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                    // Xử lý response từ API
                    alert('Thêm tập mới thành công');
                },
                error: function(xhr, status, error) {
                    alert('Thiếu thông tin, thêm tập mới thất bại');
                }
            });
        });
    });
</script>
</body>
</html>
