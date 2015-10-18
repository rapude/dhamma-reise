<?php
session_start();

require './logic/Event.class.php';
require './logic/Centre.class.php';
require './logic/Transfer.class.php';

$offer = false;

if ($_GET['mode'] == "offer") {
	$offers = true;
} 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="noindex">
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


		<h2><?php if ($offers) {
			echo '<h3>Mitfahrangebote</h3>';
		} else {
			echo '<h3>Mitfahrgesuche</h3>';
		}

		$centre     = new Centre();
		$centreName = $centre->getNameById($_GET['centreId']);

		$events     = new Event();
		$eventInfo  = $events->getEventById($_GET['eventId']);

		$transfer    = new Transfer();
		$allTransfer = $transfer->getAllTransferForEvent($_GET['eventId'], $_GET['mode']);

		?></h2>


<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td width="50%">&laquo; <a href="index.php?centreIdent=<?php echo $_SESSION['centreIdent']?>&<?=SID?>">&nbsp;Zur Startseite&nbsp;</a></td>
		<td width="50%" align="right"><?php 
		if ($offers) {
			?>
		<a href="new_transfer.php?eventId=<?php echo $_GET['eventId']?>&centreId=<?php echo $_GET['centreId']?>&mode=<?php echo $_GET['mode']?>&<?=SID?>">&nbsp;Neues Angebot&nbsp;</a> &raquo;
		<?php
		} else {
			?>
		<a href="new_transfer.php?eventId=<?php echo $_GET['eventId']?>&centreId=<?php echo $_GET['centreId']?>&mode=<?php echo $_GET['mode']?>&<?=SID?>"> &nbsp;Neues Gesuch&nbsp;</a> &raquo;
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

<?php if (sizeof($allTransfer) == 0) {
		?>

  <br />
		
  <div class="box">
    <table width="100%" border="0" cellspacing="0" cellpadding="4">
      <tr>
        <td style="padding:15px;">
                  <?php 
		if ($offers) {
			?><strong>Bisher sind keine Mitfahrangebote f&uuml;r diese Veranstaltung
                  eingetragen.</strong><br/><br/>
                  Wenn Sie eine Mitfahrgelegenheit anbieten m&ouml;chten, klicken Sie
                  bitte auf den Link &quot;Neues Angebot&quot;
                    <?php 
		} else {
			?>
                    <strong>Bisher sind keine Mitfahrgesuche f&uuml;r diese Veranstaltung
                      eingetragen.</strong><br />
                      <br />
                      Wenn Sie eine Gesuch eintragen m&ouml;chten, klicken Sie bitte auf den
                  Link &quot;Neues Gesuch&quot; 
                  <?php 
		}
		?>
        </td>
      </tr>
    </table>
  </div>
	<?php
	}
	?>
	<?php
	foreach ($allTransfer as $transfer) {
		include './layout_inc/transfer-table.inc.php';
	}
	
	include './layout_inc/footer.inc.php';
	?>
</div>
</body>
</html>

