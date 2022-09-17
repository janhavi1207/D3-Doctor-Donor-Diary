/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Doctor;
import dao.DocDAO;

/**
 *
 * @author nehaj
 */
public class AddDoctor extends HttpServlet {

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
            out.println("<title>Servlet AddDoctor</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AddDoctor at " + request.getContextPath() + "</h1>");
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
        String state, city, area, hospital, gender, degree,fname, lname,speciality;
        int pincode, experience,doc_id;
        long contact;
        
        fname=request.getParameter("fname");
        lname=request.getParameter("lname");
        experience=Integer.parseInt(request.getParameter("exp"));
        contact=Long.parseLong(request.getParameter("contact"));
        hospital=request.getParameter("hosp");
        gender=request.getParameter("gender");
        speciality=request.getParameter("speciality");
        degree=request.getParameter("degree");
        state=request.getParameter("state");
        city=request.getParameter("city");
        area=request.getParameter("area");
        pincode=Integer.parseInt(request.getParameter("pin"));
        
        
        Doctor d1=new Doctor();
        DocDAO dd1=new DocDAO();
        doc_id=DocDAO.autoIncrement();
        d1.setDoc_id(doc_id);
        d1.setFname(fname);
        d1.setLname(lname);
        d1.setExperience(experience);
        d1.setContact(contact);
        d1.setClinic_hospital(hospital);
        d1.setGender(gender);
        d1.setDegree(degree);
        d1.setSpeciality(speciality);
        d1.setState(state);
        d1.setCity(city);
        d1.setArea(area);
        d1.setPincode(pincode);
        
         PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Register</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<center>");
      
//        out.println(availability);
//        out.println(last_donation); 
        if(dd1.AddDoctor(d1)){
        out.println("<h1>");
        out.println("Doctor Details Added sucessfully.....");
        out.println("<br>");
        out.println("<a href=\"AddDoctor.jsp\">Add next data</a>");
        out.println("<h1>");
        }
        else{
             out.println("<h1>");
        out.println("failed.....");
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
