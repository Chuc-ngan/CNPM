package org.example.project.Controller.api;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import org.example.project.Model.Chapter;
import org.example.project.Model.Story;
import org.example.project.Services.ChapterService;
import org.example.project.Services.StoryService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/api/chapter-list")
public class ChapterListAPI extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int storyId = Integer.parseInt(req.getParameter("storyId"));
        int draw = Integer.parseInt(req.getParameter("draw"));
        int start = Integer.parseInt(req.getParameter("start"));
        int length = Integer.parseInt(req.getParameter("length"));
        ChapterService service = new ChapterService();
        List<Chapter> chapters = service.findAll(storyId);
        JsonObject json = new JsonObject();
        json.addProperty("draw", draw);
        json.addProperty("recordsTotal", chapters.size());
        json.addProperty("recordsFiltered", chapters.size());
        JsonArray data = new JsonArray();
        for(Chapter chapter : chapters){
            data.add(chapter.toJsonObject());
        }
        json.add("data", data);
        resp.getWriter().println(json.toString());
        resp.getWriter().flush();
    }
}
