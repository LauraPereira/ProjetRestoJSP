<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>

      <!-- IMPORT BOOTSTRAP ET STYLES -->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


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
      <title>Accueil</title>
    </head>

    <body class="resto">

      <%-- <jsp:include page="WEB-SRC/components/header.jsp"></jsp:include>
        --%>

        <header class="header">
          <div class="header__baniere">
            <img class="header__baniere__img" src="WEB-SRC/img/logo.jpg" alt="image-baniere" />
          </div>

          <!-- 	Ajouter la classe active sur le a de la page appelée Quand on est
	connecté : faire disparaître les liens login et inscription Faire
	apparaître un lien déconnexion  -->
          <nav class="navbar navbar-expand-sm navbar-dark italic fs-5" style="background-color: #3cb371">
            <div class="container-fluid">
              <a class="navbar-brand fs-5" style="color: var(--bs-red)" href="#">Eat
                & Love</a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#collapsibleNavbar">
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

        <body>


          <section id="carousel">
            <div class="carousel slide" data-bs-ride="carousel" id="conteneur">
              <ol class="carousel-indicators">
                <button type="button" data-bs-target="#conteneur" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#conteneur" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#conteneur" data-bs-slide-to="2"></button>
                <button type="button" data-bs-target="#conteneur" data-bs-slide-to="3"></button>
                <button type="button" data-bs-target="#conteneur" data-bs-slide-to="4"></button>
              </ol>
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img class="d-block" src="WEB-SRC/img/salade-Caprese.jpg" alt="exemple d'entrée" />
                  <div class="carousel-caption">
                    <p>Des entrées préparées avec amour</p>
                  </div>
                </div>
                <div class="carousel-item">
                  <img class="d-block" src="WEB-SRC/img/pateitalienne.jpg" alt="exemple d'entrée" />
                  <div class="carousel-caption">
                    <p>Des plats concotés avec amour</p>
                  </div>
                </div>
                <div class="carousel-item">
                  <img class="d-block" src="WEB-SRC/img/tiramisu1.png" alt="exemple d'entrée" />
                  <div class="carousel-caption">
                    <p>Des desserts élaborés avec amour</p>
                  </div>
                </div>
                <div class="carousel-item">
                  <img class="d-block" src="WEB-SRC/img/limonade.jpg" alt="exemple d'entrée" />
                  <div class="carousel-caption">
                    <p>Des boissons sélectionnées avec amour</p>
                  </div>
                </div>
              </div>
              <a class="carousel-control-prev" type="button" data-bs-slide="prev" href="#conteneur"> <span
                  class="carousel-control-prev-icon"></span>
              </a> <a class="carousel-control-next" type="button" data-bs-slide="next" href="#conteneur"> <span
                  class="carousel-control-next-icon"></span>
              </a>
            </div>
          </section>





        </body>

        <footer>
          <div class="social_media">
            <img class="sm_img" src="WEB-SRC/img/banniere.PNG" alt="icônes réseaux sociaux">
          </div>
          

          <section class="contact_section">
          
            <div class="location">
              <h2>Où nous trouver :</h2>
              <img src="WEB-SRC/img/location.jpg" alt="plan d'accès">
            </div>



            <div class="container mt-3">
              <h2>Nous contacter</h2>
              
              <form>
                <div class="row">
                  <div class="col">
                    <input type="text" class="form-control" placeholder="nom" name="nom">
                  </div>
                  <div class="col">
                    <input type="password" class="form-control" placeholder="email" name="email">
                  </div>
                </div>
                <div class="mb-3 mt-3">
                  <label for="comment">Votre message :</label>
                  <textarea class="form-control" rows="5" id="message" name="text"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Envoyer</button>
              </form>

          </section>
        </footer>


    </body>

    </html>