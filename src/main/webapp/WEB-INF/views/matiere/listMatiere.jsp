<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
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
		<tbody class ="table-hover">
		<c:forEach items ="${listeMatiere}" var ="ma">
		<tr>
			<th scope="row"><a href="<c:url value="/matiere/${ma.id}" />">ID: ${ma.id}</a></th>
			<td>${ma.nom }</td>
			<td>${ma.couleur }</td>
			<td><a href="<c:url value="/matiere/edit/${ma.id}" />">Edit</a></td>
			<td><a href=" <c:url value="/matiere/del/${ma.id}"/>" >delete</a></td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	<a href="<c:url value='/matiere/add' />" class="btn btn-success btn-lg" role="button" aria-disabled="true">Add</a>

</body>
</html>