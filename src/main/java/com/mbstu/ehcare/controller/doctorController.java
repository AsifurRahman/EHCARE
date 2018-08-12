package com.mbstu.ehcare.controller;
import com.mbstu.ehcare.dao.UserRepository;
import com.mbstu.ehcare.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class doctorController {

    @Autowired
    private UserRepository userRepository;

    @RequestMapping(value = "/upsertDoctor",method = RequestMethod.GET)
    public String doctorinsert(Model model,@RequestParam(value ="userId", required=false) Integer userId){

        if(userId!=null){
            User user=userRepository.getUserById(userId);
            model.addAttribute("user",user);
        }
        else{
            User user=new User();
            model.addAttribute("user",user);
        }
        return "doctor";
    }

    @RequestMapping(value = "/upsertDoctor",method = RequestMethod.POST)
    public String doctorsave(@ModelAttribute("user") User user){
        user.setRole("ROLE_ADMIN");
        user.setType("Doctor");
        userRepository.save(user);
        return "redirect:./doctorList";
    }


    @RequestMapping(value = "/doctorList", method = RequestMethod.GET)
    public String doctorListView(Model model) {
        System.out.println("-----------doctorListView-------------");
        List<User> doctorList=userRepository.getUserBytype("Doctor");
        model.addAttribute("doctorList",doctorList);
        return "doctorList";
    }
}