<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter Projet</title>
  <link rel="stylesheet" href="../css/sideBar.css">
  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <script src="../js/all.min.js"></script>
  <script src="../js/bootstrap.bundle.min.js"></script>
  <script src="../js/jquery.js"></script>
  <script src="../js/all.min.js"></script>
  <script src="../js/ClassApp/GestionProjet.js"></script>
</head>
<body>
  <div class="d-flex ">    <!-- Debut Side Bare -->
    <div class="main-contaier d-flex " >
        <div class="sidebare " id="side-nav" >
            <div class="header-box px-2 pb-4 d-flex justify-content-between">
                <h1 class="fs-4 mt-4 d-flex align-items-center">
                    <img src="../images/Photo.png" alt="Profile Picture" class="profile-picture me-2" />
                    <span class="text-white"><em>Naghach Mouhsine</em></span>
                </h1>
                <button onclick="$('#side-nav').css('margin-left','-350px');" class="btn d-md-none d-block btn-close btn-close-white close-btn px-1 py-0 text-white mt-2"></button>
            </div>
            <ul class="list-unstyled px-2 mt-3" id="bar">
                <li ><a href="" class="text-decoration-none px-3 py-2 d-block "><i class="fa-solid fa-chart-line"></i> Dashboard</a></li>
                <li class="active"><a href="" class="text-decoration-none px-3 py-2 d-block ">Ajouter Projet</a></li>
                <li><a href="" class="text-decoration-none px-3 py-2 d-block">Consulter Projet</a></li>
                <li ><a href="" class="text-decoration-none px-3 py-2 d-block"><i class="fa-regular fa-bell"></i> Notifications<strong class="ms-3">3</strong></a></li>
                <li ><a href="" class="text-decoration-none px-3 py-2 d-block"><i class="fa-solid fa-user me-2"></i>Profile</a></li>
                <li ><a id="logOut" href="#" class="text-decoration-none px-3 py-2 d-block"><i class="fa fa-sign-out me-2"></i>Déconnexion</a></li>
            </ul>
        </div>
        <div class="content ">
            <nav class="navbar navbar-expand-lg navbar-light ">
                <div class="container-fluid">
                    <div class="d-flex justify-content-between d-md-none d-block">
                        <button class="navbar-toggler"  type="button" onclick="$('#side-nav').css('margin-left','0');">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                    </div> 
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                      <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#"></a>
                      </li>
                    </ul>
                </div> 
               </div>
            </nav>
        </div> 
    </div>
    <!-- Fin SIde Bare -->
    <div class="contenue  flex-grow-1  mt-5 mb-5 me-5 ms-0">
      <div class="card bg-info ">
        <div class="card-body ">
     <!--  <form  name="infoProjet" > --> 
         <div class="row ">
          <div class="card CardinfoProjet  col-md-6">
            <div class="card-body">
              <h4 class="card-title text-center">Info Projet</h4>       
                <div class="mb-3 mt-3">
                  <label for="nom" class="form-label">Nom Projet:</label>
                  <input type="text" class="form-control InfoProjet" id="nom"  name="nom">
                </div>
                <div class="mb-3">
                  <label for="description">Description:</label>
                  <textarea class="form-control InfoProjet" rows="5" id="description" name="description"></textarea>
                </div>
                <div class="mb-3">
                  <label for="dateDemarage" class="form-label">Date démarage:</label>
                  <input type="date" class="form-control InfoProjet" id="dateDemarage"  name="dateDemarage">
                </div>
                <div class="mb-3">
                  <label for="dateLivraison" class="form-label">Date Livraison:</label>
                  <input type="date" class="form-control InfoProjet" id="dateLivraison"  name="dateLivraison">
                </div>
            </div>
          </div>
          <div class="card CardinfoClient    col-md-6 " >
            <div class="card-body">
              <h4 class="card-title text-center">Info Client</h4>
                <div class="mb-3 mt-3">
                  <label for="cin" class="form-label">CIN :</label>
                  <input type="text" class="form-control" id="cin"  name="cin">
                </div>
                <div class="mb-3">
                  <label for="nomCli">Nom:</label>
                  <input type="text" class="form-control" rows="5" id="nomCli" name="nomCli">
                <div class="mb-3">
                  <label for="prenomCli">Prenom:</label>
                  <input type="text" class="form-control" rows="5" id="prenomCli" name="prenomCli">
                </div>
                <div class="mb-3">
                  <label for="telephone" class="form-label">Telephone:</label>
                  <input type="tel" class="form-control" id="telephone"  name="telephone">
                </div>
              </div>
            </div>
          </div>
          </div>
          <div class="card CardinfoClient  mt-2 " >
            <div class="card-body">
              <h4 class="card-title text-center">Info Chef Projet</h4>
                <div class="mb-3 mt-3">
                  <label for="nomChefProjet" class="form-label">Chef Projet :</label>
                  <select name="nomChefProjet" id="nomChefProjet" class="form-select">                 
                  </select>
                </div>
            </div>
          </div>
          <div class="d-flex justify-content-center mt-2">
             <input class="btn btn-primary" type="submit" onclick="verfieNom('naghach')">
          </div>
      <!--  </f   -->   
        </div>
      </div>
    </div>
  </div>
</body>
</html>