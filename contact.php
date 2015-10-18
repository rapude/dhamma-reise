<?php
session_start();
require './logic/Transfer.class.php';
require './logic/Centre.class.php';
require './logic/Event.class.php';
require './logic/Mailer.class.php';

$offer   = false;
$success = false;

if ($_GET['mode'] == "offer") {
	$offers = true;
}

$transferId = $_GET['transferId'] ;

if (isset($_POST['send'])) {	
	$formMailer = new Mailer();
	$formMailer->sendContactMail($_POST['name'], $_POST['email'], 
	$_POST['nachricht'], $transferId, $_POST['message'], $_POST['title']);
	$success = true;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<script language="JavaScript">
function chkForm(){
	if ((document.kontakt.name.value==false)||
			(document.kontakt.email.value==false)||
			(document.kontakt.nachricht.value==false)) {
		alert("Bitte geben Sie einen Namen,\neine E-Mail Adresse\nund eine Nachricht ein! ");
		return false;
	} 

	return true;
}
 </script>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Dhamma-Reise</title>
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

		<?php if ($offers) {
			echo '<h3>Kontakt zu einem Anbieter aufnehmen</h3>';
		} else {
			echo '<h3>Kontakt zu einem Mitfahrer aufnehmen</h3>';
		}
		?>

<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td width="50%">&laquo; <a href="index.php?centreIdent=<?php echo $_SESSION['centreIdent']?>">Zur Startseite</a></td>
		<td width="50%" align="right"><?php 
		if ($offers) {			?>
		<a href="all_transfer.php?eventId=<?php echo $_GET['eventId']?>&amp;centreId=<?php echo $_GET['centreId']?>&amp;mode=offer&amp;<?=SID?>">&nbsp;Mitfahrangebote&nbsp;</a> &raquo;
		<?php		} else {		?>
		<a href="all_transfer.php?eventId=<?php echo $_GET['eventId']?>&amp;centreId=<?php echo $_GET['centreId']?>&amp;mode=request&amp;<?=SID?>">&nbsp;Mitfahrgesuche&nbsp;</a> &raquo;
		<?php
		}
		?></td>
	</tr>
</table>

<?php
if ($success) {
?>
<br/>
  <div class="box">
    <table width="100%" border="0" cellspacing="0" cellpadding="4">
    	<tr>
				<td style="padding:15px;">Ihre Mail wurde erfolgreich zugestellt und der Empf&auml;nger kann sich jetzt mit Ihnen in Verbindung setzen.</td>
  	  </tr>
  	</table>
  </div>
<?php }
if (!$success) {
?>
  <p>Hier k&ouml;nnen Sie Kontakt<?php if ($offers) {?> zum Anbieter einer Fahrt aufnehmen.<?php } else {?> zu einem Mitfahrer aufnehmen.<?php } ?> Ihre Daten werden per E-Mail &uuml;bertragen und der Empf&auml;nger kann sich dann mit Ihnen in Verbindung setzen.<br />
  Die mit einem Sternchen gekennzeichneten Felder sind Pflichtfelder. </p>
        
  <div class="box">      
		<?php
		$centre         = new Centre();
		$centreName = $centre->getNameById($_GET['centreId']);

		$events      = new Event();
		$eventInfo  = $events->getEventById($_GET['eventId']);
		
		$transfer     = new Transfer();
		$transferInfo = $transfer->getTransferById($transferId);
		
		if ($offers) {
		?>
		<form action="contact.php?eventId=<?php echo $_GET['eventId']?>&centreId=<?php echo $_GET['centreId']?>&mode=offer&transferId=<?php echo $_GET['transferId']?>&<?=SID?>" onsubmit="return chkForm();" name="kontakt" method="post">
		<?php
		} else {
		?>
		<form action="contact.php?eventId=<?php echo $_GET['eventId']?>&centreId=<?php echo $_GET['centreId']?>&mode=request&transferId=<?php echo $_GET['transferId']?>&<?=SID?>" onsubmit="return chkForm();" name="kontakt" method="post">
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
						<td><?php echo $eventInfo['title'] ?></td>
                                                <input type="hidden" name="title" value="<?php echo $eventInfo['title'] ?>"/>
					</tr>
					<tr class="odd">
						<td>Veranst. Ort:</td>
						<td><?php echo $eventInfo['destination'] ?></td>
					</tr>
					<tr class="even">
						<td>Datum:</td>
						<td><?php echo date("d.m.Y",strtotime($eventInfo['ev_date'])) ?>
						<input type="hidden" name="transferDate" value="<?php echo date("d.m.Y",strtotime($eventInfo['ev_date'])) ?>"/>
						</td>
					</tr>
					<tr class="odd">
					  <td>Transfer Id:</td>
					  <td><?php echo $_GET['transferId'] ?></td>
				  </tr>
					<tr class="even">
            <td>Start/Ziel:</td>
            <td><?php echo $transferInfo['start'] . "/" . $transferInfo['destination'] ?></td>
          </tr>
		  </table>
				<br />
				
    		<table width="100%" border="0" cellpadding="4" cellspacing="0">
          <colgroup>
            <col width="29%">
            <col width="71%">
          </colgroup>
					<tr>
					  <td>Name:<span class="style1">*</span></td>
					  <td><input name="name" type="text" id="name" size="50"></td>
				  </tr>
					<tr>
						<td>E-Mail:<span class="style1">*</span></td>
					    <td><input name="email" type="text" id="email" size="50"  /></td>
					</tr>
					<tr>
						<td>Nachricht:<span class="style1">*</span></td>
						<td><textarea name="nachricht" cols="70" rows="10" id="nachricht"></textarea></td>
					</tr>
					<tr>
				    <td>&nbsp;</td>
						<td>
                                                     <div class="hid_css">
   <label for="message">Das folgende Feld muss leer bleiben:</label>
   <input type="text" name="message" id="message" title=" dieses Feld muss leer bleiben " />
</div> 
                                                    <input class="submit" type="submit" name="send" value="Senden" /><br /><br /></td>
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

