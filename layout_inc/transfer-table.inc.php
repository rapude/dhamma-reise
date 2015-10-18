
  <div class="box" style="margin-top:25px;">
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
      </tr>
      <tr class="odd"> 
        <td>Veranst. Ort:</td>
        <td><?php echo $eventInfo['destination'] ?></td>
      </tr>
      <tr class="even">
        <td>Datum:</td>
        <td><?php echo date("d.m.Y",strtotime($eventInfo['ev_date'])) ?></td>
      </tr>
      <tr class="odd">
        <td>Fahrt Id:</td>
        <td><?php echo $transfer['id'] ?></td>
      </tr>
    </table>  
    <br />
            
    <table width="100%" border="0" cellpadding="4" cellspacing="0">
      <colgroup>
        <col width="29%">
        <col width="71%">
      </colgroup>
      <tr>
        <td>Name:</td>
        <td><?php echo $transfer['name']?></td>
        </tr>
      <tr>
        <td>Start:</td>
        <td><?php echo $transfer['start']?></td>
        </tr>
      <tr>
        <td>&Uuml;ber:</td>
        <td><?php echo $transfer['via']?></td>
      </tr>
      <tr>
        <td> Ziel: </td>
        <td><?php echo $transfer['destination']?></td>
      </tr>
      <tr>
        <td>Nachricht</td>
        <td><?php echo $transfer['message']?></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><br /><a class="event" href="contact.php?eventId=<?php echo $_GET['eventId']?>&centreId=<?php echo $_GET['centreId']?>&mode=<?php echo $_GET['mode']?>&transferId=<?php echo $transfer['id']?>&<?=SID?>">Kontakt aufnehmen</a> &raquo;<br /><br /></td>
        </tr>         
    </table>
  </div>