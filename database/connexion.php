<?php

try {
		$access=new pdo("mysql:host=localhost;dbname=siteeco;charset=utf8", "root", "ASMAASMA");
		
		$access->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);

} catch (Exception $e) 
{
	$e->getMessage();
}
    
    


?>