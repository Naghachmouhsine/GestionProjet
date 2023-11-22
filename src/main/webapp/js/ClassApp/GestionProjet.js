function verfieNom(nom){
	 var exist=true;
	   $.ajax({
            type: "POST",
            data  : {nom: nom},
            url: "http://localhost:8080/GestionProjet/Projet", 
            success: function(response) {
                
            },
            error: function(error) {
                console.log("Erreur AJAX: " + error);
                
            }
        });
        return exist;
}
$('.InfoProjet:not(:first)').prop('disabled', true);
$(document).ready(function () {
      $('.InfoProjet').keypress(function (e) {
        if (e.which === 13) {
          e.preventDefault();
          
          $('.Projet').prop('disabled', false);
        }
      });
    });