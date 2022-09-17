/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author nehaj
 */
public class Doctor {
     private int pincode,experience,doc_id;

    public int getDoc_id() {
        return doc_id;
    }

    public void setDoc_id(int doc_id) {
        this.doc_id = doc_id;
    }
private long contact ;
    private String state,city,fname,lname,speciality,degree,clinic_hospital,area,gender,hosp_add;

    public String getState() {
        return state;
    }

    public String getCity() {
        return city;
    }

    public void setState(String state) {
        this.state = state;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }
   
    
    public int getPincode() {
        return pincode;
    }

    public void setPincode(int pincode) {
        this.pincode = pincode;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }

    public long getContact() {
        return contact;
    }

    public void setContact(long contact) {
        this.contact = contact;
    }
    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getClinic_hospital() {
        return clinic_hospital;
    }

    public void setClinic_hospital(String clinic_hospital) {
        this.clinic_hospital = clinic_hospital;
    }

    

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }
    public String getGender(){
    return gender;
    }
    public void setGender(String gender)
    {
    this.gender=gender;
    }    

    public String getHosp_add() {
        return hosp_add;
    }

    public void setHosp_add(String hosp_add) {
        this.hosp_add = hosp_add;
    }
    
}
