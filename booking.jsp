<%-- 
    Document   : mybooking
    Created on : 10 Aug, 2020, 11:46:38 PM
    Author     : Lenovo
--%>

<%@page import="com.truck.rent.entities.bookuser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
                 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
       <nav class="navbar navbar-expand-lg navbar-dark primary-background">
    <a class="navbar-brand" href="index.jsp"><span class="fa fa-bus"></span>Truck Rent</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavDropdown">
    <ul class="navbar-nav">
      
     <li class="nav-item">
        <a class="nav-link" href="profile.jsp">BACK</a>
      </li>
    </ul>
      
    <div class="navbar-collapse collapse w-10 order-3 dual-collapse2">
        <ul class="navbar-nav ml-auto">
          
      
            <li class="nav-item">
               
                <a class="nav-link" href="LogoutServlet"> <span class="fa fa-user-plus"></span>&nbsp;Logout</a>
            </li>
           
        </ul>
    </div>
  </div>
</nav>
        <form action="BookingServlet" method="post">
          <div class="container-fluid m-0 p-0">
           
          
         <div class="center" >
                <div class="row">
                    <div class="col">
                        <div class="card"  >
                            <div class="card-header text-center">
                               
                                <h3>Your Booking</h3>
                             </div>
                            <div>  <%= buser.getName()%></div>
                            
                        </div>
                    </div></div></div>
             
        
          </div>
        </form>
        
   
        
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <!--javascript---->
        <script src="JS/myjs.js" type="text/javascript"></script>
        
        
    </body>
</html>
