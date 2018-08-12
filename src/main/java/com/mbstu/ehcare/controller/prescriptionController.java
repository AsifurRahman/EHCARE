package com.mbstu.ehcare.controller;
import com.mbstu.ehcare.Utils;
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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;


@Controller
public class prescriptionController {

    @Autowired
    PatientRepository patientRepository;

    @Autowired
    UserRepository userRepository;

    @RequestMapping(value = "/addprescribe", method = RequestMethod.GET)
    public String PrescribePage(Model model) {
     System.out.println("-----------------Prescription Editor Page Get Method------------------");
     PatientDetails patientDetails=new PatientDetails();
     model.addAttribute("patientDetails",patientDetails);

     return "addprescribe";
    }

    @RequestMapping(value = "/addprescribe",method = RequestMethod.POST)
    public String prescribePage(@ModelAttribute(value = "patientDetails") PatientDetails new_patient_details ){

        System.out.println("---------New Prescription Post Method------------");

        DateFormat dateFormat=new SimpleDateFormat("dd-MM-yyyy");
        new_patient_details.setDate(dateFormat.format(new Date()));

        String patientId=new_patient_details.getPtid();

        System.out.println(patientId);

//      Retrieving the Doctor Name by User name
        String username=Utils.getLoggedUserName();
        User user=userRepository.getUserByUserName(username);
        String name=user.getName();
        System.out.println(name);
        new_patient_details.setRefby(name);

        Patient patient=patientRepository.getPatientById(patientId);

        List<PatientDetails> previous_List=patient.getPatientDetails();

        previous_List.add(new_patient_details);

        patientRepository.save(patient);

        return "redirect:./patientList";
    }

}

