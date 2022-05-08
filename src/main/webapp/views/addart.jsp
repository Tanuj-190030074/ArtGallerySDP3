<%

 if(session.getAttribute("email")==null)
 {System.out.println(session.getAttribute("email"));
 response.sendRedirect("loginpage");
 }
%>
<!-- Default form subscription -->
<div class="card">
	<div class="card-header">
		<p class="h4 mb-2 text-center">Add Art</p>
	</div>
	<div class="card-body">
		<form class="text-center border border-light p-5" action="addP" method="post" enctype="multipart/form-data">

			<!-- Name -->
			<input type="text" name="pname" id="name" class="form-control mb-4"
				placeholder="Product Name">

			<!-- Price -->
			<input type="text" name="price" id="price" class="form-control mb-4"
				placeholder="Product Price">

			<!-- Description -->
			<textarea class="form-control mb-4" id="desc" name="desc"
				placeholder="Product Description">Product Description
                                 </textarea>
			<div class="custom-file mb-4">
				<input type="file" name="file" class="custom-file-input"
					id="customFile"> <label class="custom-file-label"
					for="customFile">Product Image</label>
			</div>
			<!-- Sign in button -->
			<button class="btn btn-info btn-block" type="submit">add</button>
		</form>
	</div>
</div>
<!-- Default form subscription -->