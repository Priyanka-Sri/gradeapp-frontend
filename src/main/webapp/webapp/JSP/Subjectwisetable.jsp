<%@ page language="java" contentType="text/html; charset=ISO-8859-1"   
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>
<script>
function subjectwisetable(sub){
	
  var url = "http://localhost:8080/GradeWeb/Subjectwise?sub=" + sub;
  console.log(url);
 $.getJSON(url, function(response){
       var books = response;
  document.getElementById("tbody").innerHTML = "";
  var content = "";
  var i = 0;
  for(let us of books){
      console.log(books);
      content += "<tr>";
      content += "<td>" + ++i + "</td>";
      content += "<td>" + us.Sname + "</td>";
      content += "<td>" + us.REGNO + "</td>";
      content += "<td>" + us.SUBNAME  + "</td>";
      content += "</tr>";
  }
  console.log(content);
  document.getElementById("tbody").innerHTML =  content;
});
}
</script>
</head>
<body>

<%
String sub = request.getParameter("sub");
%>
   <jsp:include page="Header.jsp"></jsp:include>
 
   <form>
       <div class="container-fluid">
           <div class="row">
               <div class="col">
                   <h4>Subject Wise Result  </h4>
                   <table border="1" class="table table-condensed" id="tbl">
                       <thead>
                           <tr>
                           <th>S.no</th>
                               <th>STUDENT NAME </th>
                               <th>REGISTER NUMBER</th>
                               <th>SUBJECT</th>
                           </tr>
                       </thead>
                       <tbody id="tbody">
                       </tbody>
                   </table>
               </div>
           </div>
       </div>
       <script>
       subjectwisetable('<%=sub%>');
</script>
   </form>
   <a href="Teacherfeature.jsp">BACK</a>
</body>
</html>