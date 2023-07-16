<?php 
 session_start();
 var_dump($_POST);


?>
<!DOCTYPE html>
<html>
<head>
	<title>Mon panier</title>
	<link rel="stylesheet" type="text/css" href="css/panier.css">
</head>
<body>
	<header>
		<h1>Mon panier</h1>
	</header>

	<div class="container">
		<div class="products">
			<div class="product">
				<img src="https://via.placeholder.com/150x150" alt="product-image">
				<div class="product-info">
					<h3>Produit 1</h3>
					<p>Description du produit 1</p>
					<p>Prix : 10€</p>
					<button class="remove">Supprimer</button>
				</div>
			</div>

			<div class="product">
				<img src="https://via.placeholder.com/150x150" alt="product-image">
				<div class="product-info">
					<h3>Produit 2</h3>
					<p>Description du produit 2</p>
					<p>Prix : 15€</p>
					<button class="remove">Supprimer</button>
				</div>
			</div>
		</div>

		<div class="summary">
			<h2>Récapitulatif de commande</h2>
			<p>Total : 25€</p>
			<button class="checkout">Paiement</button>
		</div>
	</div>

	

	<script src="script.js"></script>
</body>
</html>
