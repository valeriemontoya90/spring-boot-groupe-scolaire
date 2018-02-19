<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:import url="../include/header.jsp" />

<nav class="col-2">
	<div class="card border-primary mb-3" style="max-width: 30rem;">
		<div class="card-header">Gestion des salles</div>
		<div class="card-body">
			<ul class="nav flex-column">
				<li class="nav-item"><a class="nav-link" href="list">Liste des salles</a></li>
				<li class="nav-item"><a class="nav-link active" href="add">Ajouter une salle</a></li>
			</ul>
		</div>
	</div>
</nav>
<section class="col-8">
	<h3>Formulaire d'ajout de salles</h3>
	<form:form method="POST" modelAttribute="salle">
		<div class="form-group">
			<label for="nom">Nom</label><form:input path="nom" class="form-control" />
		</div>
		<div class="form-group">
			<label for="capacite">Capacite</label><form:input type="number" path="capacite" class="form-control" />
		</div>
		Matières exclues
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value=""
				id="matieresExclues"> <label class="form-check-label"
				for="matieresExclues">Chimie </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="checkbox" value=""
				id="matieresExclues"> <label class="form-check-label"
				for="matieresExclues">Physique </label>
		</div>
		<br>
		<button type="submit" class="btn btn-primary">Ajouter</button>
	</form:form>
</section>
<c:import url="../include/footer.jsp" />