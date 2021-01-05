package com.codingdojo.displaydate;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

import java.text.AttributedString;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class time {
    @RequestMapping("/time")
    public String time_methode(Model model){
        String timePattern = "hh:mm a";
        SimpleDateFormat timeFormat = new SimpleDateFormat(timePattern);
        String date = timeFormat.format(new Date());
        model.addAttribute("date", date);
        return "time.jsp";
    }
}
