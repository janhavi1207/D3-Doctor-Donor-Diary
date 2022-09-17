<%@include file="navigationBar1.jsp" %><%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Doctor" %>
<%@page import="dao.DocDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Doctor Details</title>
         <%! 
        String sname,lname;
        %>
    </head>
    <body>
        <form method="post" action="UpdateDoctor1.jsp">  
      <center>
          <h3>Update Doctor Details</h3>
       <table border="1">
           <tr>
           <th>Doctor ID</th>
           <td><input type="text" name="txtid" value=<%=session.getAttribute("doc_id").toString()%> ></td> 
          </tr>
          <tr>
           <th>First Name</th>
            <% 
              sname=session.getAttribute("fname").toString();
            %>           
          <td><input type="text" name="txtFName" value=<%=sname%>></td> 
          </tr>
          <tr>
           <th>Last Name</th>
            <% 
              sname=session.getAttribute("lname").toString();
            %>           
          <td><input type="text" name="txtLName" value=<%=lname%>></td> 
          </tr>
          <tr>
           <th>Pincode</th>
          <td><input type="text" name="txtPin" value=<%=session.getAttribute("pincode").toString()%>></td> 
          </tr>
          <tr>
           <th>Specialty</th>
          <td><input type="text" name="txtSpecialty" value=<%=session.getAttribute("speciality").toString()%>></td> 
          </tr>
          <tr>
           <th>Experience</th>
          <td><input type="text" name="txtExperience" value=<%=session.getAttribute("experience").toString()%>></td> 
          </tr>
          <tr>
           <th>Degree</th>
          <td><input type="text" name="txtDegree" value=<%=session.getAttribute("degree").toString()%>></td> 
          </tr>
          <tr>
           <th>Clinic or Hospital</th>
          <td><input type="text" name="txtCOH" value=<%=session.getAttribute("clinic_hospital").toString()%>></td> 
          </tr>
          <tr>
           <th>Contact</th>
          <td><input type="text" name="txtContact" value=<%=session.getAttribute("contact").toString()%>></td> 
          </tr>
          <tr>
           <th>Area</th>
          <td><input type="text" name="txtArea" value=<%=session.getAttribute("area").toString()%>></td> 
          </tr>
          <tr>
           <th>Hospital Address</th>
          <td><input type="text" name="txtHospAdd" value=<%=session.getAttribute("hosp_add").toString()%>></td> 
          </tr>
          <tr>
           <th>State</th>
          <td><input type="text" name="txtState" value=<%=session.getAttribute("state").toString()%>></td> 
          </tr>
          <tr>
           <th>City</th>
          <td><input type="text" name="txtCity" value=<%=session.getAttribute("city").toString()%>></td> 
          </tr>
          <tr>
           <th>Gender</th>
          <td><input type="text" name="txtGender" value=<%=session.getAttribute("gender").toString()%>></td> 
          </tr>
        <tr>
            <td></td> 
          <td>
              <input type="submit" value="Submit">
              <input type="reset" value="Reset">
          </td> 
          </tr>  
       </table>
      </center>
      </form>   
     <% 
     String state,city,fname,lname,speciality,degree,clinic_hospital,area,gender,hosp_add,dno=null;
    int pincode,experience,doc_id;
    long contact ;
          
       try
     {  
        dno=request.getParameter("txtid");
        if(dno!=null)
       { 
          doc_id=Integer.parseInt(dno);
         fname=request.getParameter("txtFName");
         lname=request.getParameter("txtLName");
         pincode=Integer.parseInt(request.getParameter("txtPincode"));
         speciality=request.getParameter("txtSpecialty");
         degree=request.getParameter("txtDegree");
         clinic_hospital =request.getParameter(" txtCOH");
         area =request.getParameter("txtArea");
         gender=request.getParameter("txtGender");
         state=request.getParameter("txtState");
         hosp_add=request.getParameter("txtHospAdd");
         city=request.getParameter("txtCity");
         experience=Integer.parseInt(request.getParameter("txtExperience"));
         contact=Integer.parseInt(request.getParameter("txtContact"));
         Doctor S=new Doctor();
         S.setArea(area);
         S.setCity(city);
         S.setClinic_hospital(clinic_hospital);
         S.setContact(contact);
         S.setDegree(degree);
         S.setDoc_id(doc_id);
         S.setExperience(experience);
         S.setFname(fname);
         S.setGender(gender);
         S.setHosp_add(hosp_add);
         S.setLname(lname);
         S.setPincode(pincode);
         S.setSpeciality(speciality);
         S.setState(state);
        DocDAO sd=new DocDAO();
         if(sd.updateDoctorDetails(S))
             out.println("Record Updated.......");
       }   
       }
      catch(Exception e)
      {
       out.println(e);
      }
     %>   
        
    </body>
</html>
