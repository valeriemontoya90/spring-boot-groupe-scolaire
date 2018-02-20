<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:import url="../include/header.jsp" />
<c:import url="salle_header.jsp" />
<div class="container fluid">
	<div class="row">
		<div class="col-3">
			<c:import url="salle_nav.jsp" />
		</div>
		<section class="col-9">
			<h3>Détail d'une salle</h3>
			<ul>
				<li>Id: ${salleFromDb.id}</li>
				<li>Nom: ${salleFromDb.nom}</li>
				<li>Capacite: ${salleFromDb.capacite}</li>
			</ul>
			<h4>Liste des matières exclues</h4>
			<ul>
				<c:forEach items="${salleFromDb.matieresExclues}"
					var="matieresExclues">
					<li>${matieresExclues.nom}</li>
				</c:forEach>
			</ul>
		</section>
	</div>
</div>
<c:import url="../include/footer.jsp" />