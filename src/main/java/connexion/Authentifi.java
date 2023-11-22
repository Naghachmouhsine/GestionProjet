package connexion;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Authentifi {

	// La fonction d'authentification pour les trois Users (Directeur, ChefProjet, Developpeur)
    public ResultSet authenticationUser(String email, String motDePasse, String role) {
    	
		ResultSet res = null;
		String req = "SELECT * FROM user WHERE Email = ? AND MotDepasse = ? AND Role = ?";
		try {
	        PreparedStatement st = Connexion.Cnx.prepareStatement(req);
	      
	        st.setString(1, email);  
	        st.setString(2, motDePasse); 
	        st.setString(3, role); 
	        res = st.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		      return res;
    }
}
