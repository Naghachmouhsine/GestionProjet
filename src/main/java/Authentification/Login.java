package Authentification;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import connexion.Auth;
import connexion.Connexion;

/**
 * Servlet implementation class Login
 */
@WebServlet({"/loginDirecteurs", "/loginChefProjets", "/loginDeveloppeurs"})
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.print("good");
	}

	
 	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		 String email = request.getParameter("email");
	     String motDePasse = request.getParameter("motDePasse");
	    
	       
	        
	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	        
	try {
		Auth a=new Auth();
		
	//--------------------  I - // Authentification  Directeur ------------------------------------------  
	  if (request.getServletPath().equals("/loginDirecteurs")) {        
	    if (email == null || email.isEmpty() || motDePasse == null || motDePasse.isEmpty()) {
	    	//  messageErreur(response);
	       response.sendRedirect("/loginDirecteurs");
	    } else {
	              ResultSet resultSet = a.authenticationUser(email, motDePasse,"Directeur");
	             if (resultSet.next()) {   
	            	 out.println("Bonjour Directeur ");
	             	  //response.sendRedirect("/Directeur/InterfacePrincipaleDirecteur.jsp");
	             } else {    
	            	 // Les informations d'identification sont incorrectes            
	                // response.sendRedirect("/loginDirecteur");
	            	  // messageErreur(response);
	             }
	            }
	 }
	  
	//--------------------  II - // Authentification Chef de Projet ------------------------------------------
	  else if (request.getServletPath().equals("/loginChefProjets")) {
		    if (email == null || email.isEmpty() || motDePasse == null || motDePasse.isEmpty()) {
		    	 response.sendRedirect("/loginChefProjets");
		    	//messageErreur(response);
		    } else {
		    	 ResultSet resultSet = a.authenticationUser(email, motDePasse, "ChefProjet");
		            if (resultSet.next()) {   
		            	 out.println("Bonjour ChefProjet ");
		             	 // response.sendRedirect("/ChefProjet/InterfacePrincipaleChefProjet.jsp");
		             } else {           
		                 // response.sendRedirect("/loginChefProjet");
		            	    // messageErreur(response);
		             }
		            }
	 }  

	//--------------------  III - // Authentification du Développeur ------------------------------------------
	  else if (request.getServletPath().equals("/loginDeveloppeurs")) {
		    if (email == null || email.isEmpty() || motDePasse == null || motDePasse.isEmpty()) {
		    	// response.sendRedirect("/loginDeveloppeur");
		    	//messageErreur(response);
		    } else {
		    	 ResultSet resultSet = a.authenticationUser(email, motDePasse, "Developpeur");
		            if (resultSet.next()) { 
		            	 out.println("Bonjour Developpeur ");
		             	 // response.sendRedirect("/Developpeur/InterfacePrincipaleDeveloppeur.jsp");
		             } else {           
		                 // response.sendRedirect("/loginDeveloppeur");
		            	// messageErreur(response);
		             }
		            }
	 }
	  
		} catch (SQLException e) {
			e.printStackTrace();
		} 
	}
	     
	     
	}


