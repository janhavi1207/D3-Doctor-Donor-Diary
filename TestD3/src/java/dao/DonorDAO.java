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
import java.util.Date;
import java.util.List;
import model.Donor;
import model.Contact;
import myconnection.Connect;

/**
 *
 * @author nehaj
 */
public class DonorDAO {
    public Boolean AddDonor(Donor donor) {
//        String fname, String lname,String bloodgrp,int age,long contact,String gender, String area,int pin, String state,int experience
boolean result;
        Connection con = null;
        PreparedStatement ps=null,ps1 = null;
        con = Connect.dataConnection();
        //ResultSet rs = null;
        String sql,sql1;
        try {
        sql="INSERT INTO blooddonor (fname,lname,blood_id,age,gender_id,contact,email,last_donation,availability,state_id,city_id,area_id,pin_id) \n" +
"VALUES (?,?,(SELECT blood_id FROM bloodgroup WHERE bloodgroup=?),?,(SELECT gender_id FROM gender WHERE gender_name=?),\n" +
"?,?,?,?,(SELECT state_id FROM state WHERE state_name=?),(SELECT city_id FROM city WHERE city_name=?),\n" +
"(SELECT area_id FROM area_info WHERE area_name=?),(SELECT id FROM locations WHERE pincode=?))";
        
         ps = con.prepareStatement(sql);
            ps.setString(1, donor.getFname());
            ps.setString(2, donor.getLname());
            ps.setString(3, donor.getBloodgrp());
            ps.setInt(4, donor.getAge());
            ps.setString(5, donor.getGender());
            ps.setLong(6, donor.getContact());
            ps.setString(7,donor.getEmail());
            ps.setString(8, donor.getLast_donation());
            ps.setString(9, donor.getAvailablity());
            ps.setString(10, donor.getState());
            ps.setString(11, donor.getCity());
            ps.setString(12, donor.getArea());
            ps.setInt(13, donor.getPin());
            
            sql1="INSERT INTO login (username,passcode) VALUES (?,?) ";
            ps1 = con.prepareStatement(sql1);
            ps1.setString(1, donor.getUserid());
            ps1.setString(2, donor.getPass());
            if(ps.executeUpdate()>0 && ps1.executeUpdate()>0)
                return true;
        }
        catch(Exception e){
            System.out.println(e);
        }
        return false;
    }
    


 public ArrayList<Donor> searchDonorByArea(String state, String city, String area,String bloodgroup) {
        Connection con = null;
        PreparedStatement ps = null;
        con = Connect.dataConnection();
        ResultSet rs = null;
        List<Donor> mylist = new ArrayList<Donor>();
        String sql;
        try {
            sql="SELECT d.`fname`,d.`lname`,d.`age` ,d.`contact` ,d.`email` ,d.`last_donation` ,g.`gender_name`,ai.`area_name` ,lo.`pincode` \n" +
"FROM blooddonor d \n" +
"INNER JOIN bloodgroup b ON d.`blood_id`=b.`blood_id`\n" +
"INNER JOIN  locations lo ON d.`pin_id`=lo.`id`\n" +
"INNER JOIN area_info ai ON d.`area_id`=ai.`area_id`\n" +
"INNER JOIN gender g ON d.`gender_id`=g.`gender_id`\n" +
"INNER JOIN state st ON d.`state_id`=st.`state_id`\n" +
"INNER JOIN city ct ON d.`city_id`= ct.`city_id` \n" +
"WHERE st.`state_name`=? AND ct.`city_name`=? AND ai.`area_name`=? AND b.`bloodgroup`=? AND d.`availability`='Y' ; ";
    ps = con.prepareStatement(sql);
            ps.setString(1, state);
            ps.setString(2, city);
            ps.setString(3, area);
            ps.setString(4, bloodgroup);
    
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Donor D1 = new Donor();
                D1.setFname(rs.getString(1));
                D1.setLname(rs.getString(2));
                D1.setAge(rs.getInt(3));
                D1.setContact(rs.getLong(4));
                D1.setEmail(rs.getString(5));
                D1.setLast_donation(rs.getString(6));
                D1.setGender(rs.getString(7));
                D1.setArea(rs.getString(8));
                D1.setPin(rs.getInt(9));           
//                D1.setState(rs.getString(10));
//                D1.setCity(rs.getString(11));
                
                mylist.add(D1);
                D1 = null;
            }
        }
        catch (SQLException e) {
            System.out.println(e);
        }
        return (ArrayList<Donor>) (mylist);
        }
 
 public ArrayList<Donor> searchDonorByPincode(String state, String city, int pin,String bloodgroup) {
        Connection con = null;
        PreparedStatement ps = null;
        con = Connect.dataConnection();
        ResultSet rs = null;
        List<Donor> mylist = new ArrayList<Donor>();
        String sql;
        try {
            sql="SELECT d.`fname`,d.`lname`,d.`age` ,d.`contact` ,d.`email` ,d.`last_donation` ,g.`gender_name`,ai.`area_name` ,lo.`pincode` \n" +
"FROM blooddonor d \n" +
"INNER JOIN bloodgroup b ON d.`blood_id`=b.`blood_id`\n" +
"INNER JOIN  locations lo ON d.`pin_id`=lo.`id`\n" +
"INNER JOIN area_info ai ON d.`area_id`=ai.`area_id`\n" +
"INNER JOIN gender g ON d.`gender_id`=g.`gender_id`\n" +
"INNER JOIN state st ON d.`state_id`=st.`state_id`\n" +
"INNER JOIN city ct ON d.`city_id`= ct.`city_id` \n" +
"WHERE st.`state_name`=? AND ct.`city_name`=? AND lo.`pincode`=? AND b.`bloodgroup`=? AND d.`availability`='Y' ; ";
    ps = con.prepareStatement(sql);
            ps.setString(1, state);
            ps.setString(2, city);
            ps.setInt(3, pin);
            ps.setString(4, bloodgroup);
    
            rs = ps.executeQuery();
            
            while (rs.next()) {
                Donor D1 = new Donor();
                D1.setFname(rs.getString(1));
                D1.setLname(rs.getString(2));
                D1.setAge(rs.getInt(3));
                D1.setContact(rs.getLong(4));
                D1.setEmail(rs.getString(5));
                D1.setLast_donation(rs.getString(6));
                D1.setGender(rs.getString(7));
                D1.setArea(rs.getString(8));
                D1.setPin(rs.getInt(9));           
//                D1.setState(rs.getString(10));
//                D1.setCity(rs.getString(11));
                
                mylist.add(D1);
                D1 = null;
            }
        }
        catch (SQLException e) {
            System.out.println(e);
        }
        return (ArrayList<Donor>) (mylist);
        }
 
 public ArrayList<Donor> displayDetails(String user,String pass){
   Connection con=null;
     List<Donor> mylist = new ArrayList<Donor>();
             PreparedStatement ps=null;
             con=Connect.dataConnection();
             ResultSet rs=null;
             try
             {
                 String sql;
                 sql="SELECT bd.`donor_id`,bd.`fname`,bd.`lname` ,bd.`age`,bg.`bloodgroup`,g.`gender_name`,bd.`contact`,bd.`email`,bd.`last_donation`,bd.`availability`,st.`state_name`,ct.`city_name`,ai.`area_name`,lo.`pincode` FROM blooddonor bd INNER JOIN login lg ON bd.`donor_id`=lg.`donor_id` \n" +
"INNER JOIN gender g ON bd.`gender_id`=g.`gender_id` INNER JOIN state st ON st.`state_id`=bd.`state_id` INNER JOIN city ct ON ct.`city_id`=bd.`city_id`\n" +
"INNER JOIN  area_info ai ON ai.`area_id`=bd.`area_id`INNER JOIN locations lo ON lo.`id`=bd.`pin_id`\n" +
"INNER JOIN bloodgroup bg ON bd.`blood_id`=bg.`blood_id` WHERE lg.username=? AND lg.`passcode`=?;";
                 ps=con.prepareStatement(sql);
                 ps.setString(1, user);
                 ps.setString(2, pass);
                 rs=ps.executeQuery();
                 
                 if(rs.next()){
                     Donor d1=new Donor();
                     d1.setDonor_id(rs.getInt(1));
                     d1.setFname(rs.getString(2));
                     d1.setLname(rs.getString(3));
                     d1.setAge(rs.getInt(4));
                     d1.setBloodgrp(rs.getString(5));
                     d1.setGender(rs.getString(6));
                     d1.setContact(rs.getLong(7));
                     d1.setEmail(rs.getString(8));
                     d1.setLast_donation(rs.getDate(9).toString());
                     d1.setAvailablity(rs.getString(10));
                     d1.setState(rs.getString(11));
                     d1.setCity(rs.getString(12));
                     d1.setArea(rs.getString(13));
                     d1.setPin(rs.getInt(14));
                      mylist.add(d1);
                d1 = null;
                 }
                 
             }
             catch(Exception e){
                 System.out.println(""+e);
             }
             return (ArrayList<Donor>) (mylist);
 }
 
 public ArrayList<Donor> searchStatus(String user,String pass){
     Connection con=null;
     List<Donor> mylist = new ArrayList<Donor>();
             PreparedStatement ps=null;
             con=Connect.dataConnection();
             ResultSet rs=null;
             try
             {
                 String sql;
                 sql="SELECT bd.`donor_id`,bd.`fname`,bd.`lname` ,bg.`bloodgroup`,bd.`availability` FROM blooddonor bd INNER JOIN login lg ON bd.`donor_id`=lg.`donor_id` \n" +
"INNER JOIN `bloodgroup` bg ON bd.`blood_id`=bg.`blood_id` WHERE lg.username=? and passcode=?;";
                 ps=con.prepareStatement(sql);
                 ps.setString(1, user);
                 ps.setString(2, pass);
                 rs=ps.executeQuery();
                 
                 if(rs.next()){
                     Donor d1=new Donor();
                     d1.setDonor_id(rs.getInt(1));
                     d1.setFname(rs.getString(2));
                     d1.setLname(rs.getString(3));
                     d1.setBloodgrp(rs.getString(4));
                     d1.setAvailablity(rs.getString(5));
                      mylist.add(d1);
                d1 = null;
                 }
                 
             }
             catch(Exception e){
                 System.out.println(""+e);
             }
             return (ArrayList<Donor>) (mylist);
 }
 public boolean updateDonorStatus(String status,int id)
    {
             Connection con=null;
             PreparedStatement ps=null;
             con=Connect.dataConnection();
             String sql;
             sql="update blooddonor set availability=? where donor_id=?";
             try
             {
                 ps=con.prepareStatement(sql);
                 ps.setString(1, status);
                 ps.setInt(2, id);
                 int n;
                  n=ps.executeUpdate();
                  if(n>0)
                      return true;
             }
             catch(Exception e)
             {
                 System.out.println(e);
             }
             return false;
    }
 
  public boolean updateDonorDetails(ArrayList<Donor> mylist)
    {
             Connection con=null;
             PreparedStatement ps=null;
             con=Connect.dataConnection();
             String sql1;
            // Donor donor=new Donor();
             sql1="UPDATE blooddonor SET age=?,email=?,contact=?,last_donation=?,state_id=(SELECT state_id FROM state WHERE state_name=?) ,\n" +
"city_id=(SELECT city_id FROM city WHERE city_name=?),area_id=(SELECT area_id FROM area_info WHERE area_name=?),\n" +
"pin_id=(SELECT id FROM locations WHERE pincode=?)WHERE donor_id=?";
             try
             {
                 for(Donor d1:mylist){
                 ps=con.prepareStatement(sql1);
                ps.setInt(1, d1.getAge());
                ps.setString(2, d1.getEmail());
                ps.setLong(3, d1.getContact());
                ps.setString(4,d1.getLast_donation());
                ps.setString(5, d1.getState());
                ps.setString(6, d1.getCity());
                ps.setString(7, d1.getArea());
               ps.setInt(8, d1.getPin());
               ps.setInt(9, d1.getDonor_id());
                 }
                 int n;
                  n=ps.executeUpdate();
                  if(n>0)
                      return true;

             }
             catch(Exception e)
             {
                 System.out.println(e);
             }
             return false;
    }
  
  public boolean changePassword(String user,String newpass){
      Connection con=null;
             PreparedStatement ps=null;
             con=Connect.dataConnection();
             String sql;
                     try{
                          sql="UPDATE login SET passcode=? WHERE username=?";
                           ps.setString(1, newpass);
                           ps.setString(2, user);
                           int n;
                  n=ps.executeUpdate();
                  if(n>0)
                      return true;
                     }
            catch(Exception e)
             {
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
                 sql="select max(donor_id) from blooddonor";
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
                 sql="select * from login where username=? and passcode=?";
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
 
 public boolean contactUs(Contact c)
    {
             Connection con=null;
             PreparedStatement ps=null;
             con=Connect.dataConnection();
             String sql;
             sql="INSERT INTO contact (fname,lname,email,comments) VALUES (?,?,?,?);";
             try
             {
                 ps=con.prepareStatement(sql);
                 ps.setString(1,c.getFname());
                 ps.setString(2,c.getLname());
                 ps.setString(3,c.getEmail());
                 //ps.setLong(4,c.getContact());
                 ps.setString(4,c.getComments());
                 int n;
                  n=ps.executeUpdate();
                  if(n>0)
                      return true;
             }
             catch(Exception e)
             {
                 System.out.println(e);
             }
             return false;
    }
 
}
    