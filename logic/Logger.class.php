<?php

abstract class Logger {

	public function debug($topic, $output) {
		$filename = "./logging/debug_log.txt";
		$fd = fopen($filename, "a");
		$datum = "Date/Time: " . date("d.m.Y/H:m:s", time());
		fwrite($fd, $datum . "\n" . "###" . $topic . "###" . "\n" . $output . "\n");
		fclose($fd);
	}

}

?>