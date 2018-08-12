package com.mbstu.ehcare.controller;
import com.mbstu.ehcare.dao.PatientDetailsRepository;
import com.mbstu.ehcare.dao.PatientRepository;
import com.mbstu.ehcare.model.Patient;
import com.mbstu.ehcare.model.PatientDetails;
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
public class patientController {
    @Autowired
    private PatientRepository patientRepository;

    @Autowired
    private PatientDetailsRepository patientDetailsRepository;

    @RequestMapping(value = "/upsertPatient", method = RequestMethod.GET)
    public String patientInsert(Model model) {
        System.out.println("----------PatientInsert---------");
            Patient patient = new Patient();
            model.addAttribute("patient", patient);
        return "patient";
    }
    @RequestMapping(value = "/upsertPatient", method = RequestMethod.POST)
    public String patientInsertPost(@ModelAttribute("patient") Patient patient, HttpServletRequest request) {
        System.out.println("-----------patientPost-------------");
        System.out.println(patient);
        try{
            patientRepository.save(patient);
            request.setAttribute("message", "Edited successfully");
        }catch(Exception e){
            request.setAttribute("message", "Faild to save Edit");
        }
        return "redirect:./patientList";
    }

    @RequestMapping(value = "/updatePatient", method = RequestMethod.GET)
    public String patientEdit(Model model, @RequestParam(value ="patientId", required=false) String patientId) {
        System.out.println("----------PatientEdit---------");

            Patient patient = patientRepository.getPatientById(patientId);
            System.out.println(patient);
            model.addAttribute("patient", patient);

        return "patientedit";
    }
    @RequestMapping(value = "/updatePatient", method = RequestMethod.POST)
    public String patientUpdatePost( @ModelAttribute("patient") Patient patient,
                                     HttpServletRequest request) {
        System.out.println("-----------Patient Edit Post-------------");
        System.out.println(patient);
        try{
            patientRepository.save(patient);
            request.setAttribute("message", "Edited successfully");
        }catch(Exception e){
            request.setAttribute("message", "Faild to save Edit");
        }
        return "redirect:./patientList";
    }

    @RequestMapping(value = "/deletePatient", method = RequestMethod.GET)
    public String deletePatient(Model model, @RequestParam(value="patientId", required=false) String patientId) {
        System.out.println("-----------delete-------------patientId:"+patientId);
        Patient patient = patientRepository.getPatientById(patientId);
        patientRepository.delete(patient);
        return "redirect:./patientList";
    }

    @RequestMapping(value = "/patientList", method = RequestMethod.GET)
    public String patientListView(Model model) {
        System.out.println("-----------patientListView-------------");
        List<Patient> patientList = patientRepository.findAll();
        model.addAttribute("patientList", patientList);
        return "patientList";
    }

    @RequestMapping(value = "/patientinfo", method = RequestMethod.GET)
    public String patientInfo(Model model, @RequestParam(value = "patientId", required = true) String patientId ) {
        System.out.println("-----------patientInfoView-------------");

        Patient patientx=patientRepository.getPatientById(patientId);

        System.out.println(patientx);

        model.addAttribute("patientx", patientx);


        List<PatientDetails> patientDetails=patientx.getPatientDetails();

        model.addAttribute("patientDetails", patientDetails);

        for (PatientDetails patientDetailsp: patientx.getPatientDetails()){
            System.out.println(patientDetailsp);
        }

        return "patientinfo";
    }
}