package com.ecodingdojo.code;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/")
public class MainController {
    @RequestMapping("")
    public String index(HttpSession session){
        if(session.getAttribute("result")== null){
            session.setAttribute("result","correct");
        }
        return "index.jsp";
    }
    @RequestMapping(path = "process",method = RequestMethod.POST)
    public String process(@RequestParam(value = "code") String code, HttpSession session){
        String correctpass = "bushido";
        if(code.equals(correctpass)) {
            session.setAttribute("result", null);
            return "result.jsp";
        }else{
            session.setAttribute("result", "incorrect");
            return "redirect:/";
        }
    }
//    @RequestMapping("")


}
