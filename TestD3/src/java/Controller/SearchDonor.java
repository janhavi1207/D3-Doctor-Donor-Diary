/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;


import dao.DonorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Donor;

/** 
 *
 * @author nehaj
 */
public class SearchDonor extends HttpServlet {

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
            out.println("<title>Servlet SearchDonor</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SearchDonor at " + request.getContextPath() + "</h1>");
            out.println("page not found");
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
        List<Donor> mylist2 = new ArrayList<Donor>();
        DonorDAO DD1 = new DonorDAO();
        String state, city, area, radio, gender, bloodgroup,fname, lname,email,last_donation,user_id,pass,availability;
        String pin; int pincode,age; 
        long contact;
        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<head>");
        out.println("<title>SearchDonor</title>");
        out.println("</head>");
        out.println("<body style=\"background-color: lightgray\">");
        out.println("<center>");
        
//        radio=request.getParameter("search");
//        out.println("post method radio="+radio);

        state = request.getParameter("state");
        city = request.getParameter("city");
        area = request.getParameter("area");
        pin = (request.getParameter("pincode"));
        bloodgroup=request.getParameter("bloodgroup");
        out.println(bloodgroup);
        out.print(state); out.print(city); out.print(area); out.print(pin);
        if (pin != "") {
            pincode=Integer.parseInt(pin);
            //out.println(pincode);
          mylist2=  DD1.searchDonorByPincode(state, city, pincode, bloodgroup);
           if (mylist2 == null) {
                out.println("record not found");
            } else {
                out.println("i am there in pincode else");
                out.println("<table border=1>");
                out.println("<br><br><font color=green size=5><U><B>Blood-Donor Information</U></B></font><br><br>");
                out.println("<tr><th>Name</th><th>Age</th><th>Contact</th><th>Email</th><th>Gender</th><th>Last Date of Donation</th><th>Area</th><th>Pincode</th></tr>");
                for (Donor d1 : mylist2) {
                    fname = d1.getFname();
                    lname = d1.getLname();
                    
                    out.println("<tr>");
                    out.println("<td>" + (fname + " " + lname) + "</td>");
                      out.println("<td>" + d1.getAge() + "</td>");
                      out.println("<td>" + d1.getContact() + "</td>");
                      out.println("<td>" + d1.getEmail() + "</td>");
                      out.println("<td>" + d1.getGender()+ "</td>");
                       out.println("<td>" + d1.getLast_donation() + "</td>");
                    out.println("<td>" + d1.getArea() + "</td>");
                    out.println("<td>" + d1.getPin() + "</td>"); 
                    out.println("</tr>");
                }
           } 
        }
           else{
               mylist2=DD1.searchDonorByArea(state, city, area, bloodgroup);
                if (mylist2 == null) {
                out.println("record not found");
            } else {
                out.println("i am in area else part");
                
                out.println("<table border=1>");
                out.println("<br><br><font color=green size=5><U><B>Blood-Donor Information</U></B></font><br><br>");
               out.println("<tr><th>Name</th><th>Age</th><th>Contact</th><th>Email</th><th>Gender</th><th>Last Date of Donation</th><th>Area</th><th>Pincode</th></tr>");
                for (Donor d1 : mylist2) {
                    fname = d1.getFname();
                    lname = d1.getLname();
                //out.println(fname+" "+lname);
                    out.println("<tr>");
                    out.println("<td>" + (fname + " " + lname) + "</td>");
                      out.println("<td>" + d1.getAge() + "</td>");
                      out.println("<td>" + d1.getContact() + "</td>");
                      out.println("<td>" + d1.getEmail() + "</td>");
                      out.println("<td>" + d1.getGender()+ "</td>");
                       out.println("<td>" + d1.getLast_donation() + "</td>");
                    out.println("<td>" + d1.getArea() + "</td>");
                    out.println("<td>" + d1.getPin() + "</td>");
                    out.println("</tr>");
                    
                }
                 
           }
           }

 

        out.println("</table>");
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
