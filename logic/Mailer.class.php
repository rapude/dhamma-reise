<?php

class Mailer extends Logger {
	
	public function sendContactMail($name, $email, $message, $transferId,
                $hiddenMessage, $title) {
        if ($hiddenMessage == "" && isset($title)) {
            $transfer     = new Transfer();
            $transferInfo = $transfer->getTransferById($transferId);
            $mailMessage  = $this->createMailMessage($name, $email, $message, $transferInfo);
            $betreff      = "Nachricht von Dhamma-Reise";
            $header       = 'From: dhamma-reise@edelbyte.de' . "\r\n" .
           'Reply-To: ' . $email . "\r\n" .
           'Content-Type:text/plain" \r\n' . 
           'X-Mailer: PHP/' . phpversion();
            $this->debug("NEW MAIL MESSAGE", "Sending mail to: " . $transferInfo['email'] . "\n" .  $betreff . $mailMessage);
            
            mail ($transferInfo['email'], $betreff, $mailMessage, $header, "-f dhamma-reise@edelbyte.de");
           } 
	}
	
	private function createMailMessage($name, $email, $message, $transferInfo) {
		$event    = new Event();
		$curEvent = $event->getEventById($transferInfo['event_id']);
		$offer    = (strcmp($transferInfo['mode'], "offer") == 0)? true : false;
		$buffer;
		
		$buffer= "Hallo,\n";
		
		$buffer .= "Sie haben eine Antwort auf Ihr ";
		if ($offer) {
			$buffer .= "Mitfahrangebot ";
		} else {
			$buffer .= "Mitfahrgesuch ";
		}
		
		$buffer .= "erhalten.\n\n";
		
		$buffer .= "Es handelt sich um eine Fahrt zu dieser Veranstaltung:\n";
		$buffer .= "Titel: " . $curEvent['title'] . "\n";
		$buffer .= "Datum: " . date("d.m.Y",strtotime($curEvent['ev_date'])) . "\n";
		$buffer .= "Start: " . $transferInfo['start'] . "\n";
		$buffer .= "Ziel: " . $transferInfo['destination'] . "\n\n";
		
		$buffer .= "Diese Nachricht wurde fuer Sie eingegeben:\n";
		$buffer .= "Nachricht von: " . $name . "\n";
		$buffer .= "E-Mail: " . $email . "\n";
		$buffer .= "Nachricht: " . $message . "\n\n";
		
		$buffer .= "Um sich mit dem Interessenten per Mail in Verbindung zu setzten, koennen Sie auf \"Antwort\" in Ihrem Mailprogramm klicken oder die unter \"E-Mail:\" - genannte Mailadresse nutzen.\n\n";
		
		$buffer .= "Gute Reise und viel Freude bei der Veranstaltung wuenscht Ihnen\nDhamma-Reise/Ralf Rapude\n\n";
		
		
		return $buffer;
	}
}
?>
