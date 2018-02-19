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
				<li class="nav-item active"><a class="nav-link" href="list">Liste des salles</a></li>
				<li class="nav-item"><a class="nav-link" href="add">Ajouter une salle</a></li>
			</ul>
		</div>
	</div>
</nav>
<section class="col-8">
	<h3>Liste des salles</h3>
	<table class="table table-hover">
		<thead class="thead-inverse">
			<tr>
				<th>#</th>
				<th>Nom</th>
				<th>Capacité</th>
				<th>Editer</th>
				<th>Supprimer</th>
			</tr>
		</thead>
		<tbody class="table-hover">
			<c:forEach items="${listeSalles}" var="salle">
				<tr>
					<th scope="row"><a href="<c:url value="/salles/${salle.id}"/>">ID: ${salle.id}</a></th>
					<td>${salle.nom}</td>
					<td>${salle.capacite}</td>
					<td><a href="<c:url value="/salles/edit/${salle.id}"/>">éditer</a></td>
					<td><a href="<c:url value="/salles/delete/${salle.id}"/>">supprimer</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</section>
<c:import url="../include/footer.jsp" />