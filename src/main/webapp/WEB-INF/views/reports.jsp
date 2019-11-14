<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title></title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
	<div class="generic-container">
		<%@include file="authheader.jsp" %>	
		<div class="panel panel-default">
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">List of Users </span></div>
			<table class="table table-hover">
	    		<thead>
		      		<tr>
				        <th>Comentario</th>
				        <th>tema</th>
					</tr>
		    	</thead>
	    		<tbody>
				<c:forEach items="${forums}" var="forum">
					<tr>
						<td>${forum.id}</td>
                                                <td>${forum.comentary}</td>
                                                <td><a href="<c:url value='/edit-forum-${forum.id}' />" class="btn btn-success custom-width">edit</a></td>
                                                <td><a href="<c:url value='/delete-forum-${forum.id}' />" class="btn btn-danger custom-width">delete</a></td>
					</tr>
                                        
				</c:forEach>
	    		</tbody>
	    	</table>
                        
		</div>
                <a href="/SpringMVCHibernateManyToManyCRUDExample/index">volver</a>
   	</div>
                
    </body>
</html>
