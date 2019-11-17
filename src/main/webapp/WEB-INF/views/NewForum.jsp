<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Forum registration Form</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>

<body>
 	<div class="generic-container">
		<%@include file="authheader.jsp" %>

		<div class="well lead">Forum Registration Form</div>
	 	<form:form method="POST" modelAttribute="forum" class="form-horizontal">
			<form:input type="hidden" path="id" id="id"/>
	
			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="tema">tema</label>
					<div class="col-md-7">
                                                <select path="tema "class="form-control input-sm" name="tema" type="text">
                                                        <option value="modelos de vida">Modelos de vida sostenibles</option>
                                                        <option value="violencia de genero">Violencia de genero</option>
                                                        <option value="derechos humanos">Derechos humanos</option>
                                                        <option value="cultura de paz">Cultura de paz y no violencia<option>
                                                        Cuidadania mundial
                                                        <option value="derechos humanos">Diversidad cultural</option>
                                                        </select>
						<div class="has-error">
						</div>
					</div>
				</div>
			</div>
                        
                        <div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="comentary">Comentario</label>
					<div class="col-md-7">
						<form:input type="text" path="comentary" id="comentary" class="form-control input-sm"/>
						<div class="has-error">
							<form:errors path="comentary" class="help-inline"/>
						</div>
					</div>
				</div>
			</div>
	
			<div class="row">
				<div class="form-actions floatRight">
					<c:choose>
						<c:when test="${edit}">
							<input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/forum' />">Agregar Comentario</a>
						</c:when>
						<c:otherwise>
							<input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/forum' />">Cancel</a>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</form:form>
	</div>
</body>
</html>
