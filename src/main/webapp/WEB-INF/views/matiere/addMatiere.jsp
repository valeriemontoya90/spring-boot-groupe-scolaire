<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="../include/header.jsp" />
<section class="container">
	<form:form method="post" action="" modelAttribute="matiere">
		<div class="form-group">
			<form:hidden path="id" />
		</div>
		<div class="form-group">
			<label for="exampleFormControlInput1">Nom</label>
			<form:input type="text" class="form-control" path="nom"
				placeholder="NOM" />
			<spring:hasBindErrors name="matiere">
				<div class="alert alert-dark" role="alert">
					<form:errors path="nom" />
				</div>
			</spring:hasBindErrors>
		</div>
		<div class="form-group">
			<label for="exampleFormControlSelect1">Couleur</label> 
			<form:select class="form-control" id="exampleFormControlSelect1" path="couleur" items="${couleurs}" />
			<div class="form-group">
				<input type="submit" class="btn btn-primary" value="ok" />
			</div>
		</div>
	</form:form>
	</section>
	<c:import url="../include/footer.jsp" />