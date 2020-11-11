
package com.truck.rent.helper;
import java.sql.*;

public class ConnectionProvider {
    private static Connection con;
    public  static Connection getConnection()
    {
       try{ 
         if(con==null)
         {
               //load the driver class
           Class.forName("com.mysql.cj.jdbc.Driver");
           //create connection
           
           String url="jdbc:mysql://localhost:3306/truckrent";
           String userName="root";
           String password="root";
           con=DriverManager.getConnection(url,userName,password);
           
         }
           
       }catch(Exception e)
       {
           e.printStackTrace();
       }
       
        return con;
    
    
    }
    
}
