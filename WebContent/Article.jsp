<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- IMPORT BOOTSTRAP -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- IMPORT STYLES -->
<link rel="stylesheet" href="WEB-SRC/style/Article.css" />
<link rel="stylesheet" href="WEB-SRC/styles/header.css" />
<!-- IMPORT POLICES -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap"
	rel="stylesheet" />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Article</title>
</head>
<body>
	<header class="header">
	<div class="header__baniere">
		<img class="header__baniere__img" src="WEB-SRC/img/logo.jpg"
			alt="image-baniere" />
	</div>
	<nav class="navbar navbar-expand-sm navbar-dark italic fs-5"
		style="background-color: #3cb371">
	<div class="container-fluid">
		<a class="navbar-brand fs-5" style="color: var(- -bs-red)" href="#">Eat
			& Love</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse d-flex justify-content-between"
			id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link"
					href="../ProjetWeb/SArticle">Notre carte</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="connexion.jsp">Connexion</a></li>
				<li class="nav-item"><a class="nav-link" href="inscription.jsp">Inscription</a></li>
				<%
					if (session.getId() != null) {
				%>
				<li class="nav-item"><a class="nav-link"
					href="../ProjetWeb/SPanier">Mon menu</a></li>
				<%
					}
				%>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item">
					<%
						String prenom = session.getAttribute("prenom").toString();
						String nom = session.getAttribute("nom").toString();
					%> <a class="nav-link disabled" style="color: var(- -bs-red)"
					href=""><%=prenom + " " + nom%> - Mon espace</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="accueil.jsp">Déconnexion</a>
				</li>
			</ul>
		</div>
	</div>
	</nav> </header>
	<div class="container-fluid mt-3">
		<h2>Nos Entrées</h2>
		<div class="row">
			<c:forEach var="aE" items="${requestScope.lstE}">
				<div class="col-sm-3 p-3">
					<img src="WEB-SRC/img/<c:out value="${aE.nomImage}" />"
						class="rounded-circle" width="304" height="236" />
					<p class="plat">
						<c:out value="${aE.nomArticle}" />
					</p>
					<p class="desc">
						<c:out value="${aE.description}" />
					</p>
					<p>
						<c:out value="${aE.prix}" />
						€
					</p>
				</div>
			</c:forEach>
		</div>
	</div>
	<div>
		<h2>Nos Plats</h2>
		<div class="row">
			<c:forEach var="aP" items="${requestScope.lstP}">
				<div class="col-sm-3 p-3">
					<img src="WEB-SRC/img/<c:out value="${aP.nomImage}" />"
						class="rounded-circle" width="304" height="236" />
					<p class="plat">
						<c:out value="${aP.nomArticle}" />
					</p>
					<p class="desc">
						<c:out value="${aP.description}" />
					</p>
					<p>
						<c:out value="${aP.prix}" />
						€
					</p>
				</div>
			</c:forEach>
		</div>
	</div>
	<div>
		<h2>Nos Deserts</h2>
		<div class="row">
			<c:forEach var="aD" items="${requestScope.lstD}">
				<div class="col-sm-3 p-3">
					<img src="WEB-SRC/img/<c:out value="${aD.nomImage}" />"
						class="rounded-circle" width="304" height="236" />
					<p class="plat">
						<c:out value="${aD.nomArticle}" />
					</p>
					<p class="desc">
						<c:out value="${aD.description}" />
					</p>
					<p>
						<c:out value="${aD.prix}" />
						€
					</p>
				</div>
			</c:forEach>
		</div>
	</div>
	<div>
		<h2>Nos Boissons</h2>
		<div class="row">
			<c:forEach var="aB" items="${requestScope.lstB}">
				<div class="col-sm-3 p-3">
					<img src="WEB-SRC/img/<c:out value="${aB.nomImage}" />"
						class="rounded-circle" width="304" height="236" />
					<p class="plat">
						<c:out value="${aB.nomArticle}" />
					</p>
					<p class="desc">
						<c:out value="${aB.description}" />
					</p>
					<p>
						<c:out value="${aB.prix}" />
						€
					</p>
				</div>
			</c:forEach>
		</div>
	</div>
</body>
</html>