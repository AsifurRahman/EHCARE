package com.mbstu.ehcare.controller;
import com.mbstu.ehcare.dao.BrequestRepository;
import com.mbstu.ehcare.model.Brequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class brequestController {
    @Autowired
    BrequestRepository brequestRepository;

    @RequestMapping(value = "/brequest", method = RequestMethod.GET)
    public String brequestView() {
        System.out.println("---This  is Request page---");
        return "brequest";
    }
    @RequestMapping(value = "/brequest", method = RequestMethod.POST)
    public String brequestSaveView(Model model, @ModelAttribute()Brequest brequest) {
        System.out.println("---This  is Request page Backend---");
        brequestRepository.save(brequest);
        System.out.println("Successfully got the  object");
        return "redirect:./login";
    }

    @RequestMapping(value = "/brequestList", method = RequestMethod.GET)
    public String index(Model model) {
        System.out.println("---This  is Home page---");
        List<Brequest> brequestList = brequestRepository.findAll();
        model.addAttribute("brequestList", brequestList);
        return "brequestList";
    }

    @RequestMapping(value = "/deletebrequest",method=RequestMethod.GET)
    public String deleteRequest(@RequestParam(value = "brequestId",required = false)Integer brequestId){
        Brequest brequest=brequestRepository.getbrequestById(brequestId);
        brequestRepository.delete(brequest);
        System.out.println("Deleting Blood Request");
        return "redirect:./";
    }
}


