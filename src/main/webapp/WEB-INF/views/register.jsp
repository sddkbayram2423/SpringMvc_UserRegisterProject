<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<title>Register</title>
</head>
<body class=".container-fluid">
	<div class="container myrow-container">
		<div class="panel panel-warning">
			<div class="panel-heading">
				<h3 class="panel-title">User Bilgisi</h3>
				<div align="right"><h3 class="panel-title"><a href="listele">User Listele</a></h3>  </div>
			</div>
			<div class="panel-body">
				<form:form id="userRegisterForm" cssClass="form-horizontal" modelAttribute="user" method="post" action="registerUser">
				
				   <form:hidden path="userId" value="${user.userId}" />

					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="firstname" title="Adı Giriniz" >Adı:</form:label>
						</div>
						<div class="col-xs-6">
							<form:input cssClass="form-control" path="firstname" value="${user.firstname}" />
						</div>
					</div>


					<div class="form-group">
						<div class="control-label col-xs-3">
							<form:label path="lastname">Soyadı</form:label>
						</div>
						<div class="col-xs-6">
							<form:input cssClass="form-control" path="lastname" value="${user.lastname}" />
						</div>
					</div>

					<div class="form-group">
						<form:label path="username" cssClass="control-label col-xs-3">Kullanıcı Adı:</form:label>
						<div class="col-xs-6">
							<form:input cssClass="form-control" path="username" value="${user.username}" />
						</div>
					</div>
					
					<div class="form-group">
						<form:label path="email" cssClass="control-label col-xs-3">Email:</form:label>
						<div class="col-xs-6">
							<form:input cssClass="form-control" path="email"
								value="${user.email}" />
						</div>
					</div>
					
					<div class="form-group">
						<form:label path="password" cssClass="control-label col-xs-3">Parola:</form:label>
						<div class="col-xs-6">
							<form:password cssClass="form-control" path="password" value="${user.password}" />
						</div>
					</div>
			
					<div class="form-group">
						<div class="row">
							<div class="col-xs-4"></div>
							<div class="col-xs-4">
								<input type="submit" id="saveMusteri" class="btn btn-primary"
									value="Kaydet"  />
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