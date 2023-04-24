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

<!-- IMPORT POLICES -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap"
	rel="stylesheet" />

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Connexion</title>
</head>
<body class="resto">
	<header class="header">
	<div class="header__baniere">
		<img class="header__baniere__img" src="WEB-SRC/img/logo.jpg"
			alt="image-baniere" />
	</div>

	<!-- Ajouter la classe active sur le a de la page appelée --> <!-- Quand on est connecté : faire disparaître les liens login et inscription -->
	<!-- Faire apparaître un lien déconnexion --> <nav
		class="navbar navbar-expand-sm navbar-dark italic fs-5"
		style="background-color: #3cb371">
	<div class="container-fluid">
		<a class="navbar-brand fs-5" style="color: var(--bs-red)" href="#">Eat
			& Love</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="#">Notre
						carte</a></li>
				<li class="nav-item"><a class="nav-link active" href="#">Connexion</a>
				</li>
				<li class="nav-item"><a class="nav-link " href="#">Inscription</a>
				</li>
			</ul>
		</div>
	</div>
	</nav> </header>

	<main class="inscription mt-3">
	<form action="">
		<div class="mb-3 mt-3">
			<label for="id" class="form-label">Identifiant</label> <input
				type="text" class="form-control"
				placeholder="Saisir votre identifiant" name="id" />
		</div>

		<div class="mb-3 mt-3">
			<label for="psw" class="form-label">Mot de passe</label> <input
				type="password" class="form-control"
				placeholder="Saisir votre mot de passe" name="psw" />
		</div>

		<button type="submit" class="btn btn-primary"
			style="background-color: #3cb371">Se connecter</button>
	</form>
	</main>
</body>
</html>