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
    IStoryService storyService = new StoryService();
    ICommentServices commentServices =  new CommentServices();
    ICommentDAO commentDAO = new CommentDAO();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String text = request.getParameter("comment");

        if (text == null || text.trim().isEmpty()) {
            request.setAttribute("message", "Vui lòng điền vào bình luận của bạn!");
            request.getRequestDispatcher("/StoryController").forward(request, response);
            return;
        }
        Comment comment = new Comment();
        comment.setStoryId(1);
        comment.setCommentContent(text);

        int status = commentDAO.save(comment);
        if (status > 0) {
            request.setAttribute("message", "Bình luận của bạn đã được gửi thành công!");
        }
        else{
            request.setAttribute("message", "Mỗi tài khoản chỉ bình luận được 1 lần");
        }
        request.getRequestDispatcher("/StoryController").forward(request, response);

    }
}