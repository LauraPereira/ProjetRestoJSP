<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
<link rel="stylesheet" href="WEB-SRC/styles/global.css" />
<link rel="stylesheet" href="WEB-SRC/styles/header.css" />
<link rel="stylesheet" href="WEB-SRC/styles/recap.css" />

<!-- IMPORT POLICES -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap"
	rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Connexion Succès</title>
</head>
<body class="resto">

	<header class="header">
	<div class="header__baniere">
		<img class="header__baniere__img" src="images/logo.jpg"
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
				<li class="nav-item"><a class="nav-link" href="carte.jsp">Notre
						carte</a></li>
				<li class="nav-item"><a class="nav-link" href="src/srv/SPanier">Mon menu</a></li>
			</ul>
			<ul class="navbar-nav">
				<li class="nav-item">
					<%
						String prenom = session.getAttribute("prenom").toString();
						String nom = session.getAttribute("nom").toString();
					%> <a class="nav-link disabled" style="color: var(--bs-red)"
					href=""><%=prenom + " " + nom%></a>
				</li>
				<li class="nav-item"><a class="nav-link" href="accueil.jsp">Déconnexion</a>
				</li>
			</ul>
		</div>
	</div>
	</nav> </header>

	<main class="recap mt-3 d-flex justify-content-center">
	<div>
		Connexion réussie ! <br /> Bienvenue <span class="italic"
			style="color: var(- -bs-red)"> <%=prenom + " " + nom%></span> <br />
		<br /> <a href="carte.jsp">Voir note carte</a><br />
	</div>
	</main>
</body>
</html>