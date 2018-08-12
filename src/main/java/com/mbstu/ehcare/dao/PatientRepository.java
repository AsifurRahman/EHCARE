package com.mbstu.ehcare.dao;
import com.mbstu.ehcare.model.Patient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PatientRepository extends JpaRepository<Patient,String> {

    @Query("select p from Patient p where p.pid = ?")
    Patient getPatientById(String patientId);

}
