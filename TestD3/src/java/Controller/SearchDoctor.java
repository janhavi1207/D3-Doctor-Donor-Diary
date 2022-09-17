/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import dao.DocDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Doctor;

/**
 *
 * @author nehaj
 */
public class SearchDoctor extends HttpServlet {

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
            out.println("<title>Servlet SearchDoctor</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchDoctor at " + request.getContextPath() + "</h1>");
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
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Search</title>");
        out.println("</head>");
        out.println("<body style=\"background-color: lightgray\">");
        out.println("<center>");
        String state, city, area, pin, speciality, radio, gender, fname, lname;
        int pincode, exp;
//        radio=request.getParameter("search");
//        out.println("post method radio="+radio);

        state = request.getParameter("state");
        city = request.getParameter("city");
        area = request.getParameter("area");
        pin = (request.getParameter("pincode"));
        
        
        if (pin == "") {
            pincode = 0;
        } else {
            pincode = Integer.parseInt(request.getParameter("pincode"));
        }
        speciality = request.getParameter("specialist");
        gender = request.getParameter("gender");
        exp = Integer.parseInt(request.getParameter("exp"));

//        out.println("state=" + state);
//        out.println("city=" + city);
//        out.println("area=" + area);
//        out.println("pincode" + pincode);
//        out.println(" spec=" + speciality);
//        out.println("exp=" + exp);
//        out.println("gender=" + gender);
        List<Doctor> mylist1 = new ArrayList<Doctor>();
        DocDAO DD1 = new DocDAO();
        if (pincode == 0) {
            if (gender.equals("both")) {
                 mylist1 = DD1.searchDoctorByAreaIgnoreGender(state, city, area, speciality,  exp);
            } 
            else {
                mylist1 = DD1.searchDoctorByArea(state, city, area, speciality, gender, exp);
            }
            if (mylist1 == null) {
                out.println("record not found");
            } else {
                out.println("<table border=1>");
                out.println("<br><br><font color=green size=5><U><B>Doctor Information</U></B></font><br><br>");
                out.println("<tr><th>Name</th><th>Hospital/Clinic</th><th>Hospital Address</th><th>Speciality</th><th>Experience</th><th>Degree</th><th>Contact</th><th>Gender</th><th>Area</th><th>Pincode</th></tr>");
                for (Doctor d1 : mylist1) {
                    fname = d1.getFname();
                    lname = d1.getLname();
                    out.println("<tr>");
                    out.println("<td>" + (fname + " " + lname) + "</td>");
                      out.println("<td>" + d1.getClinic_hospital() + "</td>");
                      out.println("<td>" + d1.getHosp_add() + "</td>");
                      out.println("<td>" + d1.getSpeciality() + "</td>");
                       out.println("<td>" + d1.getExperience() + "</td>");
                       out.println("<td>" + d1.getDegree() + "</td>");
                    out.println("<td>" + d1.getContact() + "</td>");
                    out.println("<td>" + d1.getGender() + "</td>");
                    out.println("<td>" + d1.getArea() + "</td>");
                    out.println("<td>" + d1.getPincode() + "</td>");
                    out.println("</tr>");
                }
            }
        } else {
            if (gender.equals("both")) {
                mylist1 = DD1.searchDoctorByPincodeIgnoreGender(state, city, pincode, speciality,  exp);
            } else {
                mylist1 = DD1.searchDoctorByPincode(state, city, pincode, speciality, gender, exp);
            }
            if (mylist1 == null) {
                out.println("record not found");
            } else {
                out.println("<table border=1>");
                out.println("<br><br><font color=green size=5><U><B>Doctor Information</U></B></font><br><br>");
                out.println("<tr><th>Name</th><th>Hospital/Clinic</th><th>Hospital Address</th><th>Speciality</th><th>Experience</th><th>Degree</th><th>Contact</th><th>Gender</th><th>Area</th><th>Pincode</th></tr>");
                for (Doctor d1 : mylist1) {
                    fname = d1.getFname();
                    lname = d1.getLname();
                    out.println("<tr>");
                    out.println("<td>" + (fname + " " + lname) + "</td>");
                      out.println("<td>" + d1.getClinic_hospital() + "</td>");
                      out.println("<td>" + d1.getHosp_add() + "</td>");
                      out.println("<td>" + d1.getSpeciality() + "</td>");
                       out.println("<td>" + d1.getExperience() + "</td>");
                       out.println("<td>" + d1.getDegree() + "</td>");
                    out.println("<td>" + d1.getContact() + "</td>");
                    out.println("<td>" + d1.getGender() + "</td>");
                    out.println("<td>" + d1.getArea() + "</td>");
                    out.println("<td>" + d1.getPincode() + "</td>");
                    out.println("</tr>");
                }
            }
 }

        out.println("</form>");
        out.println("</center>");
        out.println("</body>");
        out.println("</html>");

//        speciality=request.getParameter("specialist");
//        gender=request.getParameter("gender");
//        exp=Integer.parseInt(request.getParameter("exp"));
//         List<Doctor> mylist1 = new ArrayList<Doctor>();
//        DocDAO DD1 = new DocDAO();
//        mylist1 = DD1.searchDoctorByArea(state, city, area, speciality, gender, exp);
//        if(mylist1==null){
//           out.println("Record not Found"); 
//        }
//        else{
//        out.println("<table border=1>");
//                out.println("<br><br><font color=green size=5><U><B>Doctor Information</U></B></font><br><br>");
//                out.println("<tr><th>Name</th><th>Speciality</th><th>Experience</th><th>Degree</th><th>Clinic/Hospital</th><th>Contact</th><th>Gender</th><th>Area</th><th>Pincode</th></tr>");
//                for (Doctor d1 : mylist1) {
//                    fname = d1.getFname();
//                    lname = d1.getLname();
//                    out.println("<tr>");
//                    out.println("<td>" + (d1.getFname() + " " + d1.getLname()) + "</td>");
//                    out.println("<td>" + d1.getSpeciality() + "</td>");
//                    out.println("<td>" + d1.getExperience() + "</td>");
//                    out.println("<td>" + d1.getDegree() + "</td>");
//                    out.println("<td>" + d1.getClinic_hospital() + "</td>");
//                    out.println("<td>" + d1.getContact() + "</td>");
//                    out.println("<td>" + d1.getGender() + "</td>");
//                    out.println("<td>" + d1.getArea() + "</td>");
//                    out.println("<td>" + d1.getPincode() + "</td>");
//                    out.println("</tr>");
//    }
//        }
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
