<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:import url="../include/header.jsp" />
<spring:url value="/salles/add" var="salleAdd" />

<c:import url="../include/header.jsp" />
<c:import url="salle_header.jsp" />
<div class="container fluid">
	<div class="row">
		<div class="col-3">
			<c:import url="salle_nav.jsp" />
		</div>
		<section class="col-9">
			<h3>Ajouter une salle</h3>
			<br>
			<form:form method="POST" action="${salleAdd}" modelAttribute="salle">
				<form:input type="hidden" path="id" />
				<div class="form-group">
					<label for="nom">Nom</label>
					<form:input path="nom" class="form-control" />
				</div>
				<div class="form-group">
					<label for="capacite">Capacite</label>
					<form:input type="number" path="capacite" class="form-control" />
				</div>
				Matières exclues
				<c:forEach items="${matieres}" var="matiere">
				<div class="form-check">
					<input class="form-check-input" name="matieres[]" type="checkbox"
						value="${matiere.id}" id="${matiere.id}"> <label
						class="form-check-label" for="matieresExclues">${matiere.nom}</label>
				</div>
				</c:forEach>
				<br>
				<button type="submit" class="btn btn-primary">${actionPage}</button>
			</form:form>
		</section>
	</div>
</div>
<c:import url="../include/footer.jsp" />