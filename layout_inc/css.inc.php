<?php
$curCss =$_GET['centreIdent'] != null ? $_GET['centreIdent'] : $_SESSION['centreIdent'];
if (strcmp($curCss, "charlie_pils") == 0) {
	echo '<link rel="stylesheet" type="text/css" href="css/style_charlie_pils.css">';	
} else {
	echo '<link rel="stylesheet" type="text/css" href="css/style.css">';
}
?>