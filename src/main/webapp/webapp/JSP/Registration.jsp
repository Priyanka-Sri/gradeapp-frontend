<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  
	<title>REGISTRATION HERE</title>
	<!-- meta-tags -->

	
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Soft Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //meta-tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- font-awesome -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
	    rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">


</head>
<body>

	<!-- header -->
	<div class="header-top">
		<div class="container">
			<div class="bottom_header_left">
				<p>
                                    <span class="" aria-hidden="true"></span>APPLICATION OF GRADING SYSTEM 
				</p>
			</div>
			<div class="bottom_header_right">
				
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<div class="header">
		<div class="content white">
			<nav class="navbar navbar-default">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="index.html">
							<h1>
								<span class=" fa fa-leanpub" aria-hidden="true"></span>  ONLINE GRADING SYSTEM 
								<label> WELCOME YOU </label>
							</h1>
						</a>
					</div>
					<!--/.navbar-header-->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<nav class="link-effect-2" id="link-effect-2">
							<ul class="nav navbar-nav">
								<li class="active">
								
								<li>
									<a href="index.jsp" class="effect-3">HOME</a>
								</li>
								
                                                                <li>
									<a href="Exit.jsp" class="effect-3">EXIT</a>
								</li>
							</ul>
						</nav>
					</div>
					<!--/.navbar-collapse-->
					<!--/.navbar-->
				</div>
			</nav>
		</div>
	</div>
	
	
	<!-- //short-->
	
	
<form onsubmit="register()">
	<div class="register-form-main">
		<div class="container">
			<div class="title-div">
				<h3 class="tittle">
					<span>R</span>EGISTRATION
					<span>F</span>ORM
				</h3>
				<div class="tittle-style">

				</div>
			</div>
			<div class="register-form">
                            
					<div class="fields-grid"><div class="styled-input">
							
						<div class="styled-input">

						
    

<input type="text" name="name" id="name" placeholder="Name(max 50 char)"  onkeypress="return onlyAlphabets(event,this);"required autofocus />
<br/>
                                         
                                                
                                                
                                                </div>
                                                <input type="text" name="phno" id="phno" placeholder="Enter phone Number" required autofocus  />
<br/> 
        
        
          <div class="styled-input">
                <br>
							
						</div>
        
        <div class="styled-input">
            
							<input type="password" placeholder="Enter Your password "name="password" id="password"  required="">
						</div>
        
            <div class="styled-input">
                <br>
							
						</div>
                                        
                                            <div class="styled-input agile-styled-input-top">
							 <select class="category2" name="role" id="role" required="">
								
                                                               <option value="Admin" > Admin</option>
                                                                <option value="Teacher" > Teacher </option>
								
								
							</select>
</div> 
                            <div class="styled-input">
             
					<input type = "submit" value = "REGISTER" class="btn btn-success" >		
                              </div> <br>     <br>      
                             <div class="styled-input">
                                     <button type="reset" class="btn btn-danger" value="clear">CLEAR</button><br/></div><br><br>
 <div class="styled-input">
     Existing User?<a href="Selectlogin.jsp">Login</a><br/></div>

			
			</div>
		</div>
	</div>
                        </div>
                </div>
      
  </form>
  <script language="Javascript" type="text/javascript"> 

        function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
        } 

    </script>
  
<script>
function register()
{
	alert('register');
   event.preventDefault();
 var admin_name = document.getElementById("name").value;
 var phno = document.getElementById("phno").value;
 var pass=document.getElementById("password").value;
 var role=document.getElementById("role").value;
 var formData = "name=" + admin_name+ "&phno="+phno+"&Password="+pass+"&role="+role;
 console.log(formData);
 alert(formData);
  var url="http://localhost:8080/GradeWeb/Register?"+ formData;
  console.log(url);
alert(url);
  var formData = {};
  $.get(url, function(response){
       console.log(response);
       alert(response);
       
       window.location.href = "Selectlogin.jsp";
  });
}
</script>
 
               
</body>
</html>