<?php

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
