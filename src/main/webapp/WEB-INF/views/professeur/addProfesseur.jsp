<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:import url="../include/header.jsp" />

<spring:url value="/voiture/add" var="voitureAdd" />
<spring:url value="/voiture/list" var="voitureList" />

<section class="container">
	<spring:message code="views.h3.actionAdd" var="actionAdd" />
	<h3>
		<spring:message code="views.voiture.addVoiture.h3.pageTitle" />
		<small> > ${actionAdd} </small>
	</h3>
	<p><a href="${voitureList}"><spring:message code="views.p.backToHome" /></a></p>
	<form:form method="POST" action="${voitureAdd}"
		modelAttribute="voiture">
		<form:hidden path="id" />
		<div class="form-group">
			<c:if test="${showErrorMarque != null}">
				<div class="alert alert-success" role="alert"> 
					<form:errors path="marque" cssClass="error" element="div" />
				</div>
       		</c:if>
			<label for="marque"><spring:message code="views.voiture.addVoiture.form.label.marque" /></label>
			<spring:message code="views.voiture.addVoiture.form.label.marque.placeholder" var="placeholderMarque" />
			<form:input path="marque" class="form-control"
				placeholder="${placeholderMarque}" />
		</div>
		<div class="form-group">
			<c:if test="${showErrorModele != null}">
				<div class="alert alert-success" role="alert"> 
					<form:errors path="modele" cssClass="error" element="div" />
				</div>
       		</c:if>
			<label for="modele"><spring:message code="views.voiture.addVoiture.form.label.modele" /></label>
			<spring:message code="views.voiture.addVoiture.form.label.modele.placeholder" var="placeholderModele" />
			<form:input path="modele" class="form-control" placeholder="${placeholderModele}" />
		</div>
		<div class="form-group">
			<c:if test="${showErrorSerie != null}">
				<div class="alert alert-success" role="alert"> 
					<form:errors path="serie" cssClass="error" element="div" />
				</div>
       		</c:if>
			<label for="serie"><spring:message code="views.voiture.addVoiture.form.label.serie" /></label>
			<spring:message code="views.voiture.addVoiture.form.label.serie.placeholder" var="placeholderSerie" />
			<form:input path="serie" class="form-control" placeholder="${placeholderSerie}" />
		</div>
		<div class="form-group">
			<label for="annee"><spring:message code="views.voiture.addVoiture.form.label.year" /></label>
			<form:select path="annee"  class="form-control">
				<c:forEach begin="1970" step="1" end="2018" var="annee">
					<c:set var="decr" value="${1970+(2018 - annee)}"/>
					<option value="${decr}">${decr}</option>
				</c:forEach>
			</form:select>
		</div>
		<div class="form-group">
			<label for="couleur"><spring:message code="views.voiture.addVoiture.form.label.color" /></label>
			<form:select path="couleur" class="form-control">
				<c:forEach items="${couleurs}" var="couleur">
    				<option value="${couleur}">${couleur}</option>
				</c:forEach>
			</form:select>
		</div>
		<button type="submit" class="btn btn-primary">
			<spring:message code="views.form.button.submit" />
		</button>
	</form:form>
</section>
<c:import url="../include/footer.jsp" />