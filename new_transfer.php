<?php 
session_start();
require './logic/Transfer.class.php';
require './logic/Centre.class.php';
require './logic/Event.class.php';

$offer   = false;
$success = false;

if ($_GET['mode'] == "offer") {
	$offers = true;
}

$transferId = $_GET['transferId'] ;

if (isset($_POST['send'])) {	
	$transfer = new Transfer();
	$transfer->insertNewTransfer($_GET['eventId'], $_POST, $offers);
	$success = true;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script language="JavaScript">
function chkForm(){
	if ((document.newTransfer.name.value==false)||
            (document.newTransfer.email.value==false)||
            (document.newTransfer.start.value==false)||
            (document.newTransfer.destination.value==false)||
            (document.newTransfer.message.value==false)) {
        alert("Bitte geben Sie einen Namen,\neine E-Mail Adresse,\nStart/Ziel und eine Nachricht ein! ");
        return false;
	}
	return true;
}
 </script>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="noindex">
<?php
include 'layout_inc/css.inc.php'; 
?>
<style type="text/css">
<!--
.style1 {color: #9f1a0b}
-->
</style>
</head>

<body>
<div id="container">
<?php
include 'layout_inc/title.inc.php';
?>


		<h2><?php if ($offers) {
			echo '<h3>Neues Mifahrangebot einstellen</h3>';
		} else {
			echo '<h3>Neues Mitfahrgesuch einstellen</h3>';
		}
		?></h2>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td width="50%">&laquo; <a href="index.php?centreIdent=<?php echo $_SESSION['centreIdent']?>&<?=SID?>">&nbsp;Zur Startseite&nbsp;</a></td>
		<td width="50%" align="right"><?php 
		if ($offers) {
			?>
		<a href="all_transfer.php?eventId=<?php echo $_GET['eventId']?>&amp;centreId=<?php echo $_GET['centreId']?>&amp;mode=offer&amp;<?=SID?>">&nbsp;Mitfahrangebote&nbsp;</a> &raquo;
		<?php
		} else {
			?>
		<a href="all_transfer.php?eventId=<?php echo $_GET['eventId']?>&amp;centreId=<?php echo $_GET['centreId']?>&amp;mode=request&amp;<?=SID?>">&nbsp;Mitfahrgesuche&nbsp;</a> &raquo;
		<?php
		}
		?></td>
	</tr>
	<?php if (sizeof($allTransfer) == 0) {
		?>
	<?php
	}
	?>
</table>

<?php
if ($success) {
?>
<br/>
  <div class="box">
    <table width="100%" border="0" cellspacing="0" cellpadding="4">
    	<tr>
				<td style="padding:15px;">Ihr Eintrag wurde erfolgreich &uuml;bermittelt und kann jetzt von allen Nutzern f&uuml;r eine Veranstaltung ausgew&auml;hlt werden.<br />
				  <br />
        <strong>Vielen Dank! </strong></td>
  	  </tr>
  	</table>
  </div>
  
<?php }
if (!$success) {
?>


  <p>Hier k&ouml;nnen Sie ein neues 
 		<?php if ($offers) {
			echo 'Mitfahrangebot ';
		} else {
			echo 'Mitfahrgesuch ';
		}
		?>
einstellen. Die Daten werden automatisch in die Datenbank eingetragen und m&ouml;gliche Nutzer k&ouml;nnen sich dann mit Ihnen Verbindung setzen. <br />
    Die mit einem Sternchen gekennzeichneten Felder sind Pflichtfelder.<br />
  <br />
  <strong>Ihre Mailadresse wird für die Kontaktaufnahme ben&ouml;tigt, 
ist aber zu keinem Zeitpunkt, auch nicht für Interessenten, öffentlich sichtbar.
Alle anderen Daten sind es jedoch schon und werden evtl. auch von Suchmaschinen gefunden und indexiert. <br/>Zum Schutz ihrer Privatsphäre sollten Sie 
deshalb keine Daten wie Telefonnummer, Nachname usw. eintragen, 
Interessenten können Sie trotzdem über das Kontaktformular erreichen, auch ohne Kenntnis ihrer Mailadresse oder anderer Daten.</strong></p
  
  <div class="box">
		<?php
		$centre         = new Centre();
		$centreName = $centre->getNameById($_GET['centreId']);

		$events      = new Event();
		$eventInfo  = $events->getEventById($_GET['eventId']);
		
		if ($offers) {
		?>
		<form action="new_transfer.php?eventId=<?php echo $_GET['eventId']?>&centreId=<?php echo $_GET['centreId']?>&mode=offer&transferId=<?php echo $_GET['transferId']?>&<?=SID?>" onsubmit="return chkForm();" name="newTransfer" method="post">
		<?php
		} else {
		?>
		<form action="new_transfer.php?eventId=<?php echo $_GET['eventId']?>&centreId=<?php echo $_GET['centreId']?>&mode=request&transferId=<?php echo $_GET['transferId']?>&<?=SID?>" onsubmit="return chkForm();" name="newTransfer" method="post">
		<?php 
		}
		?>		

		<table width="100%" border="0" cellspacing="0" cellpadding="4">
      <colgroup>
        <col width="29%">
        <col width="71%">
      </colgroup>
			<tr class="odd">
				<td>Veranstalter:</td>
				<td><?php echo $centreName ?></td>
			</tr>
			<tr class="even">
				<td>Veranstaltung:</td>
				<td class="style13"><?php echo $eventInfo['title'] ?></td>
			</tr>
			<tr class="odd">
				<td>Veranst. Ort:</td>
				<td><?php echo $eventInfo['destination'] ?></td>
			</tr>
			<tr class="even">
				<td>Datum:</td>
				<td><?php echo date("d.m.Y",strtotime($eventInfo['ev_date'])) ?>
				<input type="hidden" name="transferDate" value="<?php echo date("d.m.Y",strtotime($eventInfo['date'])) ?>"/></td>
			</tr>
			<tr class="odd">
			  <td>Veranstaltungs Id:</td>
			  <td><?php echo $_GET['eventId'] ?></td>
		  </tr>
		</table>				

		<table width="100%" border="0" cellpadding="4" cellspacing="0" class="even">
      <colgroup>
        <col width="29%">
        <col width="71%">
      </colgroup>
			<tr class="even">
			  <td>Name:<span class="style1">*</span></td>
			  <td><input name="name" type="text" id="name" size="50"></td>
		  </tr>
			<tr class="even">
			  <td>E-Mail:<span class="style1">*</span></td>
			  <td><input name="email" type="text" id="email" size="50" /></td>
		  </tr>
			<tr class="even">
				<td>Start:<span class="style1">*</span></td>
			    <td ><input name="start" type="text" id="start" size="50"  /></td>
			</tr>
			<tr class="even">
			  <td>&Uuml;ber: </td>
			  <td><input name="via" type="text" id="via" size="50"></td>
		  </tr>
			<tr class="even">
			  <td>Ziel:<span class="style1">*</span></td>
			  <td><input name="destination" type="text" id="destination" size="50"></td>
		  </tr>
			<tr class="even">
				<td>Nachricht:<span class="style1">*</span></td>
				<td><textarea name="message" cols="70" rows="10" id="message"></textarea></td>
			</tr>
			<tr class="even">
		    <td>&nbsp;</td>
				<td><input class="submit" type="submit" name="send" value="Senden" /><br /><br /></td>
			</tr>
		</table>

  </form>
  
</div>

<?php } ?>

		<?php
		include './layout_inc/footer.inc.php';
		?>
</div>
</body>
</html>

