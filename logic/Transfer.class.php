<?php
require 'Logger.class.php';

class Transfer extends Logger {

        public function getAllTransferForEvent($eventId, $mode) {
                $sql = "select * from transfer where event_id=".$eventId . " and mode='".$mode."'";
                $db  = new Database();

        $db->connect();
        $allTransfer = $db->fetch_all_array($sql);
        $db->close();
        return $allTransfer;
        }

        public function getTransferById($transferId) {
                $sql = "select * from transfer where id=".$transferId;
                $db  = new Database();

        $db->connect();
        $transfer = $db->query_first($sql);
        $db->close();
        return $transfer;
        }

        public function insertNewTransfer($eventId, $offer) {
                $insert['mode']        = $_GET['mode'];
                $insert['event_id']    = $eventId;
                $insert['start']       = $_POST['start'];
                $insert['via']         = $_POST['via'];
                $insert['destination'] = $_POST['destination'];
                $insert['email']       = $_POST['email'];
                $insert['name']        = $_POST['name'];
                $insert['message']     = $_POST['message'];
                $insert['centre_fk']   = $_SESSION['centreIdent'];
                #echo "*".$_SESSION['centreIdent'];

                #check for Spamrobots
                if ($_SESSION['centreIdent']!=''){
                    echo "Spam";
                    $db = new Database();
                    $db->connect();
                    $db->query_insert("transfer", $insert);
                    $this->debug("NEW TRANSFER ENTRY", "Inserting transfer with the following content:\n" . $this->convert($insert));
                    $db->close();
                }

        }

        private function convert($insert) {
                $back;

                foreach($insert as $key=>$val) {
                        $back .= $key . ": " . $val . "\n";
                }

                return $back;
        }
}

?>