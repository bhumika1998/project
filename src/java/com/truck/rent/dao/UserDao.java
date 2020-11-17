package com.truck.rent.dao;

import com.truck.rent.entities.User;
import com.truck.rent.entities.bookuser;
import java.sql.*;

public class UserDao {
    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }




public boolean saveUser(User user){
    boolean f=false;
        try{
            
           String query="insert into user(name,email,mobile,password) values(?,?,?,?)";   
           PreparedStatement pstmt=this.con.prepareStatement(query);
           
           pstmt.setString(1, user.getName());
           pstmt.setString(2, user.getEmail());
           pstmt.setString(3,user.getMobile());
           pstmt.setString(4, user.getPassword());
          
           pstmt.executeUpdate();
           f=true;
           
        
        }catch(Exception e)
        {
          e.printStackTrace();
        }
        return f;
       
    }
    




public User getUserByEmailAndPassword(String email,String password)
    {
      User user=null;
        try {
            String query="select * from user where email=? and password=?";
            
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            
           ResultSet set= pstmt.executeQuery();
           if(set.next()){
           
               
               user=new User();
               //data from db
               String name=set.getString("name");
               //set to user object
               user.setName(name);
               user.setId(set.getInt("id"));
               user.setEmail(set.getString("email"));
               user.setMobile(set.getString("mobile"));
               user.setPassword(set.getString("password"));
               user.setDateTime(set.getTimestamp("rdate"));
               user.setProfile(set.getString("profile"));              
              
           }
            

            
        } catch (Exception e) {
            e.printStackTrace();
        }
      return user;
    }



     public boolean updateUser(User user){
        boolean f= false;
       try{
            
            String query="update user set name=?  email=? , mobile=? , password=?, profile=? where id=? ";
           PreparedStatement pstmt=con.prepareStatement(query);
           pstmt.setString(1,user.getName());
           pstmt.setString(2, user.getEmail());
           pstmt.setString(3, user.getMobile());
           pstmt.setString(4, user.getPassword());
           
           pstmt.setString(5,user.getProfile());
       pstmt.setInt(6,user.getId());
           pstmt.executeUpdate();
           f=true;           
            }catch(Exception e){
       
       e.printStackTrace();}
        return f;
    
    }
     
  public boolean bookUser(bookuser buser){
    boolean f=false;
        try{
            
           String query="insert into booking(email,name,mobile,source,destination,trucktype) values(?,?,?,?,?,?)";   
           PreparedStatement pstmt=this.con.prepareStatement(query);
           
           
           pstmt.setString(1, buser.getEmail());
           pstmt.setString(2, buser.getName());
           pstmt.setString(3,buser.getMobile()); 
          pstmt.setString(4,buser.getSource());
           pstmt.setString(5,buser.getDestination());
           pstmt.setString(6,buser.getTrucktype());
           
          
           pstmt.executeUpdate();
           f=true;
           
        
        }catch(Exception e)
        {
          e.printStackTrace();
        }
        return f;
       
    }
        
     
public bookuser getUser(String email)
{
  bookuser buser=null;
        try {
            String query="select * from booking where email=? ";
            
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1, email);

            ResultSet set= pstmt.executeQuery();
           if(set.next()){
           
               
               buser=new bookuser();
               //data from db
               String name=set.getString("name");
               //set to user object
               buser.setName(name);
              
               buser.setEmail(set.getString("email"));
               buser.setMobile(set.getString("mobile"));
               buser.setSource(set.getString("source"));
               buser.setDestination(set.getString("destination"));
               buser.setTrucktype(set.getString("tt"));
               
               buser.setDateTime(set.getTimestamp("bdate"));
                       
              
           }
            

            
        } catch (Exception e) {
            e.printStackTrace();
        }
      return buser;
    
    
}

}