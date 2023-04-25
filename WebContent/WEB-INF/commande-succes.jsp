<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<!-- IMPORT BOOTSTRAP ET STYLES -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


<!-- IMPORT STYLES -->
<link rel="stylesheet" href="WEB-SRC/styles/global.css" />
<link rel="stylesheet" href="WEB-SRC/styles/header.css" />
<link rel="stylesheet" href="WEB-SRC/styles/footer.css" />
<link rel="stylesheet" href="WEB-SRC/styles/accueil.css" />
<link rel="stylesheet" href="WEB-SRC/styles/cmd-succes.css" />




<!--       IMPORT POLICES
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap"
      rel="stylesheet"
    /> -->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Commande envoyée</title>
</head>
<body>

	<header class="header">
	<div class="header__baniere">
		<img class="header__baniere__img" src="WEB-SRC/img/logo.jpg"
			alt="image-baniere" />
	</div>

	<!-- 	Ajouter la classe active sur le a de la page appelée Quand on est
	connecté : faire disparaître les liens login et inscription Faire
	apparaître un lien déconnexion  --> <nav
		class="navbar navbar-expand-sm navbar-dark italic fs-5"
		style="background-color: #3cb371">
	<div class="container-fluid">
		<a class="navbar-brand fs-5" style="color: var(- -bs-red)"
			href="accueil.jsp">Eat & Love</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="SArticle">Notre
						carte</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="connexion.jsp">Connexion</a></li>
				<li class="nav-item"><a class="nav-link" href="inscription.jsp">Inscription</a>
				</li>
				<li class="nav-item"><a class="nav-link"
					href="../ProjetWeb/SPanier">Mon menu</a></li>
			</ul>
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
		</div>
	</div>
	</nav> </header>



	<main> <section class="recap_finale">
	<div class="txt_recap_finale">
		<p>
			Félicitations
			<c:out value="${sessionScope.prenom}" />
			<c:out value="${sessionScope.nom}" />
			!
		</p>
		<p>Votre commande est validée.</p>
		<p>
			Le montant total est de
			<c:out value="${sessionScope.mntTot}" />
			euros.
		</p>
	</div>
	<div class="img_recap_finale">
		<img src="WEB-SRC/img/validee.jpg" alt="Bon appétit" />
	</div>
	</section> </main>



</body>
</html>