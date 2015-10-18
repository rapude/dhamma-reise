<?php

class Event {

	public function getEventsByCentreIdent($centreIdent) {
		$sql = "select * from event where centre_fk='$centreIdent'order by ev_date asc";
		$db  = new Database();

		$db->connect();
		$events = $db->fetch_all_array($sql);
		$db->close();
		return $events;
	}
	
   
	public function getEventById($id) {
		$sql = "select * from event where id='$id'";
		$db  = new Database();

		$db->connect();
		$eventInfo = $db->query_first($sql);
        $db->close();
        
		return $eventInfo;
	}

}

?>