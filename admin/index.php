<?php
 session_start();
if (!isset($_SESSION['user'])) {
    header("location: login.php");
    die;
}
include "header.php";
include "../dao/pdo.php";
include "../dao/users.php";
if (isset($_GET['act'])) {
    $act = $_GET['act'];
    switch ($act) {
        default:
            include "home.php";
            break;
    }
} else {
    include "home.php";
}
include "footer.php";
