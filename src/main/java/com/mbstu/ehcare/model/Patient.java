package com.mbstu.ehcare.model;
import javax.persistence.*;
import java.util.List;
/*
 * Created by Asif
 *
 */
@Entity
@Table(name="PatientTable")
public class Patient {

    @Id
    private String pid;

    @Column(name = "Name")
    private String name;

    @Column(name = "Blood_Group")
    private String bgroup;

    @Column(name = "Department")
    private String dept;

    @Column(name = "Email")
    private String email;

    @Column(name = "Phone")
    private String phone;

    @Column(name = "district")
    private String district;

    @OneToMany(cascade = CascadeType.ALL)
    private List<PatientDetails> patientDetails;


    public Patient() {
    }

    public Patient(String pid, String name, String bgroup, String dept, String email, String phone, String district, List<PatientDetails> patientDetails) {
        this.pid = pid;
        this.name = name;
        this.bgroup = bgroup;
        this.dept = dept;
        this.email = email;
        this.phone = phone;
        this.district = district;
        this.patientDetails = patientDetails;
    }

    public Patient(List<PatientDetails> patientDetails) {
        this.patientDetails = patientDetails;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBgroup() {
        return bgroup;
    }

    public void setBgroup(String bgroup) {
        this.bgroup = bgroup;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public List<PatientDetails> getPatientDetails() {
        return patientDetails;
    }

    public void setPatientDetails(List<PatientDetails> patientDetails) {
        this.patientDetails = patientDetails;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "pid='" + pid + '\'' +
                ", name='" + name + '\'' +
                ", bgroup='" + bgroup + '\'' +
                ", dept='" + dept + '\'' +
                ", email='" + email + '\'' +
                ", phone='" + phone + '\'' +
                ", district='" + district + '\'' +
                ", patientDetails=" + patientDetails +
                '}';
    }
}