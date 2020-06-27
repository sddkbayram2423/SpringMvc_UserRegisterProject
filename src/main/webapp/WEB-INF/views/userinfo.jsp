<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<title>USER İNFO</title>
</head>


<body class=".container-fluid">
<div class="container myrow-container">
    <div class="panel panel-warning">
        <div class="panel-heading">
            <h3 class="panel-title">
                <div align="center"><b>User Liste</b> </div>
                <div align="right"><a href="/register/registerForNew">User Ekle</a></div>
            </h3>
        </div>
        <div class="panel-body">
            <c:if test="${empty userlistele}">
                Kayıt yok.
            </c:if>
            <c:if test="${not empty userlistele}">
					<table class="table table-hover table-bordered">
                    <thead style="background-color: #F2F5A9;">
                    <tr>
                        <th>Adı</th>
                        <th>Soyadı</th>
                        <th>Email</th>
                        <th>Kullanıcı Adı</th>
                        <th>Parola</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userlistele}" var="user">
                        <tr>
                        	<th><c:out value="${user.firstname}"/></th>
                        	<th><c:out value="${user.lastname}"/></th>
                        	<th><c:out value="${user.email}"/></th>
                        	<th><c:out value="${user.username}"/></th>
                        	<th><c:out value="${user.password}"/></th>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </div>
 </div> 

</body>
</html>