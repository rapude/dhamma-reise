<?php 
session_start();
require './logic/Centre.class.php';
require './logic/Event.class.php';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="application/xhtml+xml;charset=utf-8" />
<meta name="google-site-verification" content="z5nWBQFi1Hh6OMcFON3qsqWvVXXpL-sucwg71j_hymM" />
<title>Dhamma-Reise</title>
<?php
include 'layout_inc/css.inc.php'; 
?>
</head>
<body>
 
<div id="container">
<?php
include 'layout_inc/title.inc.php'; 
?>

<?php 
// Deciding whether request comes with Centre's identifier
$centre      = new Centre();
$centreIdent = $_GET['centreIdent'];

if ($centreIdent == null) {
	unset($_SESSION['centreIdent']);
} else {
	$_SESSION['centreIdent'] = $centreIdent;	
}

if ($centreIdent != null) {
	$oneCentre = $centre->getCentreByStrIdent($centreIdent);
	
	// if centre id has been set echo one table
	if ($oneCentre == null) {
		echo "<strong>Achtung: </strong>Kein Zentrum mit diesem Namen gefunden. 
		Bitte wenden Sie sich an ";
		include './layout_inc/email_obfuscator.inc.php';
	} else {
		include './layout_inc/centre-table.inc.php'; 
	}
} else {
	// getting all centres
	$allCentres = $centre->getAllCentres();
	
	// iterating over all and write each to one table
	foreach ($allCentres as $oneCentre) {
		// checking out each centres String identifier
		$centreIdentArray = $centre->getIdentById($oneCentre['id']);
		$centreIdent      = $centreIdentArray['str_identifier'];
		include './layout_inc/centre-table.inc.php'; 
	}
}
?>

<?php 
if ($oneCentre != null) {
	include './layout_inc/footer.inc.php';
}
?>
</div>
</body>
</html>
