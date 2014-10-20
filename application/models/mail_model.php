<?php
class Mail_model extends Model {
	function __construct(){
		$this->from = "no-reply@mail.lugulu.net";
		//other email settings
	}

	function send_mail($to,$subject,$message){
		$headers = "From: Lugulu.net <$this->from>";
		mail($to,$subject,$message,$headers);
//		echo $to,$subject,$message,$headers;
	}
}


