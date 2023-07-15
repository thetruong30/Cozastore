<?php
include 'header.php';

if (isset($_GET['act'])) {
    $act = $_GET['act'];

    switch ($act) {
        case 'home':
            include 'trang-chu/home.php';
            break;
        case 'blog':
            include 'blog/blog.php';
            break;
        case 'products':
            include 'products/product.php';
            break;
        case 'product_detail':
            include 'products/product-detail.php';
            break;
        case 'about':
            include 'about/about.php';
            break;
        case 'contact':
            include 'contacts/contact.php';
            break;
        case 'cart':
            include 'carts/shoping-cart.php';
            break;
        default:
            include 'trang-chu/home.php';
    }
} else {
    include 'trang-chu/home.php';
}


include 'footer.php';
