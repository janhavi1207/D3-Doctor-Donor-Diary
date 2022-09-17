<%@page import="model.Doctor"%>
<%@page import="dao.DocDAO"%>
<%@page  session="true" %>
<script language="javascript">
       window.history().forward();
</script>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Doctor</title>
    </head>
     <body>
     
        <form method="post" action="DeleteDoctor1.jsp">  
      <center>
          <h3>Delete Doctor Details Section</h3>
       <table border="1">
           <tr>
           <th>Doctor Id</th>
           <td><input type="text" name="txtRno" value=<%=session.getAttribute("doc_id").toString()%> ></td> 
          </tr>
                  <input type="submit" value="Submit">
                  <input type="reset" value="Reset">
              </td>   
             </tr>
             
             </table>    
       </table>
      </center>
      </form>  
           <%
        int doc_id;
        String dname=null;
        try
        {
            dname=request.getParameter("txtRno");
            if(dname!=null)
            {
            doc_id=Integer.parseInt(dname);
            DocDAO dd=new DocDAO();
            if(dd.deleteDoctor(doc_id))
            out.println("Record Deleted");
            }
        
        }
        catch(Exception e)
        {
        out.println(e);
        }
        
        %>       
    </body>
</html>
