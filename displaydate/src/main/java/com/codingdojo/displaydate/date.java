package com.codingdojo.displaydate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import java.text.AttributedString;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class date {
    @RequestMapping("/date")
    public String date_methode(Model model){
        String datePattern = "EEEEE, dd MMMMM, yyyy";
        SimpleDateFormat dateFormat = new SimpleDateFormat(datePattern);
        String date = dateFormat.format(new Date());
        model.addAttribute("date", date);
        return "data.jsp";
    }
}
