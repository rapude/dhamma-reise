
            <h3><?php 
            echo $oneCentre['name']; 
            ?></h3>   
            <?php 
              // getting all events 
              $events    = new Event();
              $allEvents = $events->getEventsByCentreIdent($centreIdent);
              $counter   = 0;
              
              if (sizeOf($allEvents) == 0) {
              	echo "<b>Keine Veranstaltungen eingetragen</b>";
              } else {
            ?>
   
                    <table width="100%" border="0" cellpadding="4" cellspacing="0">
                      <colgroup>
                        <col width="5%">
                        <col width="12%">
                        <col width="58%">
                        <col width="13%">
                      </colgroup>
                      <tr>
                        <th>Id</th>
                        <th>Beginn</th>
                        <th>Veranstaltung</th>
                        <th colspan="2">Fahrten</th>
                      </tr>    
                      <tr>
                      <?php 
                      // iterating over all Events
                      foreach ($allEvents as $oneEvent) { 
                      	$counter++;
                      ?>
                      <tr class= 
                      <?php 
                     if ($counter % 2 != 0) {
                      	echo '"odd"';                     	
                     } else {
                     	echo '"even"';
                     }
                      ?>>
                        <td><?php echo $oneEvent['id']?></td>
                        <td><?php echo date("d.m.Y",strtotime($oneEvent['ev_date'])) ?></td>
                        <td><?php echo $oneEvent['title']?></td>
                        <td>
                        <a href="all_transfer.php?eventId=<?php echo $oneEvent['id']?>&centreId=<?php echo $oneCentre['id']?>&mode=offer&<?=SID?>" class="event">Angebote</a> &raquo;</td>
                        <td>
                        <a href="all_transfer.php?eventId=<?php echo $oneEvent['id']?>&centreId=<?php echo $oneCentre['id']?>&mode=request&<?=SID?>" class="event">Gesuche</a> &raquo;</td>
                      </tr>
                      <?php 
                      }
                      ?>
                    </table>
                    <br/>
           <?php 
              }
           ?>