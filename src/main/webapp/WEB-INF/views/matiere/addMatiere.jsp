<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="../include/header.jsp" />
<c:import url="matiere_header.jsp" />
<div class="container fluid">
	<div class="row">
		<div class="col-3">
			<c:import url="matiere_nav.jsp" />
		</div>
		<section class="col-9">
			<h3>Ajout d'un matière</h3>
			<br>
			<form:form method="post" action="" modelAttribute="matiere">
				<form:hidden path="id" />
				<div class="form-group">
					<label for="exampleFormControlInput1">Nom</label>
					<form:input type="text" class="form-control" path="nom"
						placeholder="nom" />
					<spring:hasBindErrors name="matiere">
						<div class="alert alert-dark" role="alert">
							<form:errors path="nom" />
						</div>
					</spring:hasBindErrors>
				</div>
				<div class="form-group">
					<label for="exampleFormControlSelect1">Couleur</label>
					<form:select class="form-control" path="couleur"
						items="${couleurs}" />
				</div>
				<input type="submit" class="btn btn-primary" value="Ajouter" />
			</form:form>
		</section>
	</div>
</div>
<c:import url="../include/footer.jsp" />