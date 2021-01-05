package com.codingdojo.hellohuman;

 import org.springframework.stereotype.Controller;
 import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RestController;


@Controller
public class Hello {
    @RequestMapping("/")
    public String index(@RequestParam(value="name", required=false) String searchQuery, Model model) {
        if(searchQuery != null){
            model.addAttribute("name", searchQuery);
            return "index.jsp";
        }
        else
            model.addAttribute("name", "Human");
        return "index.jsp";
    }
}
