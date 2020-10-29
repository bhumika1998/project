<%-- 
    Document   : profile
    Created on : 9 Aug, 2020, 1:45:39 PM
    Author     : Lenovo
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.truck.rent.helper.ConnectionProvider"%>
<%@page import="com.truck.rent.entities.Message"%>
<%@page import="com.truck.rent.entities.User"%>
<%@page errorPage="error_page.jsp"%>

<%
    
  User user=(User)session.getAttribute("currentUser");
if(user==null){
response.sendRedirect("index.jsp");
}

 %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>profile Page</title>
        
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">



    </head>
    <body>
        
        <!--nav bar-->

   <nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <a class="navbar-brand" href="index.jsp"><span class="fa fa-bus"></span>Truck Rent</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link" href="#">About Us</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.jsp"><span class="fa fa-mobile-phone"></span> Contact</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="faq.jsp">FAQ</a>
      </li>
      
    
    </ul>
      
    <div class="navbar-collapse collapse w-10 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
               <li class="nav-item">
                   <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"><span class="fa fa-user-circle ">&nbsp;</span><%= user.getName()%></a>
      </li>
      
            <li class="nav-item">
               
                <a class="nav-link" href="LogoutServlet"> <span class="fa fa-user-plus"></span>&nbsp;Logout</a>
            </li>
           
        </ul>
    </div>
  </div>
</nav>
      
        
      <div class="container-fluid m-0 p-0">
          <img src="images/home.jpg" height="490" >
           <div class="top-right" >
                <div class="row">
                    <div class="col">
                        <div class="card"  >
                            <div class="card-header primary-background text-center">
                                <a href="mybooking.jsp">     <button type="submit" class="button" style="background-color:green" >Your Booking</button></a>

                            </div>
                            <div class="card-header primary-background text-center">
                <a class="nav-link" href="booking.jsp" ><button style="position: relative; background-color:lightblue" type="submit" class="button"  >Book Your Truck</button>
                </a>
                            </div>
                        
                        </div></div></div></div>
      </div>
          
        
    
    
       

       
      
     <!--booking modal-->
      
    
      
  

<!--profile modal-->
   

<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white text-center ">
        <h5 class="modal-title " id="exampleModalLabel" >My Profile  </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          <div class="container text-center">
              
              <img src="pics/<%= user.getProfile() %>" class="img-fluid" style="border-radius: 50%;max-width: 150px">
              <br>
                <h5 class="modal-title mt-3" id="exampleModalLabel"><%= user.getName().toUpperCase()%></h5>
                                <h5 class="modal-title mt-3" id="exampleModalLabel"><%= user.getEmail()%></h5>

            <!--details-->
                     <div id="profile-details">
                            <table class="table">

                    <tbody>
                      
                      <tr>
                          <th scope="row">Email:</th>
                        <td><%= user.getEmail()%></td>


                      </tr>
                      <tr>
                          <th scope="row">Mobile:</th>
                        <td><%= user.getMobile()%></td>


                      </tr>
  
                      <tr>
                          <th scope="row"> Password:</th>
                        <td><%= user.getPassword()%></td>


                      </tr>

                       <tr>
                        <th scope="row">Registered on:</th>
                        <td><%= user.getDateTime().toString()%></td>

                      </tr>
                    </tbody>
                  </table>
                        </div>
                        
                        <!--profile edit-->
                        <div id="profile-edit" style="display:none">  
                         
                            
                            <form action="EditServlet" method="post" enctype="multipart/form-data">
                            <table class="table">
                               
                                    
             
                                 <tr>
                                    
                                    <td>Name:</td>
                                    <td><input type="text" class="form-control" name="user_name" value="<%= user.getName()%>"></td>
                                    
                                </tr>
                                
                               
                                   <tr>
                                    
                                    <td>Mobile:</td>
                                    <td><input type="tel" class="form-control" name="user_mobile" value="<%= user.getMobile()%>"></td>
                                    
                                </tr>
                                     <tr>
                                    
                                    <td>Password:</td>
                                    <td><input type="password" class="form-control" name="user_password" value="<%= user.getPassword()%>"></td>
                                    
                                </tr>


                                
                                  <tr>
                                    <td>New Profile:</td>
                                    <td>
                                        <input type="file" name="image" class="form-control">
                                     </td>
                                </tr>
                                
                                
                                
                            </table>
                        <div class="container">
                            <button type="submit" class="btn-outline-primary">Save</button>
                                      
                        </div>
                                     
                                      
                        </form>
                        
                        </div>

                        
          
          </div> 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="edit-profile-button" type="button" class="btn btn-primary">Edit</button>
      </div>
    </div>
  </div>
</div>


<!--end of profile modal-->




<!--javascript-->

    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
     <script src="js/myjs.js" type="text/javascript"></script>
   
        
        
        
   
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     
     <script>
         
         $(document).ready(function(){
             
             let editStatus =false;
             
             
            $('#edit-profile-button').click(function(){
            
            if(editStatus==false){
                
                $("#profile-details").hide()
                $("#profile-edit").show()
                $(this).text("Back")
                editStatus=true;
            }else{
                
                
                 $("#profile-details").show()
                $("#profile-edit").hide()
                editStatus=false;
            }
                
            
            
            
            });
             
         });
         
     </script>
     
     <hr >
<h3 style="color:#2F4F4F">Contact Information</h3>
<a href="tel:7240822177">Call us at 7240822177</a>

<p style="color:#2F4F4F"><a href="mailto:someone@example.com">Email:agrawalbhumika@gmail.com</a></p>

<p>&copy; 2020 truckrentalservices.com<p>

   
        
        
        
        
    </body>
</html>
