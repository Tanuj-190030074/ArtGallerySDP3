<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

	<title>Admin</title>
	<link rel="stylesheet" type="text/css" href="css/adminhome.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
  <link rel="stylesheet" type='text/css' href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.2.14/semantic.min.css">
  <!--Chart js-->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" integrity="sha256-Uv9BNBucvCPipKQ2NS9wYpJmi8DTOEfTA/nH2aoJALw=" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.css" integrity="sha256-aa0xaJgmK/X74WM224KMQeNQC2xYKwlAt08oZqjeF0E=" crossorigin="anonymous" />
  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script> 
  
</head>
<body>

 <div class="sidebar">
  <a class="active" href="/adminhomepage">Home</a>
  <a href="/approveartspage">Approve Arts</a>
  <a href="/loginpage">Logout</a>
</div>

<div class="content">
     
     <div class="container">
    <table class="table table-sm">
         <thead>
             <tr>
            <th scope="col">image</th>
                        <th scope="col">Name</th>
                        <th scope="col">Description</th>
                        <th scope="col">Price</th>
                        <th scope="col">rating</th>
                        <th scope="col">action</th>
             </tr>
         </thead>
         <tbody>
              <c:forEach var="emp" items="${arts}">

<tr>
<td><img alt="" src="data:image/jpg;base64,${emp.image}" style="width: 100px;height: 100px;"></td>
<td><a href="/getart/${emp.id}">${emp.name}</a></td>
<td>${emp.description}</td>
<td>${emp.price}  </td>
<td>${emp.ratings}</td>
<c:choose>
         
         <c:when test = "${emp.isapproved==false}">
            <td><a href="/approveart/${emp.id}" class="btn btn-success">Approve</a></td>
         </c:when>
         <c:otherwise>
            <td><h3 style="color:green;">Approved</h3></td>
         </c:otherwise>
      </c:choose>
</tr>
</c:forEach>
         </tbody>
    </table>
</div>
</div>

</body>
</html>