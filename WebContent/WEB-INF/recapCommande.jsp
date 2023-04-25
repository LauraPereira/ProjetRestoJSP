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



<!--       IMPORT POLICES
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&display=swap"
      rel="stylesheet"
    /> -->

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Commande</title>
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
		<a class="navbar-brand fs-5" style="color: var(- -bs-red)" href="#">Eat
			& Love</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="carte.jsp">Notre
						carte</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="connexion.jsp">Connexion</a></li>
				<li class="nav-item"><a class="nav-link" href="inscription.jsp">Inscription</a>
				</li>
			</ul>
		</div>
	</div>
	</nav> </header>


	<main>

	<div class="user_infos">

		<p>
			Récaputulatif de la commande de
			<c:out value="${sessionScope.prenom}" />
			<c:out value="${sessionScope.nom}" />
			:
		</p>
	</div>

	<div class="container">
		<p></p>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Articles</th>
					<th>Quantité</th>
					<th>Prix total</th>
				</tr>
			</thead>
			<tbody>


				<c:forEach var="infos" items="${sessionScope.lstI}">
					<tr>
						<td><c:out value="${infos.key}" /></td>
						<c:forTokens items="${infos.value}" delims="," var="split">
							<td><c:out value="${split}" /></td>
						</c:forTokens>
					</tr>
				</c:forEach>
			</tbody>

			<tfoot>
				<tr>
					<th>Total de la commande</th>
					<th><c:out value="${sessionScope.lstI.size()}" /> article(s)</th>
					<th><c:out value="${sessionScope.mntTot}" />
					<th>
				</tr>
			</tfoot>


		</table>
	</div>




	</main>



</body>
</html>