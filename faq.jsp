<%-- 
    Document   : faq.jsp
    Created on : 9 Aug, 2020, 2:45:40 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Faq Page</title>
         <!--css-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
     <%@include file="normal_navbar.jsp" %>

     <div id="accordion">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          How do I request a booking?
        </button>
      </h5>
    </div>
      
      

    <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
      <div class="card-body">
    Our booking system is a simplified process. You can place a booking request online on our website or you can call our customer care number 7240822178. Our team after verification finds the truck for you.      </div>
    </div>
  </div>
         
         
  <div class="card">
    <div class="card-header" id="headingTwo">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          How do I pay for my rental?
        </button>
      </h5>
    </div>
    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
      <div class="card-body">
      You have to pay in cash ..
      </div>
    </div>
  </div>
         
         
  <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
What are the additional charges or waiting charges ?
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
      <div class="card-body">
If the truck has reached client location and there is delay in loading per day waiting charges range from 1000 to 5000 depending on vehicle type , if the vehicle is not loaded and returned empty customer is liable to pay driver fuel charges and waiting charges.      </div>
    </div>
  </div>
         
         <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
Do you provide Parcel, bike, courier or car transport service?        </button>
      </h5>
    </div>
    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordion">
      <div class="card-body">
We only provide full truck transport services, we do not provide services for courier, parcels or car transportation.    </div>
  </div>
</div>
         
         <br><br>
         <h3>If you do not find the answer to your question, then please contact our customer service team who will be happy to assist you.</h3>
         
         
         <hr >
<h3 style="color:#2F4F4F">Contact Information</h3>
<a href="tel:7240822177">Call us at 7240822177</a>

<p style="color:#2F4F4F"><a href="mailto:someone@example.com">Email:agrawalbhumika@gmail.com</a></p>

<p>&copy; 2020 truckrentalservices.com<p>





 <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
     <script src="js/myjs.js" type="text/javascript"></script>
     
     
     
    </body>
</html>
