<%-- 
    Document   : ContactForm
    Created on : 17 Jul, 2022, 11:34:58 AM
    Author     : nehaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.DonorDAO"%>
<%@page import="model.Donor"%>
<%@page import="model.Contact"%>
<%@include file="navigationBar.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact us</title>
        <script language="javascript">
            function ValidateForm() {
            var fname1,lname1,mob,comments;
            comments=document.getElementById("Comments").value;
            fname1=document.getElementById("FName").value;
            lname1=document.getElementById("LName").value;
            mob=document.getElementById("PhoneNumber").value;
            if(fname1!="")
            {
              
               var valid="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ";   
               for(i=0;i<fname1.length;i++)
               {
                   n=fname1.charAt(i);
                   if(valid.indexOf(n)==-1)
                   {
                      alert("Invalid data only character allowed");
                      document.getElementById("FName").focus();
                      document.getElementById("FName").select(); 
                      return false;
                   }    
               }   
              
               
            }
            if(lname1!="")
            {
              
               var valid="abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ ";   
               for(i=0;i<lname1.length;i++)
               {
                   n=lname1.charAt(i);
                   if(valid.indexOf(n)==-1)
                   {
                      alert("Invalid data only character allowed");
                      document.getElementById("LName").focus();
                      document.getElementById("LName").select(); 
                      return false;
                   }    
               }   
              
               
            }
            
            if(mob!="")  
            {
                var valid="1234567890";   
               for(i=0;i<mob.length;i++)
               {
                   n=mob.charAt(i);
                   if(valid.indexOf(n)==-1)
                   {
                      alert("Invalid data only number allowed");
                      document.getElementById("PhoneNumber").focus();
                      document.getElementById("PhoneNumber").select(); 
                      return false;
                   }    
               }   
            }
            if(mob!="")  
            {
                var valid="987";   
                   n=mob.charAt(0);
                   if(valid.indexOf(n)==-1)
                   {
                      //alert("Invalid first digit of contact"); 
                      alert("Invalid contact");
                      document.getElementById("PhoneNumber").focus();
                      document.getElementById("PhoneNumber").select(); 
                      return false;
                   }    
               }   
            if(mob!="")  
            {
                if(mob.length!=10)
                {
                    alert("mobile no should be of 10 digits");
                    document.getElementById("PhoneNumber").focus();
                     document.getElementById("PhoneNumber").select();
                    return false;
                }
            }
            if (comments.value == "") 
            { alert('Please enter comments or questions.'); 
                 document.getElementById("Comments").focus();
                return false; }
            return true; 
        }
        </script>
    </head>
    <body>
        <br> <h3 style="color: whitesmoke; text-align: center; line-height: 50px;"><u> <strong> Contact Us </strong></u></h1>
    <center>
        <form action="ContactForm.jsp" id="ContactUs" method="post" >

            <table style="width:100%;max-width:550px;border:0; color:whitesmoke" cellpadding="8" cellspacing="0">
                <tr> <td>
                        <label for="FName">First Name*:</label>
                    </td> <td>
                        <input name="FName" id="FName" type="text" maxlength="60" style="width:100%;max-width:250px;" required />
                    </td> </tr> <tr> <td>

                        <label for="LName">Last Name*:</label>
                    </td> <td>
                        <input name="LName" id="LName" type="text" maxlength="60" style="width:100%;max-width:250px;" required />
                    </td> </tr> 
<!--                <tr> <td>
                        <label for="PhoneNumber">Phone number*:</label>
                    </td> <td>
                        <input name="PhoneNumber" id="PhoneNumber" type="tel" required maxlength="10" style="width:100%;max-width:250px;" />
                    </td> </tr>-->
                <tr> <td>
                        <label for="EmailAddress">Email address*:</label>
                    </td> <td>
                        <input name="EmailAddress" id="EmailAddress" type="email" maxlength="90" style="width:100%;max-width:250px;" required />
                    </td> </tr> <tr> <td>
                        <label for="Comments">Comments*:</label>
                    </td> <td>
                        <textarea name="Comments" id="Comments" rows="7" cols="40"  required style="width:100%;max-width:350px;"></textarea>
                    </td> </tr> <tr> <td>
                        * - required fields
                    </td> <td>
                        <input name="submit" type="submit" value="Submit" onclick="return ValidateForm();">
                        <button name=back onclick="window.open('index.jsp')">Back to Home page</button>

                    </td> </tr>
            </table>
        </form>
        <%
     String fname=null,lname=null,email=null,comments=null;
     long contact=0;
     fname=request.getParameter("FName");
     lname=request.getParameter("LName");
     email=request.getParameter("EmailAddress");
     comments=request.getParameter("Comments");
    //contact=Long.parseLong(request.getParameter("PhoneNumber"));
     if(fname!=null && lname!=null && email!=null && comments!=null)
     {
        Contact C=new Contact();
        C.setFname(fname);
        C.setLname(lname);
        C.setEmail(email);
        C.setComments(comments);
        //C.setContact(contact);
        DonorDAO dd1=new DonorDAO();
        if(dd1.contactUs(C)){
            out.println("Msg saved,We will contact u asap");
        }
        else{
            out.println("Some error occured....");
            out.println("Sorry for inconvinence.Please try again later");
        }
     }
    %>
    </center>   
</body>
</html>
