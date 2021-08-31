<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
<title>welcome page</title>
</head>
<body>
<div class="container">
	<%@ include file="menu.jsp" %>
	
	<div class="container jumbotron">
			<div class="sidenav">
			         <div class="login-main-text">
			            <h2>Application Welcome Page</h2>
			         </div>
			         <hr>
		     </div>
	         <div class="alert alert-success d-flex align-items-center" role="alert">
		         <h4 class="alert-heading">Well done!<br></h4>
			 </div>
			 <br>
			<p>You Log In successfully :)</p>
			<p class="mb-0">Welcome to your Saraya train Bootcamp Account Mr ${ name }</p>
			<br>
			<p> Here is the list of all my current Trainings: <br>
				${ formations } 
			</p>

			<table class="table table-striped">
				  <thead>
				    <tr>
				      <th scope="col">#</th>
				      <th scope="col" colspan="2">Traning</th>
				      <th scope="col" colspan="2">Action</th>
				    </tr>
				    <c:forEach items="${formats}" var="format">
				    	<tr>
							<th scope="row"></th>
							<td colspan="2">${format.name}</td>
							<td colspan="2">
								<a class = "btn btn-danger" href="/delete.do?del=${format.name}">
									Delete
								</a>
							</td>
						</tr>
					</c:forEach>
				  </thead>
			</table>
			<br>
		<form action="/formation.do" method="post">
			<div class="container-fluid form-group">
                <input type="text" class="form-control" placeholder="Add a training" name="add">
                <button type="submit" class="btn btn-success">Add</button>
             </div>
             
		</form>
	</div>
</div>	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

<!-- <form action="/formation.do" method="post">
									<input type="text" name = "add">
									<input type="submit" value="Add a Class">
								</form>
	 -->