<?php

require("database/commandes.php");
$table = "eyshadows";

  $Produits=afficherUnProduit(6);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>product carad</title>
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/prod.css">
    
</head>
<body>  <nav>
  <div class="logo">Ladies'Choice</div>
  <div class="links">
    <a href="panier.php" class="cart-button">Panier</a>
    <a href="inscription.php" class="signup-button">S'inscrire</a>
  </div>
</nav>
<header>

  </header>
    <div class="container">

        <div class="header">
            <h1>Mascaras</h1>
        </div>
        <div class="products">
    <?php foreach($Produits as $produit): ?> 
        <form action="panier.php?id=<?= $produit->id?>" method="post">
            <input type="hidden" name="produit_id" value="<?= $produit->id ?>">
            <div class="product">
                <div class="image">
                    <img src="<?= $produit->image ?>" alt="">
                </div>
                <div class="namePrice">
                    <h3><?= $produit->nom ?></h3>
                    <span>$ <?= $produit->prix ?></span>
                </div>
                <p><?=  $produit->description; ?> </p>
                <div class="stars">
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-solid fa-star"></i>
                    <i class="fa-regular fa-star"></i>
                </div>
                <div class="bay">
                <input type="hidden" name="n" value="<?= $produit->nom ?>">
                <input type="hidden" name="p" value="<?= $produit->prix ?>">
                <input type="hidden" name="q" value="1">
                    <button type="submit" name="cart"> Ajouter au Panier </button>
                </div>
            </div>
        </form>
    <?php endforeach; ?>
</div>
    </div>

    
    
    <script src="js/all.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>