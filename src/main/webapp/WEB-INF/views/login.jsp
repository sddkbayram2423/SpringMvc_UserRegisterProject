<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form"	 prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<title>Login</title>
</head>
<body>
	<div class="container">
		
		<div class="alert alert-warning">
			<a class="nav-link active" href="register/registerForNew">Register</a> | <a class="nav-link" href="login/loginForNew">Login</a>
		</div>
	</div>
	
	
	<div class="container">
		<div class="control-label col-xs-6">
	
		<div class="panel-body">
		<form:form modelAttribute="login" method="post" action="valitadeLogin">
			<div align="center"><font style="color:red;">Üye Giriş</font></div>
				
			<div class="form-group">
				<div class="control-label col-xs-4">
					<form:label path="username" >Kullanıcı Adı:</form:label>
				</div>
				<div class="col-xs-8">
					<form:input cssClass="form-control" path="username" value="${login.username}" />
				</div>
			</div>
			
			<div class="form-group">
				<div class="control-label col-xs-4">
					<form:label path="password" >Parola:</form:label>
				</div>
				<div class="col-xs-8">
					<form:password cssClass="form-control" path="password" value="${login.password}" />
				</div>
			</div>

			<div class="form-group">
				<div class="row">
				<div class="col-xs-4"></div>
					<div class="col-xs-4">
						<input type="submit" class="btn btn-primary" value="Log In" />
					</div>
					<div class="col-xs-4"></div>
				</div>
			</div>
			</form:form>
			</div>
			</div>
	</div>
		</body>
</html>