

<%@page import="com.truck.rent.entities.Message"%>
<%@page import="com.truck.rent.helper.ConnectionProvider"%>
<%@page import="java.nio.channels.ConnectionPendingException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!--css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    
    </head>
    
    
    
    <body>
           
        <!--nav-->
        <%@include file="normal_navbar.jsp" %>
        
        
        <!--/banner-->
    
        
   <div class="container-fluid m-0 p-0">
  <img src="images/home.jpg" height="400" >
  <div class="text-block" style="color:white"><h1 style="font-family:Optima"> Online Truck Booking Made Easy </h1></div>

   
            <div class="top-right" >
                <div class="row">
                    <div class="col">
                        <div class="card"  >
                            <div class="card-header primary-background text-white text-center">
                                <span class="	fa fa-user-circle-o fa-2x fa-spin"></span>
                                <p>Login here</p>
                             </div>
                            
                             <%
                         Message m=(Message)session.getAttribute("msg");
                         if (m != null){
                         
                         %>             
                         <div class="alert <%= m.getCssClass() %>" role="alert">
                          
                         <%= m.getContent() %>
                         </div>
                         <%
                             session.removeAttribute("msg");
                         }
                          

                          %>  

                            <div class="card-body">
                                
        <form action="LoginServlet" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  
     
            
     <div class="containe text-center">       
  <button type="submit" class="btn btn-primary">Login</button>
     </div>
            
            
    <div class="containe text-center">     
     <a href="signup_page.jsp">create new account</a>
     </div>
            
</form>
                            </div>
                            
                        </div>
                    </div>
                
                </div></div>
</div>
        
        <h3 id="heading">Best In Class Transport Solutions In India</h3>
<p style="color:#2F4F4F">Need state-of-the-art transport solutions for your personal or business needs? Let us help you by catering the best range of truck rental services in India. We work with an aim to allow you focus more on your other competencies. Truck Rental Services is well versed with the difficulties one has to face while dealing with different business operations. To add in more comfort to your routine we provide with extraordinary transport solutions.</p>

<p style="color:#2F4F4F" >Whether you want to stay ahead of times or you need world-class moving solutions, Truck Rental Services ensures the most flexible truck rental services in India. You can expect highest performance and integrity with us. We have a team of professionals who are solely committed to providing high end solutions. You can avail our services from a very user-friendly interface and enjoy the flexibility to book a truck of your choice. </p>

<h3 id="heading">Why You Need Our Truck Rental Services?</h3>

<p style="color:#2F4F4F">Connecting transport companies with an easy and effective platform, Truck Rental Services is here to offer the most reliable and fastest truck services. You can now get the vehicle of your choice as per you requirements related to varying loads and trucks.</p>
<ul style="color:#2F4F4F">
<li>We have a team of experts who will assist you in fulfilling your transporting needs.</li>
<li>We make sure that you get an exact match as per your needs.</li>
<li>We are one of the reputed truck transport businesses running in India.</li>
<li>We can help you find the best in trucks and trucking business.</li>
<li>We present you a user friendly platform where you can search for the most suitable option</li>

</ul>
<hr >
<h3 style="color:#2F4F4F">Contact Information</h3>
<a href="tel:7240822177">Call us at 7240822177</a>

<p style="color:#2F4F4F"><a href="mailto:someone@example.com">Email:agrawalbhumika@gmail.com</a></p>

<p>&copy; 2020 truckrentalservices.com<p>


        
        <!--javasript-->
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <!--javascript---->
        <script src="JS/myjs.js" type="text/javascript"></script>
          
    </body>
</html>
