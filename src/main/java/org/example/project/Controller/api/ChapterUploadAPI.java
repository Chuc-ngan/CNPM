package org.example.project.Controller.api;

import org.example.project.Model.Chapter;
import org.example.project.Services.ChapterService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/api/chapter-upload")
@MultipartConfig
public class ChapterUploadAPI extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String chapterNumber = req.getParameter("chapterNumber");
        String name = req.getParameter("storyName");
        System.out.println(chapterNumber);
        System.out.println(name);
        System.out.println(req.getParts().size());
        if(chapterNumber.isEmpty() || name.isEmpty() || req.getParts().size() <= 4){
            resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
            resp.getWriter().write("{\"detail\": \"Nhập thiếu thông tin\"}");
            return;
        }
        int storyId = Integer.parseInt(req.getParameter("storyId"));
        Chapter chapter = new Chapter();
        chapter.setName(name);
        chapter.setChapterNumber(chapterNumber);
        chapter.setStoryID(storyId);
        new ChapterService().insert(chapter, req.getParts(), req.getServletContext().getRealPath(""));
        resp.getWriter().write("{\"detail\": \"Thêm tập truyện thành công\"}");
    }
}
