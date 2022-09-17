/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dao.DonorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Donor;

/**
 *
 * @author nehaj
 */
public class RegisterDonor extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RegisterDonor</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet RegisterDonor at " + request.getContextPath() + "</h1>");
//             String date;
//        date=request.getParameter("donationDate");
//        out.print(date);
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
       
       
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String state, city, area, radio, gender, bloodgroup,fname, lname,email,last_donation,user_id,pass,availability;
        int pincode, age;
        long contact;
        fname=request.getParameter("fname");
        lname=request.getParameter("lname");
        age=Integer.parseInt(request.getParameter("age"));
        contact=Long.parseLong(request.getParameter("contact"));
        bloodgroup=request.getParameter("bloodgrp");
        gender=request.getParameter("gender");
        email=request.getParameter("email");
        last_donation=request.getParameter("donationDate");
        user_id=request.getParameter("userid");
        pass=request.getParameter("pass");
        state=request.getParameter("state");
        city=request.getParameter("city");
        area=request.getParameter("area");
        pincode=Integer.parseInt(request.getParameter("pin"));
        availability=request.getParameter("avail");
        
        Donor d1=new Donor();
        DonorDAO dd1=new DonorDAO();
        d1.setFname(fname);
        d1.setLname(lname);
        d1.setAge(age);
        d1.setContact(contact);
        d1.setBloodgrp(bloodgroup);
        d1.setGender(gender);
        d1.setEmail(email);
        d1.setLast_donation(last_donation);
        d1.setUserid(user_id);
        d1.setPass(pass);
        d1.setState(state);
        d1.setCity(city);
        d1.setArea(area);
        d1.setPin(pincode);
        d1.setAvailablity(availability);
        
         PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Register</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<center>");
      
//        out.println(availability);
//        out.println(last_donation); 
        if(dd1.AddDonor(d1)){
        out.println("<h1>");
        out.println("Registered sucessfully.....");
        out.println("<h1>");
        }
        else{
             out.println("<h1>");
        out.println("Registration failed.....");
        out.println("<h1>");
        }
        out.println("</center>");
        out.println("</body>");
        out.println("</html>");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
