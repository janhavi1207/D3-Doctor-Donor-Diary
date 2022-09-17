package myconnection;
import java.sql.*;
public class Connect 
{
       static Connection con=null;
        static
        {
            try
            {     
             Class.forName("com.mysql.cj.jdbc.Driver");
           System.out.println("Driver load");
            }
            catch(ClassNotFoundException e)
            {
                System.out.println(e);
            }   
        }
    
   public static Connection dataConnection() 
   {
           
         try
         {       
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/find","root","root");
           System.out.println("Connection success"); 
         }
         catch(Exception e)
         {
             System.out.println(e);
         }
        return con; 
   }
}
