<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
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
<h3>Détail d'une salle</h3>
	<ul>
		<li>Id: ${salleFromDb.id}</li>
		<li>Nom: ${salleFromDb.nom}</li>
		<li>Capacite: ${salleFromDb.capacite}</li> 
	</ul>
	<h4>Liste des matières exclues</h4>
	<%-- <ul>
	<c:forEach items="${artisteFromDb.CDs}" var="cd">
		<li><a href="<c:url value="/cd/${cd.id}" />">${cd.nom}( ${cd.anneeProduction}, ${cd.nombrePistes} pistes )</a></li>		
	</c:forEach>
	</ul> --%>
</section>
<c:import url="../include/footer.jsp" />