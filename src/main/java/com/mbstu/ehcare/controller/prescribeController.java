package com.mbstu.ehcare.controller;
import com.mbstu.ehcare.Utils;
import com.mbstu.ehcare.dao.PatientDetailsRepository;
import com.mbstu.ehcare.dao.PatientRepository;
import com.mbstu.ehcare.dao.UserRepository;
import com.mbstu.ehcare.model.Patient;
import com.mbstu.ehcare.model.PatientDetails;
import com.mbstu.ehcare.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class prescribeController {

    @Autowired
    UserRepository userRepository;
    @Autowired
    PatientRepository patientRepository;

    @RequestMapping(value = "/prescribe", method = RequestMethod.GET)
    public String PrescribePage(Model model, @RequestParam(value = "patientId") String patientId ) {

     System.out.println("-----------------Prescribe Editor Page------------------");

     PatientDetails patientDetails=new PatientDetails();

     model.addAttribute("patientId", patientId);
     model.addAttribute("patientDetails",patientDetails);

     return "prescribe";
    }

    @RequestMapping(value = "/prescribe",method = RequestMethod.POST)
    public String PrescribeSave(Model model,@ModelAttribute("patientDetails") PatientDetails patientDetails,
                                @RequestParam("patientId") String pid)
    {
        // Retrieving the Doctor Name by User name
        String username= Utils.getLoggedUserName();
        User user=userRepository.getUserByUserName(username);
        String name=user.getName();
        System.out.println(name);
        patientDetails.setRefby(name);

        DateFormat dateFormat = new SimpleDateFormat("dd-MM-yyyy");
        patientDetails.setDate(dateFormat.format(new Date()));

        Patient patient = patientRepository.findOne(pid);
        List<PatientDetails> tempPatientDetailsList = patient.getPatientDetails();

        tempPatientDetailsList.add(patientDetails);
        patientRepository.save(patient);

        return "redirect:./patientList";

    }

}

