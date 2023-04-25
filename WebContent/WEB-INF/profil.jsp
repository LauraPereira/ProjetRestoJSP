<%@page import="model.Commande"%>
<%@page import="java.util.ArrayList"%>
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
<title>Mon Espace</title>
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
					href=""><%=prenom + " " + nom%> - Mon espace</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="./deconnexion">Déconnexion</a>
				</li>
			</ul>
		</div>
	</div>
	</nav> </header>

    <main class="profil mt-5">
      <div class="mt-3">
        <h2 class="italic" style="color: var(--bs-red)">Mes informations</h2>

        <h5 class="mt-4"><%=prenom + " " + nom%></h5>

        <form action="modifyAdress" method="post">
          <div class="mb-3">
            <label for="adresse" class="form-label"></label>
            <input
              type="text"
              class="form-control"
              value="<%=request.getAttribute("adresse")%>"
              name="adresse"
            />
          </div>

          <button
            type="submit"
            class="btn btn-primary"
            style="background-color: #3cb371"
          >
            Modifier mon adresse
          </button>
        </form>
      </div>

      <div class="profil mt-5">
        <h2 class="italic" style="color: var(--bs-red)">Mes commandes</h2>
        
        <% ArrayList<Commande> liste = (ArrayList<Commande>) request.getAttribute("commandes");
        if(liste.isEmpty()){
        	out.print("<p> Votre historique de commande est vide</p>");
        }
        %>
        
        <table class="table">
          <thead>
            <tr>
              <th>Date</th>
              <th>Détail</th>
              <th>Total</th>
            </tr>
          </thead>
          <tbody>
          
                  <%
		
            for (Commande c : liste) {
                out.print("<tr> <td>" + c.getDate() + " </td><td>" + c.getDetail() + "</td><td>" + c.getTotal()+ "</td></tr>");

            }
        %>
         
          </tbody>
        </table>
      </div>
    </main>
</body>
</html>