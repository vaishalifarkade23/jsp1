<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Session!</title>
  </head>
  <body>
  
   <div class="row">
   <div class="col col-lg-12 col-md-12 col-sm-12 col-xs-12">
   <h2 style="text-align: center;">Registration Form</h2>
   </div>
  </div>
             
             <div class="container">
             <div class="row">
  			 <div class="col col-lg-2 col-md-6 col-sm-6 col-xs-12">
  			 </div>
  			 
                <div class="col col-lg-8 col-md-6 col-sm-6 col-xs-12">
                <div class="modal-body" >
                <div style="border: 2px;padding:20px">
                 
   			  <form action="registration.jsp" method="post">
       	      <div class="form-group">
              <label>First Name:</label><br>
       	      <input type="text" name="FirstName" class="form-control" >
       	      </div>
              
              
                    <div class="form-group">
                    <label> Last Name:</label><br>
       	            <input type="text" name="LastName" class="form-control" >
       	            </div>
       	            
       	            <div class="form-group">
       	            <label>Gender:</label><br>
       	            <input type="radio" name="gender"  value="Male">Male
       	            <input type="radio" name="gender"  value="Female">Female
       	            <input type="radio" name="gender"  value="Other">Other
       	            </div>
       	            
       	            <div class="form-group">
			        <label>Select Course:</label><br>
			        <input type="checkbox" name="chk" value="Java">Java
			        <input type="checkbox" name="chk" value="Php">Php
			        <input type="checkbox" name="chk" value="Html">Html
			        <input type="checkbox" name="chk" value="Jsp">Jsp
			        </div>
       	            
       	            <div class="form-group">
       	            <label>Address :</label>
				    <textarea rows="5" cols="30" name="fulladdress" class="form-control"></textarea>
			        </div>
			        
			        <div class="form-group">
       	            <label>City :</label>
       	            <input type="text" name="city" class="form-control" >
			        
			        <div class="form-group">
				    <label>Select State:</label> 
				    <select class="form-control"  name="dropdown">
					<option>Select  State </option>
					<option>Maharastra</option>
					<option>Madhya Pradesh</option>
					<option>Chatisgadh</option>
					<option>Himachal Pradesh</option>
					<!-- <option>Uttar pradesh</option>
					<option>Rajastan</option>
					<option>Gujrat</option>
					<option>Tamilnadu</option>
					<option>Karnataka</option>
					<option>Telangana</option>
					<option>Kerla</option>
					<option>Sikkim</option>-->
				    </select>
			        </div>
			        
			         <div class="form-group">
                     <label> Contact:</label><br>
       	             <input type="text" name="contact" class="form-control" >
       	             </div>
       	                        
       	            <div class="form-group">
       		        <label>Date Of Birth:</label>
       		        <input type="date" class="form-control" value="txtdate" name="date">
                    </div>
			        
                     <div class="form-group">
                     <label> Email:</label><br>
                     <input type="email" name="Email" class="form-control" >
       	             </div>
   					 
       	         <div class="form-group">
                 <label> Password:</label><br>
                 <input type="password" name="password" class="form-control" >
                 </div>
               							          
       	         <div class="form-group">
                 <label> confirm Password:</label><br>
                 <input type="password" name="confirmpassword" class="form-control" >
       	         </div>
       	         <br>
       	           									    
       	       <div class="form-group">
               <button type="submit" class="btn btn-success">Register</button>
               </div>
                <div class="col col-lg-2 col-md-6 col-sm-6 col-xs-12">
               </div>
                   											 
                </div>
               </form>
               </div>
   </div>
   </div>
   </div>
   </div>
   

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>