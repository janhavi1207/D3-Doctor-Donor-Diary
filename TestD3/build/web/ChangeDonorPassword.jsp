<%-- 
    Document   : ChangeDonorPassword
    Created on : 28 Jun, 2022, 6:33:41 PM
    Author     : nehaj
--%>
<%@include file="navigationBar1.jsp" %>
<%@page import="model.Donor" %>
<%@page import="dao.DonorDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! 
String msg="",msg1="";
        String curr_pass=null,new_pass=null; int donorid;
    %>
<script language="javascript">
       window.history().forward();
</script>
<% 
   if(session.isNew())
       response.sendRedirect("DonorLogin.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reset page</title>
        <style>
            body{
                box-sizing: border-box;
            }
            input.btn{
                border:1px solid black;
                padding:4px 14px;
                margin-top: 10px;
                font-size: 18px;
            }
            input{
                padding: 4px 19px;
                border: 1px solid black;
            }
             table{
                line-height: 35px; font-size: 24px;
            }
             input.btn:hover{
                opacity: 0.5;
            }
            </style>
            <script lang="javascript">
                function validate(){
                    var newpass,renewpass;
                    newpass=document.getElementById("newpass").value;
                    renewpass=document.getElementById("renewpass").value;
                    
                    if(!(newpass.equals(renewpass))){
                        alert("New Password and Re-enter Password does not match");
                        return false;
                    }
                    return true;
                }
            </script>
    </head>
    <body>
        <br><h2 style="text-align: center; line-height:50px;margin-bottom: 100px; color: whitesmoke ">Change Password</h2>
        <%
                    String user, pass;
                    session = request.getSession();
                    user = session.getAttribute("username").toString();
                    pass = session.getAttribute("password").toString();
                    //out.println(pass);
                    
                    %>
        
        <form method=post action="ChangeDonorPassword.jsp" style="max-width:500px;margin:auto;">
                <center>
                <table> 
                    <tbody style="color:whitesmoke">
<!--                        <tr>
                            <th>Username:</th>
                            <td><%=user%></td>
                        </tr>-->
                        <tr> 
                            <th>Current Password:</th>
                            <td><input type="password" name="curr_pass" id="curr_pass" required></td>
                        </tr>
                        <tr>
                            <th>New Password:</th>
                            <td><input type="password" name="newpass" id="newpass" required></td>
                        </tr>
                        <tr>
                            <th>Re-enter New Password:</th>
                            <td><input type="password" name="renewpass" id="renewpass" required></td>
                        </tr>
                </table>
                        <br>
                        <input type="submit" class="btn" value="Reset Password" onclick="return validate();">
                        <br>
                        <font color="red" size="5"> 
                                    <% 
                                        out.println(msg1);
                                    %>
                                    </font> 
                                    <font color="black" size="5"> <strong>
                                    <% 
                                    out.println(msg);
                                    %>
                                    </strong> </font>
                </center>
            </form>
        <% 
            curr_pass=request.getParameter("curr_pass");
            new_pass=request.getParameter("newpass");
            if(curr_pass!=null && new_pass!=null)
            {
                if(curr_pass.equals(pass)){
                    DonorDAO dd1=new DonorDAO();
                   if( dd1.changePassword(user, new_pass))
                     msg="Password Changed";
                   else
                       msg1="Operation Failed";
                }
                else
                    msg1="Current Password entered is not matched";
            }

                                %>    
        
    </body>
</html>
