package org.example.project.Controller;

import org.example.project.DAO.CommentDAO;
import org.example.project.DAO.ICommentDAO;
import org.example.project.DAO.StoryDAO;
import org.example.project.Model.Story;
import org.example.project.Services.IStoryService;
import org.example.project.Services.StoryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "StoryController", urlPatterns = {"/StoryController", "/home"})
public class StoryController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    IStoryService storyService = new StoryService();
    ICommentDAO commentDAO = new CommentDAO();
    StoryDAO storyDAO = new StoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();
        if ("/home".equals(path)) {
            getAllStory(request, response);
        } else {
            showStoryDetails(request, response);
        }
    }

    private void showStoryDetails(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int storyId = 1; // This should ideally come from the request
//        request.setAttribute("story", storyService.findStoryById(storyId));
//        request.setAttribute("comments", commentDAO.findCommentsByStoryId(storyId));
        request.getRequestDispatcher("/comic-details.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void getAllStory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchQuery = request.getParameter("searchQuery");
        List<Story> result;
        if (searchQuery != null && !searchQuery.trim().isEmpty()) {
            result = storyDAO.findByTitleOrAuthor(searchQuery);
        } else {
            result = storyDAO.findAll();
        }
        request.setAttribute("stories", result);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/comic-list.jsp");
        dispatcher.forward(request, response);
    }
}