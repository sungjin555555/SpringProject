package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {
    @RequestMapping("/")
    public String home() {
        System.out.println("home~~");
        return "index";
        // /WEB-INF/views/index.jsp
    }

    @RequestMapping("classlist")
    public String classlist(Model model) {
        model.addAttribute("title", "2학년 2학기 교과목 리스트");

        List<String> list = new ArrayList<String>();
        list.add("실전프로젝트1");
        list.add("컴퓨터비전");
        model.addAttribute("classlist", list);

        return "board/list";
    }





}
