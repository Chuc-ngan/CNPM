package org.example.project.Controller;

import org.example.project.DAO.CommentDAO;
import org.example.project.DAO.ICommentDAO;
import org.example.project.Services.IStoryService;
import org.example.project.Services.StoryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "StoryController", value = "/StoryController")
public class StoryController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IStoryService storyService = new StoryService();
    ICommentDAO commentDAO = new CommentDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int storyId = 1; // Thay đổi thành ID của câu chuyện mà bạn muốn hiển thị bình luận
        request.setAttribute("story", storyService.findStoryById(storyId));
        request.setAttribute("comments", commentDAO.findCommentsByStoryId(storyId));
        System.out.println(commentDAO.findCommentsByStoryId(storyId));
        request.getRequestDispatcher("/comic-details.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}