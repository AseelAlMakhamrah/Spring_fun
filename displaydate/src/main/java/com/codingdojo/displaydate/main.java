package com.codingdojo.displaydate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class main {
    @RequestMapping("/")
    public String main_methode(){
        return "index.jsp";
    }
}
