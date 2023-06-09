<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- IMPORT BOOTSTRAP -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="WEB-SRC/styles/Panier.css" />
<link rel="stylesheet" href="WEB-SRC/styles/header.css" />

<link rel="stylesheet" href="style/Panier.css" />


<!-- IMPORT POLICES -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap"
	rel="stylesheet" />


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Panier</title>
</head>
<body class="resto">
	<header class="header">
	<div class="header__baniere">
		<img class="header__baniere__img" src="WEB-SRC/img/logo.jpg"
			alt="image-baniere" />
	</div>
	<nav class="navbar navbar-expand-sm navbar-dark italic fs-5"
		style="background-color: #3cb371">
	<div class="container-fluid">
		<a class="navbar-brand fs-5" style="color: var(- -bs-red)"
			href="accueil.jsp">Eat & Love</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse d-flex justify-content-between"
			id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link "
					href="../ProjetWeb/SArticle">Notre carte</a></li>

				<%
					if (session.getAttribute("id") == null) {
				%>
				<li class="nav-item"><a class="nav-link" href="connexion.jsp">Connexion</a></li>
				<li class="nav-item"><a class="nav-link" href="inscription.jsp">Inscription</a></li>
				<%
					}
				%>
				<%
					if (session.getAttribute("id") != null) {
				%>
				<li class="nav-item"><a class="nav-link active"
					href="../ProjetWeb/SPanier">Mon menu</a></li>
				<%
					}
				%>
			</ul>
			<%
				if (session.getAttribute("id") != null) {
			%>
			<ul class="navbar-nav">
				<li class="nav-item">
					<%
						String prenom = session.getAttribute("prenom").toString();
							String nom = session.getAttribute("nom").toString();
					%> <a class="nav-link" style="color: var(- -bs-red)" href="profil"><%=prenom + " " + nom%>
						- Mon espace</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="../ProjetWeb/deconnexion">Déconnexion</a></li>
			</ul>
			<%
				}
			%>
		</div>
	</div>
	</nav> </header>
	<h1 class="mt-5">Fais ton propre repas</h1>
	<p id="infosU">
		La commande de
		<%=session.getAttribute("prenom").toString()%>
		(Montant panier :
		<c:out value="${sessionScope.mntTot}" />
		€)
	</p>
	<div class="row">
		<div class="col-sm-6 container mt-3">
			<p>Fais ton choix parmi nos plats faits maison :</p>
			<form action="SPanier2" methode="post">
				<select name="plats" class="form-select">
					<option value=""></option>
					<c:forEach var="a" items="${requestScope.lst}">
						<option value="<c:out value="${a.nomArticle}" />"><c:out
								value="${a.nomArticle}" /></option>
					</c:forEach>
				</select>
				<p>Quantité:</p>
				<input type="text" name="qte"> <input type="submit"
					value="Ajouter au panier">
			</form>
		</div>
		<div class="col-sm-6 container mt-3">
			<table class="table">
				<tr>
					<th>Articles</th>
					<th>Quantité</th>
					<th>Prix total</th>
				</tr>
				<c:forEach var="infos" items="${sessionScope.lstI}">
					<tr>
						<td><c:out value="${infos.key}" /></td>
						<c:forTokens items="${infos.value}" delims="," var="split">
							<td><c:out value="${split}" /></td>
						</c:forTokens>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>

	<form action="SRecapCommande" method="post" id="formV">
		<input type="submit" value="Valider le panier" class="btn btn-success">
</body>
</html>