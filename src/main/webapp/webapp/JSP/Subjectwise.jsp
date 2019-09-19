<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
</head>
<script>
function mainmenu(){
	event.preventDefault();
		var sub = document.getElementById("sub").value;
		var formData = "sub=" + sub;
		 console.log(formData);
		 alert(formData);
		  var url="http://localhost:8080/GradeWeb/Subjectwise?"+ formData;
		  console.log(url);
		alert(url);
		  var formData = {};
		  $.get(url, function(response){
		       console.log(response);
		       alert(response);
		       if ( response = null ) {
	               alert("Invalid Subject Name");
	           }
	               else{
	                window.location.href="Subjectwisetable.jsp";
	               }
		  });
	}
	</script>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<form onsubmit="mainmenu()">
<label>Enter the Subject:</label>
<input type="text" name="subject" id="sub" placeholder="Enter subject"  required autofocus />
<br/>

<button type="submit" class="btn btn-success" value="clear">SUBMIT </button>
<button type="submit" class="btn btn-danger" value="clear">CLEAR </button>
</form>

</body>
</html>