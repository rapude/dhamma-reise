<?php
require 'Database.class.php';

class Centre {

	public function getAllCentres() {
		$sql = "select * from centre";
		$db  = new Database();

		$db->connect();
		$allCentres = $db->fetch_all_array($sql);
		$db->close();
		return $allCentres;
	}

	public function getCentreByStrIdent($centreIdent) {
		$sql = "select * from centre where str_identifier='$centreIdent'";
		$db  = new Database();

		$db->connect();
		$centre = $db->query_first($sql);
		$db->close();
		return $centre;
	}

	public function getIdentById($id) {
		$sql = "select str_identifier from centre where id='$id'";
		$db  = new Database();

		$db->connect();
		$centreIdent = $db->query_first($sql);
		$db->close();
		return $centreIdent;
	}

	public function getNameById($id) {
		$sql = "select name from centre where id='$id'";
		$db  = new Database();

		$db->connect();
		$name = $db->query_first($sql);
		$db->close();
		
		return $name['name'];
	}
}

?>