/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Doctor;
import myconnection.Connect;

/**
 *
 * @author nehaj
 */
public class DocDAO {

    public ArrayList<Doctor> searchDoctorByArea(String state, String city, String area, String speciality, String gender, int experience) {
        Connection con = null;
        PreparedStatement ps = null;
        con = Connect.dataConnection();
        ResultSet rs = null;
        List<Doctor> mylist = new ArrayList<Doctor>();
        String sql;
        try {
            sql = "SELECT d.`first_name`,d.`last_name`,d.`contact` ,d.`experience`,s.`speciality` ,dg.`degree_name`,g.`gender_name`,hs.`hospital_name`,hs.`hospital_address`,ai.`area_name` ,lo.`pincode` \n"
                    + "FROM doctor_info di \n"
                    + "INNER JOIN doctor d ON di.`doc_id`=d.`doc_id` \n"
                    + "INNER JOIN speciality s ON di.`speciality_id`=s.`speciality_id`\n"
                    + "INNER JOIN  locations lo ON di.`pincode`=lo.`id`\n"
                    + "INNER JOIN area_info ai ON di.`area_id`=ai.`area_id`\n"
                    + "INNER JOIN degree dg ON di.`degree_id`=dg.`degree_id`\n"
                    + "INNER JOIN gender g ON di.`gender_id`=g.`gender_id`\n"
                    + "INNER JOIN hospitals hs ON di.`hospital_id`=hs.`hospital_id`\n"
                    + "INNER JOIN state st ON di.`state_id`=st.`state_id`\n"
                    + "INNER JOIN city ct ON di.`city_id`= ct.`city_id` \n"
                    + "WHERE st.`state_name`=? AND ct.`city_name`=? AND ai.`area_name`=? AND s.`speciality`= ? AND g.`gender_name`=? AND d.`experience`>=? ; ";
            ps = con.prepareStatement(sql);
            ps.setString(1, state);
            ps.setString(2, city);
            ps.setString(3, area);
            ps.setString(4, speciality);
            ps.setString(5, gender);
            ps.setInt(6, experience);
            rs = ps.executeQuery();

            while (rs.next()) {
                Doctor D1 = new Doctor();
                D1.setPincode(rs.getInt(11));
                D1.setFname(rs.getString(1));
                D1.setLname(rs.getString(2));
                D1.setSpeciality(rs.getString(5));
                D1.setExperience(rs.getInt(4));
                D1.setDegree(rs.getString(6));
                D1.setClinic_hospital(rs.getString(8));
                D1.setContact(rs.getLong(3));
                D1.setArea(rs.getString(10));
                D1.setHosp_add(rs.getString(9));

//                D1.setState(rs.getString(10));
//                D1.setCity(rs.getString(11));
                D1.setGender(rs.getString(7));
                mylist.add(D1);
                D1 = null;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return (ArrayList<Doctor>) (mylist);
    }

    public List<Doctor> searchDoctorByPincode(String state, String city, int pincode, String speciality, String gender, int experience) {
        Connection con = null;
        PreparedStatement ps = null;
        con = Connect.dataConnection();
        ResultSet rs = null;
        List<Doctor> mylist = new ArrayList<Doctor>();
        String sql;
        try {
            sql = "SELECT d.`first_name`,d.`last_name`,d.`contact` ,d.`experience`,s.`speciality` ,dg.`degree_name`,g.`gender_name`,hs.`hospital_name`,hs.`hospital_address`,ai.`area_name` ,lo.`pincode` \n"
                    + "FROM doctor_info di \n"
                    + "INNER JOIN doctor d ON di.`doc_id`=d.`doc_id` \n"
                    + "INNER JOIN speciality s ON di.`speciality_id`=s.`speciality_id`\n"
                    + "INNER JOIN  locations lo ON di.`pincode`=lo.`id`\n"
                    + "INNER JOIN area_info ai ON di.`area_id`=ai.`area_id`\n"
                    + "INNER JOIN degree dg ON di.`degree_id`=dg.`degree_id`\n"
                    + "INNER JOIN gender g ON di.`gender_id`=g.`gender_id`\n"
                    + "INNER JOIN hospitals hs ON di.`hospital_id`=hs.`hospital_id`\n"
                    + "INNER JOIN state st ON di.`state_id`=st.`state_id`\n"
                    + "INNER JOIN city ct ON di.`city_id`= ct.`city_id` \n"
                    + "WHERE st.`state_name`=? AND ct.`city_name`=? AND lo.`pincode`=? AND s.`speciality`= ? AND g.`gender_name`=? AND d.`experience`>=? ; ";
            ps = con.prepareStatement(sql);
            ps.setString(1, state);
            ps.setString(2, city);
            ps.setInt(3, pincode);
            ps.setString(4, speciality);
            ps.setString(5, gender);
            ps.setInt(6, experience);
            rs = ps.executeQuery();

            while (rs.next()) {
                Doctor D1 = new Doctor();
                D1.setPincode(rs.getInt(11));
                D1.setFname(rs.getString(1));
                D1.setLname(rs.getString(2));
                D1.setSpeciality(rs.getString(5));
                D1.setExperience(rs.getInt(4));
                D1.setDegree(rs.getString(6));
                D1.setClinic_hospital(rs.getString(8));
                D1.setContact(rs.getLong(3));
                D1.setArea(rs.getString(10));
                D1.setHosp_add(rs.getString(9));
//                D1.setState(rs.getString(10));
//                D1.setCity(rs.getString(11));
                D1.setGender(rs.getString(7));
                mylist.add(D1);
                D1 = null;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return (ArrayList<Doctor>) (mylist);
    }

    public ArrayList<Doctor> searchDoctorByAreaIgnoreGender(String state, String city, String area, String speciality, int experience) {
        Connection con = null;
        PreparedStatement ps = null;
        con = Connect.dataConnection();
        ResultSet rs = null;
        List<Doctor> mylist = new ArrayList<Doctor>();
        String sql;
        try {
            sql = "SELECT d.`first_name`,d.`last_name`,d.`contact` ,d.`experience`,s.`speciality` ,dg.`degree_name`,g.`gender_name`,hs.`hospital_name`,hs.`hospital_address`,ai.`area_name` ,lo.`pincode` \n"
                    + "FROM doctor_info di \n"
                    + "INNER JOIN doctor d ON di.`doc_id`=d.`doc_id` \n"
                    + "INNER JOIN speciality s ON di.`speciality_id`=s.`speciality_id`\n"
                    + "INNER JOIN  locations lo ON di.`pincode`=lo.`id`\n"
                    + "INNER JOIN area_info ai ON di.`area_id`=ai.`area_id`\n"
                    + "INNER JOIN degree dg ON di.`degree_id`=dg.`degree_id`\n"
                    + "INNER JOIN gender g ON di.`gender_id`=g.`gender_id`\n"
                    + "INNER JOIN hospitals hs ON di.`hospital_id`=hs.`hospital_id`\n"
                    + "INNER JOIN state st ON di.`state_id`=st.`state_id`\n"
                    + "INNER JOIN city ct ON di.`city_id`= ct.`city_id` \n"
                    + "WHERE st.`state_name`=? AND ct.`city_name`=? AND ai.`area_name`=? AND s.`speciality`= ? AND d.`experience`>=? ; ";
            ps = con.prepareStatement(sql);
            ps.setString(1, state);
            ps.setString(2, city);
            ps.setString(3, area);
            ps.setString(4, speciality);
            ps.setInt(5, experience);
            rs = ps.executeQuery();

            while (rs.next()) {
                Doctor D1 = new Doctor();
                D1.setPincode(rs.getInt(11));
                D1.setFname(rs.getString(1));
                D1.setLname(rs.getString(2));
                D1.setSpeciality(rs.getString(5));
                D1.setExperience(rs.getInt(4));
                D1.setDegree(rs.getString(6));
                D1.setClinic_hospital(rs.getString(8));
                D1.setContact(rs.getLong(3));
                D1.setArea(rs.getString(10));
                D1.setHosp_add(rs.getString(9));
//                D1.setState(rs.getString(10));
//                D1.setCity(rs.getString(11));
                D1.setGender(rs.getString(7));
                mylist.add(D1);
                D1 = null;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return (ArrayList<Doctor>) (mylist);
    }

    public ArrayList<Doctor> searchDoctorByPincodeIgnoreGender(String state, String city, int pincode, String speciality, int experience) {
        Connection con = null;
        PreparedStatement ps = null;
        con = Connect.dataConnection();
        ResultSet rs = null;
        List<Doctor> mylist = new ArrayList<Doctor>();
        String sql;
        try {
            sql = "SELECT d.`first_name`,d.`last_name`,d.`contact` ,d.`experience`,s.`speciality` ,dg.`degree_name`,g.`gender_name`,hs.`hospital_name`,hs.`hospital_address`,ai.`area_name` ,lo.`pincode` \n"
                    + "FROM doctor_info di \n"
                    + "INNER JOIN doctor d ON di.`doc_id`=d.`doc_id` \n"
                    + "INNER JOIN speciality s ON di.`speciality_id`=s.`speciality_id`\n"
                    + "INNER JOIN  locations lo ON di.`pincode`=lo.`id`\n"
                    + "INNER JOIN area_info ai ON di.`area_id`=ai.`area_id`\n"
                    + "INNER JOIN degree dg ON di.`degree_id`=dg.`degree_id`\n"
                    + "INNER JOIN gender g ON di.`gender_id`=g.`gender_id`\n"
                    + "INNER JOIN hospitals hs ON di.`hospital_id`=hs.`hospital_id`\n"
                    + "INNER JOIN state st ON di.`state_id`=st.`state_id`\n"
                    + "INNER JOIN city ct ON di.`city_id`= ct.`city_id` \n"
                    + "WHERE st.`state_name`=? AND ct.`city_name`=? AND lo.`pincode`=? AND s.`speciality`= ? AND d.`experience`>=? ; ";
            ps = con.prepareStatement(sql);
            ps.setString(1, state);
            ps.setString(2, city);
            ps.setInt(3, pincode);
            ps.setString(4, speciality);
            ps.setInt(5, experience);
            rs = ps.executeQuery();

            while (rs.next()) {
                Doctor D1 = new Doctor();
                D1.setPincode(rs.getInt(11));
                D1.setFname(rs.getString(1));
                D1.setLname(rs.getString(2));
                D1.setSpeciality(rs.getString(5));
                D1.setExperience(rs.getInt(4));
                D1.setDegree(rs.getString(6));
                D1.setClinic_hospital(rs.getString(8));
                D1.setContact(rs.getLong(3));
                D1.setArea(rs.getString(10));
                D1.setHosp_add(rs.getString(9));
//                D1.setState(rs.getString(10));
//                D1.setCity(rs.getString(11));
                D1.setGender(rs.getString(7));
                mylist.add(D1);
                D1 = null;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return (ArrayList<Doctor>) (mylist);
    }
    
    public Boolean AddDoctor(Doctor doctor) {
//        String fname, String lname,String bloodgrp,int age,long contact,String gender, String area,int pin, String state,int experience
boolean result;
        Connection con = null;
        PreparedStatement ps=null,ps1 = null;
        con = Connect.dataConnection();
        //ResultSet rs = null;
        String sql,sql1;
        try {
        sql="INSERT INTO doctor_info (doc_id,degree_id,gender_id,hospital_id,speciality_id,state_id,city_id,area_id,pincode) \n" +
"VALUES (?,(SELECT degree_id FROM degree WHERE degree_name=?),(SELECT gender_id FROM gender WHERE gender_name=?),\n" +
"(SELECT hospital_id FROM hospitals WHERE hospital_name=?),(SELECT speciality_id FROM speciality WHERE speciality=?),\n" +
"(SELECT state_id FROM state WHERE state_name=?),(SELECT city_id FROM city WHERE city_name=?),\n" +
"(SELECT area_id FROM area_info WHERE area_name=?),(SELECT id FROM locations WHERE pincode=?))";
        
         ps = con.prepareStatement(sql);
            ps.setInt(1,doctor.getDoc_id());
            ps.setString(2,doctor.getDegree());
            ps.setString(3, doctor.getGender());
            ps.setString(4, doctor.getClinic_hospital());
            ps.setString(5, doctor.getSpeciality());
            ps.setString(6, doctor.getState());
            ps.setString(7, doctor.getCity());
            ps.setString(8, doctor.getArea());
            ps.setInt(9, doctor.getPincode());
            
            sql1="INSERT INTO doctor(doc_id,first_name,last_name,experience,contact,hospital_id)VALUES (?,?,?,?,?,\n" +
"(SELECT hospital_id FROM hospitals WHERE hospital_name=?)); ";
            ps1 = con.prepareStatement(sql1);
            ps1.setInt(1,doctor.getDoc_id());
            ps1.setString(2, doctor.getFname());
            ps1.setString(3, doctor.getLname());
            ps1.setInt(4, doctor.getExperience());
            ps1.setLong(5, doctor.getContact());
            ps1.setString(6, doctor.getClinic_hospital());
            if(ps.executeUpdate()>0 && ps1.executeUpdate()>0)
                return true;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return false;
    }
    
    public static int autoIncrement()
    {
             Connection con=null;
             PreparedStatement ps=null;
             con=Connect.dataConnection();
             ResultSet rs=null;
             int n=100;
             try
             {
                String sql;
                 sql="select max(doc_id) from doctor_info";
                 ps=con.prepareStatement(sql);
                 rs=ps.executeQuery();
                 if(rs.next())
                 {    
                     n=rs.getInt(1);
                     n=n+1; 
                 } 
                 
             }
             catch(Exception e)
             {
                 System.out.println(e);
             } 
             return(n);
    }
 
    public boolean checkLogin(String user,String pass)
    {
              Connection con=null;
             PreparedStatement ps=null;
             con=Connect.dataConnection();
             ResultSet rs=null;
             try
             {
                 String sql;
                 sql="select * from admin_login where username=? and passcode=?";
                 ps=con.prepareStatement(sql);
                 ps.setString(1, user);
                 ps.setString(2, pass);
                 rs=ps.executeQuery();
                 if(rs.next())
                     return true;
                 
             }    
             catch(Exception e)
             {
                 System.out.println(e);
             }   
           return false;  
    }
    
   public Doctor displayDoctorDetails(int doc_id){
   Connection con=null;
    Doctor D=new Doctor();
             PreparedStatement ps=null;
             con=Connect.dataConnection();
             ResultSet rs=null;
             try{
                 String sql;
                 sql = "SELECT d.`first_name`,d.`last_name`,d.`contact` ,d.`experience`,s.`speciality` ,dg.`degree_name`,g.`gender_name`,hs.`hospital_name`,hs.`hospital_address`,ai.`area_name` ,lo.`pincode` \n"
                    + "FROM doctor_info di \n"
                    + "INNER JOIN doctor d ON di.`doc_id`=d.`doc_id` \n"
                    + "INNER JOIN speciality s ON di.`speciality_id`=s.`speciality_id`\n"
                    + "INNER JOIN  locations lo ON di.`pincode`=lo.`id`\n"
                    + "INNER JOIN area_info ai ON di.`area_id`=ai.`area_id`\n"
                    + "INNER JOIN degree dg ON di.`degree_id`=dg.`degree_id`\n"
                    + "INNER JOIN gender g ON di.`gender_id`=g.`gender_id`\n"
                    + "INNER JOIN hospitals hs ON di.`hospital_id`=hs.`hospital_id`\n"
                    + "INNER JOIN state st ON di.`state_id`=st.`state_id`\n"
                    + "INNER JOIN city ct ON di.`city_id`= ct.`city_id` \n"
                    + "WHERE d.doc_id=? ; ";
            ps = con.prepareStatement(sql);
            ps.setInt(1,doc_id);
            
            rs = ps.executeQuery();

                  if (rs.next()) {
                
                D.setPincode(rs.getInt(11));
                D.setFname(rs.getString(1));
                D.setLname(rs.getString(2));
                D.setSpeciality(rs.getString(5));
                D.setExperience(rs.getInt(4));
                D.setDegree(rs.getString(6));
                D.setClinic_hospital(rs.getString(8));
                D.setContact(rs.getLong(3));
                D.setArea(rs.getString(10));
                D.setHosp_add(rs.getString(9));

               D.setState(rs.getString(10));
              D.setCity(rs.getString(11));
                D.setGender(rs.getString(7));
              
                D = null;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return D;
                 
             }
     public boolean updateDoctorDetails(Doctor D) throws SQLException
    {
             Connection con=null;
             PreparedStatement ps=null;
             con=Connect.dataConnection();
             String sql1;
             sql1="Update doctor set experience,hosp_add,clinic_hospital,state_id=(SELECT state_id FROM state WHERE state_name=?) ,\n" +
"city_id=(SELECT city_id FROM city WHERE city_name=?),area_id=(SELECT area_id FROM area_info WHERE area_name=?),\n" +
"pin_id=(SELECT id FROM locations WHERE pincode=?)WHERE doc_id=?";
   
                 ps=con.prepareStatement(sql1);
                ps.setInt(1, D.getExperience());
                ps.setString(2, D.getHosp_add());
                ps.setString(3, D.getClinic_hospital());
                ps.setString(4, D.getState());
                ps.setString(5,D.getCity());
                ps.setString(6, D.getArea());
               ps.setInt(7, D.getPincode());
               ps.setInt(8, D.getDoc_id());
                if(ps.executeUpdate()>0)
                  return true;
              else
                  return false;
             
           
}
      public boolean deleteDoctor(int doc_id)
    {
             Connection con=null;
             PreparedStatement ps=null;
             con=Connect.dataConnection();
             int n=0;
             String sql;
             try 
             {
                 sql="delete from doctor where doc_id=?";
                 ps=con.prepareStatement(sql);
                 ps.setInt(1, doc_id);
                 n=ps.executeUpdate();
                 if(n>0)
                     return true;
             }
             catch(SQLException e)
             {
                 System.out.println(e);
             }
            return false; 
    }
    
}
