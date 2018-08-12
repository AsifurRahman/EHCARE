package com.mbstu.ehcare.dao;
import com.mbstu.ehcare.model.Patient;
import com.mbstu.ehcare.model.PatientDetails;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PatientDetailsRepository extends JpaRepository<PatientDetails,String> {

    @Query("select p from PatientDetails p where p.pdid = ?")
    List<PatientDetails> getPatientDetailsById(String patientId);

}
