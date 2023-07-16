<html>
    <head>
        <title> logForm</title>
        <link rel="stylesheet" href="css/log.css">
    </head>
    <body>
        <div class="container">
            <form >
              <p>Log In</p>
              <input type="email" name="email" placeholder="Email"><br>
              <input type="password"name="motdepasse" placeholder="Mot de passe"><br>
              <input type="submit" name="Envoyer" value="Connexion"><br>
              <a href="#">Mot de passe oublié</a>
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

if(isset($_POST['Envoyer']))
{
    if(!empty($_POST['email']) AND !empty($_POST['motdepasse']))
    {
        $email = htmlspecialchars(strip_tags($_POST['email'])) ;
        $passwoord = htmlspecialchars(strip_tags($_POST['motdepasse']));
        
        function getUser($email, $passwoord){
        if(require("database/connexion.php")){
          $req = $access->prepare("SELECT * FROM utilisateur ");
      
          $req->execute();
      
          if($req->rowCount() == 1){
            
            $data = $req->fetchAll(PDO::FETCH_OBJ);
      
            foreach($data as $i){
              $mail = $i->email;
              $mdp = $i->motdepasse;
            }
      
            if($mail == $email AND $mdp == $passwoord)
            {
              return $data;
            }
            else{
                return false;
            }
      
          }
      
        }
      }
        $user = getUser($email, $passwoord);

        if($user){
            
            header('Location: HtmlPage.html');
        }else{
           echo "Vous n etes pas inscrit(e)";
        }
    }

}

?>