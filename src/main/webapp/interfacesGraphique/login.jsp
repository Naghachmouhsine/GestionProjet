<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Authentification</title>
<link rel ="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>


  <form action="/projet_informatique/loginChefProjets" method="POST">
  <!-- Email input -->
  <div class="content">
  <div class="form-outline mb-4">
    <label class="form-label" for="email">Email </label>
    <input type="email" name="email" id="email" class="form-control" />
  
  </div>

  <!-- Password input -->
  <div class="form-outline mb-4">
  <label class="form-label" for="motDePasse">Mot de passe</label>
    <input type="password" name="motDePasse" id="motDePasse" class="form-control" />
    
  </div>
  <div class="text-center">
   
    <button type="submit" class="btn btn-primary">Se connecter</button>
   </div>
   </div> 
</form>
</body>
</html>