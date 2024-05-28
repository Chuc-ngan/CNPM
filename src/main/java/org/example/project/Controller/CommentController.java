package org.example.project.Controller;

import com.google.gson.Gson;
import org.example.project.DAO.CommentDAO;
import org.example.project.DAO.ICommentDAO;
import org.example.project.Model.Comment;
import org.example.project.RowMaper.CommentColumn;
import org.example.project.Services.CommentServices;
import org.example.project.Services.ICommentServices;
import org.example.project.Services.IStoryService;
import org.example.project.Services.StoryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CommentController", value = "/CommentController")
public class CommentController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    ICommentDAO commentDAO = new CommentDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        String text = request.getParameter("comment");
//        4.	Xác nhận nội dung bình luận và kiểm tra tính hợp lệ của nó.
        if (text == null || text.trim().isEmpty()) {
            request.setAttribute("message", "Vui lòng điền vào bình luận của bạn!");
            request.getRequestDispatcher("/StoryController").forward(request, response);
            return;
        }
        //5.	Tiến hành tạo bình luận.
        Comment comment = new Comment();
        //6.	Thiết lập ID của truyện mà người dùng muốn bình luận.
        comment.setStoryId(1);
        //7.	Thiết lập nội dung của bình luận.
        comment.setCommentContent(text);
        comment.setUserId(110);
//        8.	Tiến hành lưu bình luận vào cơ sở dữ liệu thông qua đối tượng DAO.
        int status = commentDAO.save(comment);
//        10.	Nếu hợp lệ, lưu trữ bình luận vào database.
        if (status > 0) {
//            11.1 thông báo bình luận thành công.
            request.setAttribute("message", "Bình luận của bạn đã được gửi thành công!");
        }
        else{
//            11.2 thông báo bình luận thất bại.
            request.setAttribute("message", "Mỗi tài khoản chỉ bình luận được 1 lần");
        }
        request.getRequestDispatcher("/StoryController").forward(request, response);

    }
}