<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:import url="../include/header.jsp" />

<c:import url="../include/header.jsp" />
<c:import url="salle_header.jsp" />
<div class="container fluid">
	<div class="row">
		<div class="col-3">
			<c:import url="salle_nav.jsp" />
		</div>
		<section class="col-9">
			<h3>Liste des salles</h3>
			<br>
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
							<th scope="row"><a
								href="<c:url value="/salles/${salle.id}"/>">ID: ${salle.id}</a></th>
							<td>${salle.nom}</td>
							<td>${salle.capacite}</td>
							<td><a href="<c:url value="/salles/edit/${salle.id}"/>">éditer</a></td>
							<td><a href="<c:url value="/salles/delete/${salle.id}"/>">supprimer</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</div>
</div>
<c:import url="../include/footer.jsp" />