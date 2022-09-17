<%-- 
    Document   : DonorLogin
    Created on : 25 Jun, 2022, 10:10:56 AM
    Author     : nehaj
--%>
<%@include file="navigationBar.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.DonorDAO"%>
<%@page  session="true"%>

<!DOCTYPE html>
<%! 
    String msg="";
%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;
}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: white;
  color: black;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid black;
}

/* Set a style for the submit button */
.btn {
  background-color: black;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 0.6;
}
h1{
    margin-bottom: 160px;
}
</style>
</head>
<body>

    <form action="DonorLogin.jsp" method="post" style="max-width:500px;margin:auto">
    <!--<h1 style="color:black"><strong> <center>Donor Login Form</center></strong></h1>-->
    <br><br><br><br><br><br>
  <div class="input-container">
    <i style="color:white; background-color: black;"class="fa fa-user icon"></i>
    <input class="input-field" type="text" placeholder="Username" name="userid">
  </div>

  
  
  <div class="input-container">
    <i style="color:white; background-color: black;" class="fa fa-key icon"></i>
    <input class="input-field" type="password" placeholder="Password" name="pass">
  </div>

  <button type="submit" class="btn">Login</button>
<%
     String user=null,pass=null;
     user=request.getParameter("userid");
     pass=request.getParameter("pass");
     if(user!=null && pass!=null)
     {
         DonorDAO d1=new DonorDAO();
         if(d1.checkLogin(user, pass))
         {
            
             session.setAttribute("username", user);
             session.setAttribute("password", pass);
             response.sendRedirect("DonorLogin1.jsp");
         }     
         else
             msg="Invalid user id or password";
     }

%>  
<font color="red" size="5"> 
                                    <% 
                                        out.println(msg);
                                    %>
                                    </font> 
</form>
</body>
</html>

