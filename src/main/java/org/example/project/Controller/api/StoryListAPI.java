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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/api/story-list")
public class StoryListAPI extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int draw = Integer.parseInt(req.getParameter("draw"));
        int start = Integer.parseInt(req.getParameter("start"));
        int length = Integer.parseInt(req.getParameter("length"));
        StoryService service = new StoryService();
        List<Story> stories = service.findAll();
        JsonObject json = new JsonObject();
        json.addProperty("draw", draw);
        json.addProperty("recordsTotal", service.totalRecord());
        json.addProperty("recordsFiltered", service.totalRecord());
        JsonArray data = new JsonArray();
        for(Story story : stories){
            data.add(story.toJsonObject());
        }
        json.add("data", data);
        resp.getWriter().println(json.toString());
        resp.getWriter().flush();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
