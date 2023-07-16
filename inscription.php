
<html>
    <head>
        <title> inscrireForm</title>
        <link rel="stylesheet" href="css/insc.css">
    </head>
    <body>
        <div class="container">
            <form  method="post">
              <p>Bienvenue</p>
              <input type="text" name="FullName"placeholder="FullName" required><br>
              <input type="text" name="Telephone"placeholder="Telephone" required><br>
              <input type="email" name="Email" placeholder="Email" required><br>
              <input type="password" name="passwoord"placeholder="Mot de passe" required><br>
              <input type="submit" name="envoyer" value="Envoyer"><br>
              <a target="_blank" href="log.php">Déja inscrit ?</a>
            </form>
          
            <div class="drop drop-1"></div>
            <div class="drop drop-2"></div>
            <div class="drop drop-3"></div>
            <div class="drop drop-4"></div>
            <div class="drop drop-5"></div>
          </div>
    </body>
</html>


<?php

if(isset($_POST['envoyer'])){
	


	$var=0;
	$bien=true;
	$Nom=htmlentities($_POST['FullName']);
	$Téléphone=htmlentities($_POST['Telephone']);
	$Adresse_Electronique=htmlentities($_POST['Email']);
    $Password=htmlentities($_POST['passwoord']);
	

	if(!empty($Nom) AND !empty($Password) AND !empty($Téléphone) AND !empty($Adresse_Electronique)){ 
		if (!empty($Adresse_Electronique)){
		 if(false == filter_var($Adresse_Electronique,FILTER_VALIDATE_EMAIL)){
		 	 echo 'L\'adresse e-mail est incorrect!</br>';
		 }
		 else{
		 	$var++;
		 }   
		}
		if (!empty($Téléphone)){
		   if(strlen($Téléphone)<10){
				echo "numéro incorrect</br>";
			}
		   else if(strlen($Téléphone)>14){
		        echo "numéro incorrect </br>";
		    }
		    else {
		    	$var++;
		    }
		}

        if(isset($Password) AND isset($Adresse_Electronique)){
            $var++;
        }
        else{
            echo' vous pouvez inscrit';
        }
      
        
	
    }if($var==3){
        
        if(require("database/connexion.php"))
        {

	$req = $access->prepare("INSERT INTO utilisateur (nom,telephone, email,motdepasse) VALUES ('$Nom','$Téléphone','$Adresse_Electronique','$Password')");

    $req->execute();

    return true;

    $req->closeCursor();

   
}

}
}






    



?>