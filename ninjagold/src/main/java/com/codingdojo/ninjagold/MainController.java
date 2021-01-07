package com.codingdojo.ninjagold;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

@Controller
@RequestMapping("/")
public class MainController {
    @RequestMapping("")
    public String index(HttpSession session){
        if (session.getAttribute("gold")== null){
            session.setAttribute("gold",0);
        }else if((Integer)session.getAttribute("gold")<0){
            session.setAttribute("gold",0);
        }
        if(session.getAttribute("activities")==null){
            ArrayList<String> action = new ArrayList<String>();
            session.setAttribute("activities",action);
        }
        return "index.jsp";
    }
    @RequestMapping(path="process/{id}",method = RequestMethod.POST)
    public String process(HttpSession session, @PathVariable int id){
        Random random = new Random();
        Date date = new Date();
        if(id ==1){
            Integer farmgold = random.nextInt(10)+10;
            Integer currentfarm =(Integer) session.getAttribute("gold");
            String actionoffarm ="You entered a farm and earned  "+farmgold+" gold"+date;
            ArrayList<String> action =(ArrayList<String>) session.getAttribute("activites");
            action.add(actionoffarm);
//            if(session.isNew()){ session.setAttribute("activities",action);}
            session.setAttribute("activites",action);
            session.setAttribute("gold",farmgold+currentfarm);
        }else if (id == 2){
            Integer cavegold = random.nextInt(5)+5;
            Integer currentcave =(Integer) session.getAttribute("gold");
            String actionofcave ="You entered a cave and earned  "+cavegold+" gold"+date;
            ArrayList<String> action =(ArrayList<String>) session.getAttribute("activites");
            action.add(actionofcave);
            session.setAttribute("activites",action);
            session.setAttribute("gold",cavegold+currentcave);
        }else if (id ==3){
            Integer housegold = random.nextInt(10)+10;
            Integer currenthouse =(Integer) session.getAttribute("gold");
            String actionofhouse ="You entered a house and earned  "+housegold+" gold"+date;
            ArrayList<String> action =(ArrayList<String>) session.getAttribute("activites");
            action.add(actionofhouse);
//            if(session.isNew()){ session.setAttribute("activities",action);}
            session.setAttribute("activites",action);
            session.setAttribute("gold",housegold+currenthouse);
        }else if (id ==4){
            Integer choose = random.nextInt(2)+1;
            Integer currentcasino =(Integer) session.getAttribute("gold");
            Integer casinogold = random.nextInt(50)+0;
            if(choose ==1){
                session.setAttribute("gold",casinogold+currentcasino);
                String actionofcasino ="You entered a casino and earned  "+casinogold+" gold"+date;
                ArrayList<String> action =(ArrayList<String>) session.getAttribute("activites");
                action.add(actionofcasino);
                session.setAttribute("activites",action);
            }else if(choose ==2){
                session.setAttribute("gold",casinogold+currentcasino);
                String actionofcasino ="You entered a casino and lost  "+casinogold+" gold...oush"+date;
                ArrayList<String> action =(ArrayList<String>) session.getAttribute("activites");
                action.add(actionofcasino);
                session.setAttribute("activites",action);
            }
        }
        return "redirect:/";
    }
    @RequestMapping("/reset")
    public String reset(HttpSession session){
        session.setAttribute("gold",null);
        session.setAttribute("activites",null);
        return "redirect:/";
    }
}
