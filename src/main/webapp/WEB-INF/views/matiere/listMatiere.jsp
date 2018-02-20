<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="../include/header.jsp" />
<section class="container">
<table class="table table-hover">
	<thead class="thead-inverse">
		<tr>
			<th>#</th>
			<th>nom</th>
			<th>couleur</th>
			<th>edit</th>
			<th>delete</th>
		</tr>
	</thead>
	<tbody class="table-hover">
		<c:forEach items="${matieres}" var="matiere">
			<tr>
				<th scope="row"><a href="<c:url value="/matiere/${matiere.id}" />">ID:
						${matiere.id}</a></th>
				<td>${matiere.nom}</td>
				<td>${matiere.couleur}</td>
				<td><a href="<c:url value="/matiere/edit/${matiere.id}" />">Edit</a></td>
				<td><a href=" <c:url value="/matiere/del/${matiere.id}"/>">delete</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<a href="<c:url value='/matiere/add' />" class="btn btn-success btn-lg"
	role="button" aria-disabled="true">Add</a>
</section>
<c:import url="../include/footer.jsp" />
