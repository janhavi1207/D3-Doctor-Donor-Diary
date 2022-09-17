<%@include file="navigationBar1.jsp" %>
<%@page import="model.Doctor"%>
<%@page import="dao.DocDAO"%>
<%@page  session="true" %>
<script language="javascript">
       window.history().forward();
</script>
<% 
   if(session.isNew())
   response.sendRedirect("AdminLogin.jsp");
%>
<%@include  file="AdminLogin1.jsp" %>
<!DOCTYPE html>

<html>
    <head>
        <title>Delete Doctor</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <% Doctor D;%>
         <center>
             <h3>Delete Doctor by Their Doctor - Id</h3>
        <form method="post" action="DeleteDoctor1.jsp">
            <table border="1">
                
             <tr>
                 <th>Doctor - ID </th>
                 <td><input type="text" name="txtRno"></td>  
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
            doctorid=request.getParameter("txtRno");
            if (doctorid!=null)
            {
            doc_id=Integer.parseInt(doctorid);
            DocDAO dd=new DocDAO();
            D=dd.displayDoctorDetails(doc_id);
            if(D==null)
                out.println("<font color=red size=9>Record not Found </font>");
            else
            {
                session.setAttribute("doc_id",D.getDoc_id());
                session.setAttribute("First name",D.getFname());
                session.setAttribute("Last Name",D.getLname());
                session.setAttribute("State",D.getState());
                session.setAttribute("City",D.getCity());
                session.setAttribute("Speciality",D.getSpeciality());
                session.setAttribute("Degree",D.getDegree());
                session.setAttribute("Clinic/Hospital",D.getClinic_hospital());
                session.setAttribute("Area",D.getArea());
                session.setAttribute("Gender",D.getGender());
                session.setAttribute("Hospital Address",D.getHosp_add());
                session.setAttribute("Contact",D.getContact());
                response.sendRedirect("DeleteDoctor1.jsp");
            }
                      
            };
        %>
    </body>
</html>
