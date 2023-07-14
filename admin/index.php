<?php
ob_start();
session_start();
if (!isset($_SESSION['user'])) {
    header("location: login.php");
    die;
}
include "header.php";
include "../dao/pdo.php";
include "../dao/users.php";
include "../dao/products.php";
include "../dao/categories.php";
include "../dao/tags.php";
include "../dao/product_detail.php";
include "../dao/colors.php";
include "../dao/sizes.php";
$products = products_select_all();
extract($products);
$listcate = category_select_all();
extract($listcate);
$tags = tag_select_all();
extract($tags);
$sizes = size_select_all();
extract($sizes);
$colors = color_select_all();
extract($colors);
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
