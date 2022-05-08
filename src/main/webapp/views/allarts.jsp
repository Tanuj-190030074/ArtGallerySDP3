<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<head>
<title>View All arts</title>

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="js/jquery.Rating.js"></script>
<script>
$(function() {
    $('span.stars').stars();
});
</script>
</head>

<body>

<h2 align=center>View All Art Records</h2><br/>

<table align=center border=1>
<tr>
<th>Image</th>
<th>email</th>
<th>owner</th>
<th>Name</th>
<th>description</th>
<th>price</th>
<th>rating</th>
<th>Action</th>
</tr>
<c:forEach var="emp" items="${arts}">

<tr>
<td><img alt="" src="data:image/jpg;base64,${emp.image}" style="width: 100px;height: 100px;"></td>
<td>${emp.useremail}</td>
<td>${emp.owner}</td>
<td>${emp.name}</td>
<td>${emp.description}</td>
<td>${emp.price}  </td>

<td>
<span class="stars" data-rating="${emp.ratings}" data-num-stars="5" ></span>
</td>
<td><a href="/deleteart/${emp.id}">Delete</a></td>
</tr>
</c:forEach>
</table>
</body>

</html>