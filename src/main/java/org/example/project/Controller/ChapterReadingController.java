package org.example.project.Controller;

import org.example.project.Model.Chapter;
import org.example.project.Services.ChapterService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/reading")
public class ChapterReadingController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int chapterId = Integer.parseInt(req.getParameter("chapterId"));
        Chapter chapter = new ChapterService().getById(chapterId);
        req.setAttribute("chapter", chapter);
        req.getRequestDispatcher("comic-reading.jsp").forward(req, resp);
    }
}
