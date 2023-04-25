<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="WEB-SRC/styles/header.css" />

<title>Insert title here</title>
</head>
<body>

<header class="header">
        <div class="header__baniere">
          <img class="header__baniere__img" src="WEB-SRC/img/logo.jpg" alt="image-baniere" />
        </div>

        <!-- Ajouter la classe active sur le a de la page appelée -->
        <!-- Quand on est connecté : faire disparaître les liens login et inscription -->
        <!-- Faire apparaître un lien déconnexion -->
        
        <nav class="navbar navbar-expand-sm navbar-dark italic fs-5" style="background-color: #3cb371">
          <div class="container-fluid">
            <a class="navbar-brand fs-5" style="color: var(--bs-red)" href="#">Eat
              & Love</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
              <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="carte.jsp">Notre
                    carte</a></li>
                <li class="nav-item"><a class="nav-link active" href="connexion.jsp">Connexion</a></li>
                <li class="nav-item"><a class="nav-link" href="inscription.jsp">Inscription</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </header>

</body>
</html>