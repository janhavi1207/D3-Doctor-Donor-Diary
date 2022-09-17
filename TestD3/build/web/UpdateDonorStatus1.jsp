<%-- 
    Document   : UpdateDonorStatus
    Created on : 25 Jun, 2022, 12:31:57 PM
    Author     : nehaj
--%>
<%@include file="navigationBar1.jsp" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Donor" %>
<%@page import="dao.DonorDAO" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String fname, lname, bloodgroup, avail, avail1;
    int donorid;
%>
<script language="javascript">
    window.history().forward();
</script>
<%
    if (session.isNew()) {
        response.sendRedirect("DonorLogin.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Status</title>
        <style>
            input.btn{
                border:1px solid black;
                padding:4px 14px;
                margin-top: 10px;
            }
            input.btn:hover{
                background-color: lightgray;
            }
        </style>
    </head>
    <body>

        <%
            String user, pass;
            session = request.getSession();
            user = session.getAttribute("username").toString();
            pass = session.getAttribute("password").toString();
//          out.println("User Name: " + user);
//         out.println("Password: " + pass);

            Donor d1 = new Donor();
            DonorDAO dd1 = new DonorDAO();
            List<Donor> mylist = new ArrayList<Donor>();
            mylist = dd1.searchStatus(user, pass);
            if (mylist != null) {
                for (Donor d2 : mylist) {
                    donorid = d2.getDonor_id();
                    fname = d2.getFname();
                    lname = d2.getLname();
                    bloodgroup = d2.getBloodgrp();
                    avail = d2.getAvailablity();
//     out.print(avail);
                    if (avail.equals("Y")) {
                        avail1 = "available";
                    } else {
                        avail1 = "unavailable";
                    }
                }
                session.setAttribute("donor_id", donorid);
                out.println("<form method=post action=UpdateDonorStatus>");
            }
        %> 
        <form method=post action="UpdateDonorStatus">
            <center> <br>
                <h2 style="color:whitesmoke">Update Donation Status</h2> <br><br><br>
                <table border="5" style="border-block-color: whitesmoke; border-inline-color: whitesmoke;">
                    <tbody style="color:whitesmoke">
                        <tr><th>Donor ID</th><th>Name</th><th>Blood Group</th><th>Availablity Status</th></tr>
                        <tr> <td><%=donorid%></td>
                            <td><%=fname + " " + lname%></td>
                            <td><%=bloodgroup%></td>
        <!--                    <td><input type=text name=status value=<%=avail%>></td>-->
                            <td>
                                <select name="status"><option value="<%=avail%>"><%=avail1%></option>
                                    <option value="Y">available</option>
                                    <option value="N">unavailable</option>
                                </select>
                            </td>
                        </tr>
                    </tbody>
                </table>

                <br>  <input type="submit" class="btn" value="Update">
            </center>
        </form>


    </body>
</html>
