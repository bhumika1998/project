
<%-- 
    Document   : signup_page
    Created on : 7 Aug, 2020, 4:17:06 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
        <%@include file="normal_navbar.jsp" %>
        
        <main>
            <div class="container">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                         <div class="card-header primary-background text-white text-center">
                                <span class="	fa fa-user-circle-o fa-2x fa-spin"></span>
                                <p>Sign Up</p>
                             </div>
                        <div class="card-body">
                            <form id="reg-form" action="RegisterServlet" method="POST" onsubmit="return Validation()">
                                
                         <div class="form-group">
                          <label for="user_name">User Name</label>
                          <input name="user_name" type="text" class="form-control" id="user_name"  placeholder="Enter User Name">
                        </div>
                                
                                
                        <div class="form-group">
                          <label for="exampleInputEmail1">Email address</label>
                          <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                        </div>
                            
                            <div class="form-group">    
                                <select>
                                    <option value="phone">+91</option>
                                </select>
                            <input  name="user_mobile" type="tel" placeholder="88812238888" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" maxlength="10"  title="Ten digits code" required/>    
                             <label style="font-size:9px;padding-left:20px"> </label> 
                            </div>   
                                
                        <div class="form-group">
                          <label for="exampleInputPassword1">Password</label>
                          <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" onchange="checking()">
                        <span id='message'></span>
                        </div>
                                

                                
                                
                        <div class="form-check">
                          <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
                          <label class="form-check-label" for="exampleCheck1">Check me out</label>
                        </div>
                                
                                
                        <button type="submit" class="btn btn-primary">Submit</button>
                      </form>
                        </div>
                    </div>
                 
                </div>
            </div>
            
        </main>
        

        
         <!--javasript-->

         
         <script>
             
  function checking() {
       if(document.getElementById('exampleInputPassword1').value.length <6){
      document.getElementById('message').style.color = 'red';
     document.getElementById('message').innerHTML = "you have to enter at least 6 digit!";
    return;
    }
    else{
        
      document.getElementById('message').style.color = 'green';
     document.getElementById('message').innerHTML = "ok!";
    
        
    }
    if(document.getElementById('exampleInputPassword1').value ===
            document.getElementById('exampleInputPassword2').value) {
        document.getElementById('message1').style.color = 'green';
        document.getElementById('message1').innerHTML = "matched";
    } else {
       document.getElementById('message1').style.color = 'red';
     document.getElementById('message1').innerHTML = "password not matched ";
    }
   
}

             
         </script>
    

         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <!--javascript---->
        <script src="JS/myjs.js" type="text/javascript"></script>
             <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
 
        
      <script>
            $(document).ready(function () {
                
                console.log("loaded...")
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();
                    
                    let form=new FormData(this);
                    //send to register servlet
                    $.ajax({
                       url: "RegisterServlet",
                       type: 'POST',
                       data: form,
                       success: function (data,textStatus,jqXHR) {
                           console.log(data)
                           
                           if(data.trim()=='done'){
                           
                           swal("Registered Successfully")
                            .then((value) => {
                             window.location="index.jsp"
                            });}
                        else{
                            swal(data);
                        }
                       },
                       error: function (jqXHR, textStatus, errorThrown){
                           console.log(jqXHR)
                           swal("Something went wrong..try again");
                           
                       },
                       processData: false,
                       contentType: false
          
                    });
                    
                });
            });
            
     </script>
        
   
   
    </body>
</html>
