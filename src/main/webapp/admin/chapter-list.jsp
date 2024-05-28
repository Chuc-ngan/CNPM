<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.6/css/dataTables.dataTables.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <title>Trang sản phẩm</title>
</head>
<%
    String storyId = (String) request.getAttribute("storyId");
%>
<body>
<table id="table" class="table table-striped" style="width:100%">
    <thead>
    <tr>
        <th>ID</th>
        <th>Số của tập</th>
        <th>Tên tập</th>
        <th>Ngày tạo</th>
    </tr>
    </thead>
</table>
<a href="/admin/upload-truyen?storyId=<%=storyId%>" class="btn btn-primary">
    + Thêm tập truyện
</a>

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script src="https://cdn.datatables.net/2.0.6/js/dataTables.js"></script>
<script>
    new DataTable('#table', {
        ajax: function(data, callback, settings) {
            // Modify the request parameters here
            data['storyId'] = <%=storyId%>;
            $.ajax({
                url: '/api/chapter-list',
                data: data,
                success: function(response) {
                    // Pass the response data to DataTables
                    callback(response);
                }
            });
        },
        columns: [
            { data: 'id' },
            { data: 'chapterNumber' },
            { data: 'name' },
            { data: 'createdDate' }
        ],
        processing: true,
        serverSide: true
    });

</script>
</body>