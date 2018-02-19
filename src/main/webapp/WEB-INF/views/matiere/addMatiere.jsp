<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:import url="../include/header.jsp" />

<spring:url value="/artiste/add" var="artisteAdd" />
<spring:url value="/artiste/list" var="artisteList" />

<section class="container">
	<spring:message code="views.artiste.addArtiste.h3.actionAdd" var="actionAdd" />
	<h3>
		<spring:message code="views.artiste.addArtiste.h3.pageTitle" />
		<small> > ${actionAdd} </small>
	</h3>
	<p><a href="${artisteList}"><spring:message code="views.p.backToHome" /></a></p>
	<form:form method="POST" action="${artisteAdd}"
		modelAttribute="artiste">
		<form:hidden path="id" />
		<div class="form-group">
			<c:if test="${showErrorPrenom != null}">
				<div class="alert alert-success" role="alert"> 
					<form:errors path="prenom" cssClass="error" element="div" />
				</div>
       		</c:if>
			<label for="prenom"><spring:message code="views.artiste.addArtiste.form.label.firstname" /></label>
			<spring:message code="views.artiste.addArtiste.form.label.firstname.placeholder" var="placeholderlast" />
			<form:input path="prenom" class="form-control"
				placeholder="${placeholderlast}" />
		</div>
		<div class="form-group">
			<c:if test="${showErrorNom != null}">
				<div class="alert alert-success" role="alert"> 
					<form:errors path="nom" cssClass="error" element="div" />
				</div>
       		</c:if>
			<label for="nom"><spring:message code="views.artiste.addArtiste.form.label.lastname" /></label>
			<spring:message code="views.artiste.addArtiste.form.label.lastname.placeholder" var="placeholderfirst" />
			<form:input path="nom" class="form-control" placeholder="${placeholderfirst}" />
		</div>
		<button type="submit" class="btn btn-primary">
			<spring:message code="views.form.button.submit" />
		</button>
	</form:form>
</section>
<c:import url="../include/footer.jsp" />