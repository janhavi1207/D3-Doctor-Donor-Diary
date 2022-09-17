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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Donor;

/**
 *
 * @author nehaj
 */
public class UpdateDonorInfo extends HttpServlet {

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
            out.println("<title>Servlet UpdateDonorInfo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateDonorInfo at " + request.getContextPath() + "</h1>");
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
        
        HttpSession session=request.getSession();;
        int donor_id=Integer.parseInt(session.getAttribute("donor_id").toString());
        
        String email,last_donation,state,city,area; int pincode,age; long contact;
        email=request.getParameter("email");
        last_donation=request.getParameter("donationDate");
        contact=Long.parseLong(request.getParameter("contact"));
        age=Integer.parseInt(request.getParameter("age"));
        state=request.getParameter("state"); 
        city=request.getParameter("city");
        area=request.getParameter("area");
        pincode=Integer.parseInt(request.getParameter("pin"));
        
        Donor d=new Donor();
        d.setDonor_id(donor_id);
        d.setEmail(email);
        d.setLast_donation(last_donation);
        d.setContact(contact);
        d.setAge(age);
        d.setState(state);
        d.setCity(city);
        d.setArea(area);
        d.setPin(pincode);
        
        DonorDAO dd1=new DonorDAO();
        ArrayList<Donor> mylist3= new ArrayList<Donor>();
        mylist3.add(d);
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet UpdateDonorInfo</title>");            
            out.println("</head>");
            out.println("<body style=\"background-color: lightgray\">");
//            out.println(""+state+" "+city+" "+area+" "+pincode);
            if(dd1.updateDonorDetails(mylist3))
                out.println("<center><h1> Record Updated.....</h1></center>");
          else
              out.println("<center><h1> Record Updation failed.....</h1></center>");
            
            out.println("</body>");
            out.println("</html>");
            mylist3=null;
        }
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
