<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</head>
<jsp:include page="Header.jsp"></jsp:include>
<h4>Enter Student Details</h4>
<body>
	<script type="text/javascript">
		
	</script>
	<form onsubmit="enterdetails()">
	<label>Reg No:</label> 
		<input type="text" name="regno" id="regno" placeholder="Enter Name" required autofocus  />
		<br />
		<label>Student_Name:</label> 
		<input type="text" name="name" id="name" placeholder="Enter Name" required autofocus  />
		<br />
		 <label>English_Mark:</label> 
		 <input type="number" name="mark" id="english" placeholder="Enter mark" required pattern="(?=.*\d)" title="Must contain only numbers" /> 
         <br /> 
         <label>>Maths_Mark:</label>
		<input type="number" name="mark" id="maths" placeholder="Enter mark" required pattern="(?=.*\d)" title="Must contain only numbers" /> 
			<br />
		<label>Computer_Mark:</label> 
		<input type="number" name="mark" id="computer" placeholder="Enter mark" required pattern="(?=.*\d)"title="Must contain only numbers" /> 
		<br /> 
		<label>Science_Mark:</label>
		<input type="number" name="mark" id="science" placeholder="Enter mark" required pattern="(?=.*\d)" title="Must contain only numbers" />
		 <br />
		<label>Social_Mark:</label> 
		<input type="number" name="mark" id="social" placeholder="Enter mark" required pattern="(?=.*\d)" title="Must contain only numbers" /> 
			<br /> 
			<input type="submit" value="SUBMIT" class="btn btn-success">
		<button type="reset" class="btn btn-danger" value="clear">CLEAR	</button><br>
        <a href="Teacherfeature.jsp">BACK</a>
	</form>

	<script>
		function enterdetails() {
alert('enter details');
			event.preventDefault();
			var regno = document.getElementById("regno").value;
			var sname = document.getElementById("name").value;
			var eng = document.getElementById("english").value;
			var mat = document.getElementById("maths").value;
			var com = document.getElementById("computer").value;
			var science = document.getElementById("science").value;
			var social = document.getElementById("social").value;
			
				var formData = "name=" + sname + "&Register_No=" + regno+ "&english=" + eng
					+ "&maths=" + mat + "&computer=" + com
					+ "&science=" + science + "&social=" + social;
			console.log(formData);
			alert(formData);
			var url = "http://localhost:8080/GradeWeb/Enterdetails?"+ formData;
			console.log(url);
			alert(url);
			var formData = {};
			$.get(url, function(response) {
				console.log(response);
				alert(response);
				alert('details entered');
				window.location.href = "Teacherfeature.jsp";
				//alert(response);
				//alert("Successfully Registered"); //TODO: temporarily you can add alert like this.
			});

		}

		
	</script>
</body>
</html>