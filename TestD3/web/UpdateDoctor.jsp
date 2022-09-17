<%@include file="navigationBar1.jsp" %><%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Doctor" %>
<%@page import="dao.DocDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script language="javascript">
    window.history().forward();
</script>
<%
    if (session.isNew()) {
        response.sendRedirect("AdminLogin.jsp");
    }
%>
<%!
    String state,city,fname,lname,speciality,degree,clinic_hospital,area,gender,hosp_add;
    int pincode,experience,doc_id;
    long contact ;
    Doctor D;
%>
<!DOCTYPE html>
<html>
    <head>
     <style>
            form#form3 {
                line-height: 35px;
                width: 50%;
                margin: auto;
            }
            table{
                line-height: 35px; font-size: 20px;
            }
            body{
                background-color: lightgray;
            }
            input{
                padding: 4px 19px;
                border: 1px solid black;
            }
            input#btn:hover{
                opacity: 0.5;
            }
        </style>
    </head>
   <body>
      
         <center>
             <h3>Update By Doctor ID</h3>
        <form method="post" action="UpdateDoctor.jsp">
            <table border="1">
                
             <tr>
                 <th>Doctor ID</th>
                 <td><input type="text" name="txtid"></td>  
             </tr>
             <tr>
                 <td></td>
              <td>
                  <input type="submit" value="Submit">
                  <input type="reset" value="Reset">
              </td>   
             </tr>
             
             </table>   
            
            
        </form>
        
<%
      int doc_id;
      String doctorid=null;
      doctorid=request.getParameter("txtid");
     if(doctorid!=null)
     {
        doc_id=Integer.parseInt(doctorid);
         DocDAO sd=new DocDAO();
         D=sd.displayDoctorDetails(doc_id);
         if(D==null)
             out.println("<font color=red size=9>Record Not Found</font>");
         else
         {
            session.setAttribute("doc_id", D.getDoc_id());
            session.setAttribute("pincode",D.getPincode());
            session.setAttribute("fname",D.getFname());
            session.setAttribute("lname",D.getLname());
            session.setAttribute("speciality",D.getSpeciality());
            session.setAttribute("experience",D.getExperience());
            session.setAttribute("degree",D.getDegree());
            session.setAttribute("clinic_hospital",D.getClinic_hospital());
            session.setAttribute("Contact",D.getContact());
            session.setAttribute("Area",D.getArea());
            session.setAttribute("hosp_add",D.getHosp_add());
            session.setAttribute("state",D.getState());
            session.setAttribute("city",D.getCity());
            session.setAttribute("gender",D.getGender());
            response.sendRedirect("UpdateDoctor1.jsp");
         }
          
     }
      
     %>        
        
</center>
    </body>
</html>