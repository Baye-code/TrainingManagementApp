<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet">
<title>login page</title>
</head>
<body>
<div class="container">
	<%@ include file="menu.jsp" %>
	<strong style="color: red;">${ errorMessage }</strong>
	<form action="/formation.do" method="post">
	  <div class="mb-3">
	    <label for="userName" class="form-label">Username</label>
	    <input type="text" class="form-control" id="userName" aria-describedby="userNameHelp" name="name">
	    <div id="userNameHelp" class="form-text">We'll never share your email with anyone else.</div>
	  </div>
	  <div class="mb-3">
	    <label for="password" class="form-label">Password</label>
	    <input type="password" class="form-control" id="password" name="pwd">
	  </div>
	  <div class="mb-3 form-check">
	    <input type="checkbox" class="form-check-input" id="Check1">
	    <label class="form-check-label" for="Check1">Check me out</label>
	  </div>
	  <button type="submit" class="btn btn-primary" name="">Submit</button>
	</form>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>