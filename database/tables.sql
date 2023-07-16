
CREATE DATABASE siteeco;
USE siteeco; 

CREATE TABLE utilisateur
(
    nom VARCHAR(100) NOT NULL,
    telephone INT, 
    email VARCHAR(255) NOT NULL, 
    motdepasse VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `administrateur`;
CREATE TABLE IF NOT EXISTS `administrateur` (
  `nameAdmin` varchar(20) NOT NULL,
  `password_a` varchar(20) NOT NULL,
  PRIMARY KEY (`nameAdmin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `idCom` int NOT NULL AUTO_INCREMENT,
  `idp` int NOT NULL,
  `idu` int NOT NULL,
  `nomp` varchar(30) NOT NULL,
  `quantity` int NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`idCom`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `produit` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idcategory` varchar(30) NOT NULL,
  `image` text NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prix` int(11) NOT NULL,
  `description` text NOT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



INSERT INTO produit (`idcategory`,`image`, `nom`, `prix`, `description`) VALUES
('1','https://pngimg.com/d/lipstick_PNG76224.png', 'Matte Lipstick', 25, 'A creamy rich Lipstick formula with high colour payoff in a no-shine matte finish.'),
('1','https://sdcdn.io/mac/us/mac_sku_SG7312_1x1_0.png?width=1440&height=1440', 'Love me Lipstickw', 20, 'A weightless argan oil-infused lipstick that delivers an instant hit of powerful colour and all-day moisture in a luxurious satin-soft finish.'),
('1','https://sdcdn.io/mac/us/mac_sku_SG7306_1x1_0.png?width=1440&height=1440', 'Super Lustrous™ Lipstick', 450, 'Super vibrant. Super lush. Super creamy.'),
('1','https://sdcdn.io/mac/us/mac_sku_M5L911_1x1_0.png?width=1440&height=1440', 'Velvet Matte Lipstick', 520, 'First, the Matte-rs of fact: this full coverage, full-bodied, velvet-finish lipstick is dramatic beauty of a higher skintelligence.'),
('1','https://www.pngmart.com/files/4/Lipstick-PNG-Transparent-Image.png', 'Moisture Shine Lipstickk', 59, 'A colour-rich lipstick that delivers an effortless sweep of colour and luminous shine finish.');

INSERT INTO produit (`idcategory`,`image`, `nom`, `prix`, `description`) VALUES
('2','https://www.narscosmetics.co.uk/dw/image/v2/BCMQ_PRD/on/demandware.static/-/Sites-itemmaster_NARS/default/dw193f2667/hi-res/2022/SUMMER_EDIT/EYESHADOW_PALETTE/NARS_SU22_SummerEdit_PDPCrop_Soldier_Unrated_EyeshadowPalette_Open_GLBL_2400x2400_B.jpg?sw=1500&sh=1500&sm=fit', 'Summer palette', 25, 'A limited-edition eyeshadow palette featuring 16 shades in matte, shimmer, and glitter finishes.'),
('2','https://cdn.shopify.com/s/files/1/1583/0411/products/eyeshadow2020_1_1024x.jpg?v=1662647787', 'Everyday Eyeshadow', 59, 'Our Everyday Eyeshadow palette was designed with your melanin in mind, and this ultra-chic, slim-fit packaging makes it much easier to take on-the-go.'),
('2','https://cdn.shopify.com/s/files/1/0281/9797/8187/products/21330_1_800x.jpg?v=1622030640', 'Shades Matte', 450, '[FULL FACE EYESHADOW PALETTE]-Totally 35 shades eyeshadow from light to dark colors,natural to bright. you can use the light color as base, the dark'),
('2','https://ma.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/78/580533/1.jpg?3544', 'Rose Eyeshadow', 520, 'Shop Patrick Ta’s Major Dimension II Rose Eyeshadow Palette at Sephora. This palette contains cream bases, matte and metallic eyeshadows, and toppers.'),
('2','https://cdn.shopify.com/s/files/1/0736/4041/products/EP_BIB_LT1.progressive.jpg?v=1660605356', 'Eyes To Mesmerize', 20, 'Shop Charlotte Tilbury’s Eyes to Mesmerize Cream Eyeshadow at Sephora. This long-lasting cream eyeshadow features an easy, non-creasing formula.');

INSERT INTO produit (`idcategory`,`image`, `nom`, `prix`, `description`) VALUES
('3','https://eco-beauty.dior.com/dw/image/v2/BDGF_PRD/on/demandware.static/-/Sites-master_dior/default/dw9a054073/assets/Y0996356/Y0996356_F000355999_E01_GHC.jpg?sw=715&sh=773&sm=fit', 'Dior', 25, 'Vernis Haute Couleur Haute Tenue'),
('3','https://maquibeauty.fr/images/productos/essence-esmalte-de-unas-gel-nail-colour-023-tangerine-ahead-2-69963.jpeg', 'Essence', 20, 'Obtenez des ongles de rêve avec les vernis à ongles Gel Nail Colour Essence.'),
('3','https://www.ilnp.com/wp-content/uploads/2023/02/Strawberry-Shake-600x600.jpg', 'Sugar High', 450, 'Sugar High is a milky-white based speckled nail polish with an assortment of metallic flakes.'),
('3','https://picturepolish.com.au/wp-content/uploads/2014/03/beige-nail-polish-by-picture-polish.png','Beige Nail Polish', 520, 'For stylish nails that fly under the radar, Beige nail polish is a fashionable choice. '),
('3','https://www.zinabel.ma/8779-large_default/vernis-a-ongles-pretty-fast-essence.jpg','Vernis à ongles',46, 'Sèchent en 40 secondes., Vous puissiez les assortir rapidement à votre tenue du matin.');

INSERT INTO produit (`idcategory`,`image`, `nom`, `prix`, `description`) VALUES
('4','https://www.garnier.fr/-/media/project/loreal/brand-sites/garnier/emea/fr/fr-fr/prd-haircare/ultra-doux-resized/garnier-shampooing-ultra-doux-avocat-karite-000-3600541599062-front_resultat-min.png?rev=89ee328ab4d048ee8ec5aa0dc27d9ccc', 'Ultra Doux', 25, 'Le shampooing Garnier Ultra Doux à l Huile d Avocat convient parfaitement aux cheveux très secs ou frisés.'),
('4','https://www.loreal-paris.com.sg/-/media/project/loreal/brand-sites/oap/apac/sg/products/hair/hair-care/fall-resist/fall-resist-condi-1a.png?rev=1f2a7a5623e2472380e21ed4fb951f0a?w=200&hash=3BA5211C49BC2B37AB71AEACE7DA2A2CB4B1FB85', 'Elseve', 20, 'Sa formule soin transparente, ultra-fine et précieuse nourrit et sublime les cheveux secs.'),
('4','https://images.ctfassets.net/a8l3ylu84syn/3PZJTGcHNftMbpz8yP4biH/ed807319fdada654f8715521f5e11f22/Classic-HerbalEssences_Product-Line.png', 'Herbal Essences', 450, 'Un shampoing qui lisse et répare les cheveux pour les rendre magnifiques.'),
('4','https://res.cloudinary.com/beleza-na-web/image/upload/w_1500,f_auto,fl_progressive,q_auto:eco,w_800/v1/imagens/product/82312/8caefe0f-6e29-48da-91c4-9adda551d63a-joico-moisture-recovery-smart-release-tratamento-capilar-250ml.png','Joico Moisture', 520, 'Le Joico Moisture Recovery Shampoo va nettoyer, nourrir, hydrater et renforcer vos cheveux secs.'),
('4','https://cdn.shopify.com/s/files/1/0267/7348/7668/collections/kerastase-nutritiv-dry-hair-02-350x350.1568130605_large.png?v=1590291946', 'Kérastase ',490, 'Le Bain Fluidéaliste Gentle s adresse aux cheveux traités chimiquement, sur-sollicités, indisciplinés et difficiles à maîtriser.');
INSERT INTO produit (`idcategory`,`image`, `nom`, `prix`, `description`) VALUES
('5','https://cdn.shopify.com/s/files/1/0068/2020/0530/products/Skinceuticalssoothingcleanserfoam1x1_1024x1024.jpg?v=1590303735', 'Soothing Cleanser', 25, 'Apaise les peaux sensibles, fragilisées ou post-procédure; Élimine le maquillage longue tenue'),
('5','https://parapharma.ma/31649-large_default/cetaphil-nettoyant-peaux-grasses-236-ml.jpg', 'Cetaphil ', 20, 'élimine l’excès d’huile avec une action moussante douce pour les peaux grasses ou mixtes.'),
('5','https://m.clinique.ca/media/export/cms/products/1200x1500/cl_sku_7T5R01_1200x1500_0.png', 'Moisturizing Lotion +', 450, 'c est un soin secours qui vient renforcer votre barrière hydrolipidique pour préserver toute la beauté de votre peau.'),
('5','https://cdn11.bigcommerce.com/s-ud6q2n8on9/images/stencil/1280x1280/products/114/390/1__41267__25924.1638792918.png?c=1','Micro-Sculpting Cream', 520, 'cest un soin anti-âge qui hydrate la peau et aide le visage à préserver ses contours ..'),
('5','https://i5.walmartimages.com/asr/271b6d37-00ea-4cda-b1c1-a754f0b48fde.4f7b956831acf60c710c528a079ac9d3.png','No7 HydraLuminous Water ',678, 'No7 Hydraluminous Water Surge Gel Cream est un soin du visage légèrement hydratant et frais. Le gel convient à tous les types de peau.');
INSERT INTO produit (`idcategory`,`image`, `nom`, `prix`, `description`) VALUES
('6','https://sdcdn.io/mac/fr/mac_sku_MN6501_1x1_0.png?width=1080&height=1080', 'Mascara M·A·CStack', 25, 'L application de ce mascara est révolutionnaire et permet de poser autant de couches que besoin sans faire de paquets.'),
('6','https://cdn.shopify.com/s/files/1/0022/7849/0224/products/LORE-9344329172347-1.png?v=1593666720', 'TELESCOPIC LIFT', 20, 'IL allonge bien les cils avec sa brosse double face qui s adapte à tous les yeux. '),
('6','https://www.chanel.com/images//t_one/w_0.43,h_0.43,c_crop/q_auto:good,f_auto,fl_lossy,dpr_1.2/w_620/noir-allure-volume-length-curl-and-definition-mascara-10-noir-0-21oz--packshot-default-190010-8855005069342.jpg', 'NOIR ALLURE Mascara ', 450, 'Son encre infusée d’une pointe de rouge intensifie et apporte de la profondeur au regard. '),
('6','https://hudabeauty.com/dw/image/v2/BCNC_PRD/on/demandware.static/-/Sites-huda-master-catalog/default/dwcdb244cd/images/sfra/mascara/stylized.jpg?sw=1242&sh=1242&sm=fit','MASCARA LEGIT LASHES VOLUME', 520, ' Son écrin doré en édition limitée mais surtout pour son format 2 en 1 avec deux brosses et deux formules.'),
('6','https://resize-elle.ladmedia.fr/rcrop/638,,forcex/img/var/plain_site/storage/images/beaute/maquillage/tendances/les-10-meilleurs-mascaras/sos-lashes-serum-mascara-clarins/93974682-3-fre-FR/SOS-Lashes-Serum-Mascara-Clarins.jpg','SOS LASHES SERUM MASCARA',67, 'Sa formule enrichie en huile de ricin à mi-chemin entre le mascara classique et le soin.');
INSERT INTO produit (`idcategory`,`image`, `nom`, `prix`, `description`) VALUES
('7','https://www.givenchybeauty.com/on/demandware.static/-/Sites-givenchy-beauty-master/default/dw6d4fbbe5/Engraving/INTERDIT/DESKTOP/P069001/INTERDIT_EAU_50_DESKTOP_FINAL.png','Givenchy LInterdit',609, 'L’eau de parfum pour femmes Givenchy LInterdit rappelle les émotions suscitées par le fruit défendu.'),
('7','https://xxivstore.com/wp-content/uploads/2022/08/Burberry-London-For-Her.png', 'Burberry London', 450, 'Vivez l’exceptionnelle atmosphère londonienne sous sa forme la plus sensuelle.'),
('7','https://images.tcdn.com.br/img/img_prod/740326/lancome_la_vie_est_belle_100ml_eau_de_parfum_feminino_5_4_20200109162006.png', 'La Vie Est Belle', 25, 'L’eau de parfum Lancôme La Vie Est Belle est un symbole de liberté et de bonheur.'),
('7','https://cdn.shopify.com/s/files/1/1145/8640/products/chloe-chloe-eau-de-parfum-vaporisateur-f_580x.jpg?v=1640183928', 'Chloé Chloé', 20, 'L’eau de parfum pour femmes Chloé Chloé est pleine d’intempérance, de plaisir et de sensualité.'),
('7','https://cdn2.tendance-parfums.com/media/catalog/product/cache/4aa19f79e4c8443f98fec02ca05a074b/c/e/cerruti-1881-pour-femme-boite-et-flacon-du-parfum.jpg','Cerruti 1881', 520, 'Exprime la douce caresse de la soie sur la peau. Elle souligne votre élégance individuelle et vos goûts raffinés.');

INSERT INTO produit (`id`,`image`, `nom`, `prix`, `description`) VALUES
('8','', 'Summer palette', 25, ''),
('8','', 'Eyes To Mesmerize Eyeshadow', 20, ''),
('8','', 'Shades Matte', 450, ''),
('8','','', 520, ''),
('8','', '');

DROP TABLE IF EXISTS `payement`;
CREATE TABLE IF NOT EXISTS `payement` (
  `idPay` int NOT NULL AUTO_INCREMENT,
  `idClient` int NOT NULL,
  `NumCard` int NOT NULL,
  PRIMARY KEY (`idPay`),
  KEY `idClient` (`idClient`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;