<?php
// php/logout.php

session_start();

// Unset all session variables
$_SESSION = array();

// Destroy the session
session_destroy();

// Redirect to the landing page
header("Location: ../views/Landing.html");
exit();
?>
