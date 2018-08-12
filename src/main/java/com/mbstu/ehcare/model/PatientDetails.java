package com.mbstu.ehcare.model;
import javax.persistence.*;

@Entity
@Table(name="PatientDetailsTable")
public class PatientDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long pdid;

    @Column(name = "Date")
    private String date;

    private String ptid;

    @Column(name = "Symptom", length = 2000)
    private String symptom;

    @Column(name = "Prescription", length = 2000)
    private String prescription;

    @Column(name = "ReferencedBy")
    private String refby;

    public PatientDetails() {
    }

    public PatientDetails(String date, String symptom, String prescription) {
        this.date = date;
        this.symptom = symptom;
        this.prescription = prescription;
    }

    public PatientDetails(String date, String ptid, String symptom, String prescription, String refby) {
        this.date = date;
        this.ptid = ptid;
        this.symptom = symptom;
        this.prescription = prescription;
        this.refby = refby;
    }

    public long getPdid() {
        return pdid;
    }

    public void setPdid(long pdid) {
        this.pdid = pdid;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSymptom() {
        return symptom;
    }

    public void setSymptom(String symptom) {
        this.symptom = symptom;
    }

    public String getPrescription() {
        return prescription;
    }

    public void setPrescription(String prescription) {
        this.prescription = prescription;
    }

    public String getPtid() {
        return ptid;
    }

    public void setPtid(String ptid) {
        this.ptid = ptid;
    }

    public String getRefby() {
        return refby;
    }

    public void setRefby(String refby) {
        this.refby = refby;
    }


    @Override
    public String toString() {
        return "PatientDetails{" +
                "pdid=" + pdid +
                ", date='" + date + '\'' +
                ", symptom='" + symptom + '\'' +
                ", prescription='" + prescription + '\'' +
                '}';
    }
}
