<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:import url="../include/header.jsp" />


<nav class="col-2">
	<div class="card border-primary mb-3" style="max-width: 30rem;">
		<div class="card-header">Menu</div>
		<div class="card-body">
			<ul class="nav flex-column">
				<li class="nav-item"><a class="nav-link active" href="#">Accueil</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="#">Gestion de matières</a></li>
				<li class="nav-item"><a class="nav-link" href="/list">Gestion de salles</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Gestion de professeurs</a></li>
			</ul>
		</div>
	</div>
</nav>

<section class="col-8">
	<h3>Formulaire d'ajout de salles</h3>
	<form method="POST" modelAttribute="artiste">
		<div class="form-group">
			<label for="nom">Nom</label> <input type="email" class="form-control"
				id="nom" placeholder="Nom">
		</div>
		<div class="form-group">
			<label for="capacite">Capacite</label> <input type="number"
				class="form-control" id="capacite" placeholder="capacite">
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
		<br> <br>
		<button type="submit" class="btn btn-success">Ajouter</button>
	</form>
</section>
<c:import url="../include/footer.jsp" />