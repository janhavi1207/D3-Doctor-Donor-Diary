<%-- 
    Document   : AdminLogin1
    Created on : 13 Jul, 2022, 8:33:51 AM
    Author     : nehaj
--%>

<%@include file="navigationBar1.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script language="javascript">
       window.history().forward();
</script>
<% 
   if(session.isNew())
       response.sendRedirect("AdminLogin.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        
        .image-container {
            margin-top: 70px;
        text-align: center;
        width: 100%;
       margin-bottom:70px;
      }
      .links-container {
        margin-top: 50px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 20px;
      }
      .links-container a{
        color:white;
        width: 350px;
    padding: 3px 2px;
    border:2px solid black; border-radius: 5px;
    background-color: black;
    text-decoration: none;
    font-size: 25px;
      }
      .links-container a:hover{
     opacity:0.8;
      }
    </style>
   <body>
        <!-- Image and name container. Change to your picture here. -->
        <!--<div> <a href="#" style="text-align:right">Logout</a> </div>-->
      <div class="image-container">
      <img src="img/admin icon.png" alt="Admin" max-width="100%" height="150px" style="border-radius: 50%;">
      
       
  
      <!-- Links section 1. Replace the # inside of the "" with your links. -->
      <div class="links-container">
       <a href="AddDoctor.jsp"   target="_blank">Add Doctor Details</a>
        <a href="DeleteDoctor.jsp"  target="_blank">Delete Doctor Record</a>
        <a href="UpdateDoctor.jsp"  target="_blank">Update Doctor Record</a>
      </div> 
      <%
          String user1,pass1;
          session=request.getSession();
          user1=session.getAttribute("username").toString();
          pass1=session.getAttribute("password").toString();
//          out.println("User Name: " + user1);
//          out.println("Password: " + pass1);
out.println("<form method=post action=AddDoctor.jsp>");
out.println("<form method=post action=DeleteDoctor.jsp>");
out.println("<form method=post action=UpdateDoctor.jsp>");
          %>
    </body>
</html>