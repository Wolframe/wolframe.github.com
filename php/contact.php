<?php

//require_once('recaptchalib.php');

/*
$privatekey = "6LdaNeoSAAAAAJ16_25Mg7WHA9ddSlEitTVhnNHl";
$resp = recaptcha_check_answer( $privatekey,
	$_SERVER["REMOTE_ADDR"],
	$_POST["recaptcha_challenge_field"],
	$_POST["recaptcha_response_field"] );
if (!$resp->is_valid) {
	// What happens when the CAPTCHA was entered incorrectly
	die ("The reCAPTCHA wasn't entered correctly. Go back and try it again." .
	"(reCAPTCHA said: " . $resp->error . ")");
}
*/

$author = $_POST["author"];
$email = $_POST["email"];
$subject = $_POST["subject"];
$message = $_POST["message"];

$header = "From: $author <$email>";
$to = "contact@wolframe.net";

$timestamp = time( );
$now = date( "d.m.Y H:i", $timestamp );

$full_message = "Author: $author\n";
$full_message .= "Email: $email\n";
$full_message .= "When: $now\n";
$full_message .= "Subject: $subject\n";
$full_message .= "\n-------------------\n\n";
$full_message .= wordwrap( $message, 78 );

$send_contact = mail( $to, $subject, $full_message, $header );

if( send_contact ) {
	echo "OKidoke";
} else {
	echo "ERROR";
}
