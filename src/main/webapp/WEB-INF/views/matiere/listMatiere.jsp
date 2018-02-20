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
			<h3>Liste des matières</h3>
			<br>
			<table class="table table-hover">
				<thead class="thead-inverse">
					<tr>
						<th>#</th>
						<th>Nom</th>
						<th>Couleur</th>
						<th>Editer</th>
						<th>Supprimer</th>
					</tr>
				</thead>
				<tbody class="table-hover">
					<c:forEach items="${matieres}" var="matiere">
						<tr>
							<th scope="row"><a
								href="<c:url value="/matieres/${matiere.id}" />">ID:
									${matiere.id}</a></th>
							<td>${matiere.nom}</td>
							<td>${matiere.couleur}</td>
							<td><a href="<c:url value="/matieres/edit/${matiere.id}" />">éditer</a></td>
							<td><a href=" <c:url value="/matieres/del/${matiere.id}"/>">supprimer</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</section>
	</div>
</div>
<c:import url="../include/footer.jsp" />
