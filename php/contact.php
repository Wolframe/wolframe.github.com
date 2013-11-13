<?php

$author = $_POST["author"];
$email = $_POST["email"];
$subject = $_POST["subject"];
$message = $_POST["message"];

$header = "From: Contact form <noreply@wolframe.ch>";
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

if( $send_contact ) {
	echo "Thank you. We will look into your contact request shortly.";
} else {
	echo "Error while sending your contact email.";
}
