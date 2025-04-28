<?php
 
 
if ( $_POST['flag'] == 1 ){
 
 
$to = 'formularz@twitter.pl';
$subject = 'Twitter Networks - formularz';
$message = $_POST['message'] . "\r\n";
$headers = 'From: ' . $_POST['email'] . "\r\n" .
'MIME-Version: 1.0' . "\r\n" .
'Content-Type: text/html; charset=UTF-8' . "\r\n" .
'Reply-To: ' . $_POST['email'] . "\r\n" .
'X-Mailer: PHP/' . phpversion();
 
mail($to, $subject, $message, $headers);
 
}
?>