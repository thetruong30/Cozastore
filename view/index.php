<?php
session_start();
include 'header.php';
require_once '../dao/categories.php';
require_once '../dao/products.php';
require_once '../dao/blogs.php';
require_once '../dao/comments.php';
$categories = category_home();
// $products = show_products_home();
if (isset($_GET['act'])) {
    $act = $_GET['act'];
    switch ($act) {
        case 'home':
            $products = show_products_home();
            include 'trang-chu/home.php';
            break;
        case 'blog':
            $blogs = blog_select_all();
            extract($blogs);
            include 'blog/blog.php';
            break;
        case 'blog-detail':
            $blog_id = $_GET['blog_id'];
            $blog = blog_select_by_id($blog_id);
            extract($blog);
            include 'blog/blog-detail.php';
            break;
        case 'products':
            // Lấy tổng số sản phẩm
            $resutls = products_select_all();
            $total_product = count($resutls);

            $resutls_per_page = 12; // Tổng số sản phẩm trong 1 trang

            if (!isset($_GET['pages'])) {
                $num_page = 1;
            } else {
                $num_page = $_GET['pages'];
            }
            $page_first_resutls = ($num_page - 1) * $resutls_per_page;
            // Lấy tổng số trang
            $total_page = ceil($total_product / $resutls_per_page);

            $products = show_products_all($page_first_resutls, $resutls_per_page);
            include 'products/product.php';
            break;
        case 'product_detail':
            $product_id = $_GET['pro_id'];
            $product = products_select_by_id($product_id);
            $product_img = product_img_select_all_by_id($product_id);
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
