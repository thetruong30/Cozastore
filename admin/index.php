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
        case 'addproduct':
            //kiểm tra người dùng có nhập nút add hay không
            if (isset($_POST['btn_insert']) && ($_POST['btn_insert'])) {
                $product_name = $_POST["product_name"];
                $product_price = $_POST["product_price"];
                $product_sale = $_POST["product_sale"];
                $product_posting_date = $_POST["product_posting_date"];
                $product_desciption = $_POST["product_desciption"];
                $tag_id = $_POST["tag_id"];
                $cate_id = $_POST["cate_id"];
                if ($product_name == "") {
                    $errors['product_name'] = "Tên không được để trống";
                }
                if ($product_price <= 0) {
                    $errors['product_price'] = "Giá không hợp lệ";
                }
                if ($product_sale < 0) {
                    $errors['product_sale'] = "Giảm giá không hợp lệ";
                }
                if ($product_posting_date == "") {
                    $errors['product_posting_date'] = "Ngày đăng không hợp lệ";
                }
                if ($product_desciption == "") {
                    $errors['product_desciption'] = "Mô tả không hợp lệ";
                }
                if (!isset($errors)) {
                    products_insert($product_name, $product_price, $product_sale, $product_posting_date, $tag_id, $cate_id, $product_desciption);
                    $thongbao = "Thêm thành công";
                    header('location: index.php?act=products');
                } else {
                    include "products/product/add.php";
                }
            } else {
                include "products/product/add.php";
            }
            break;
            case "addkho":
                $product_id = $_GET['product_id'];
                foreach ($colors as $color) {
                    extract($color);
                    foreach ($sizes as $size) {
                        extract($size);
                        product_detail_insert($product_id, $color_id, $size_id);
                    }
                }
                header('location: index.php?act=products');
                break;
        case 'products':
            $products = products_select_all();
            include "products/product/list.php";
            break;
            break;
        case 'delpro':
            if (isset($_GET['product_id']) && ($_GET['product_id'] > 0)) {
                $product_id = $_GET['product_id'];
                product_detail_delete($product_id);
                products_delete($product_id);
                $thongbao = "Xóa thành công";
            }
            $products = products_select_all();
            header('location: index.php?act=products');
            break;
        case 'updatepro':
            if (isset($_GET['product_id']) && ($_GET['product_id'] > 0)) {
                $product_id = $_GET['product_id'];
                $product = products_select_by_id($product_id);
                extract($product);
            }
            include "products/product/update.php";
            break;
        case 'updateproduct':
            //kiểm tra người dùng có nhập nút update hay không
            if (isset($_POST['update']) && ($_POST['update'])) {
                $product_name = $_POST["product_name"];
                $product_price = $_POST["product_price"];
                $product_sale = $_POST["product_sale"];
                $product_posting_date = $_POST["product_posting_date"];
                $product_desciption = $_POST["product_desciption"];
                $tag_id = $_POST["tag_id"];
                $cate_id = $_POST["cate_id"];
                $product_id = $_POST["product_id"];
                if ($product_name == "") {
                    $errors['product_name'] = "Tên không được để trống";
                }
                if ($product_price <= 0) {
                    $errors['product_price'] = "Giá không hợp lệ";
                }
                if ($product_sale < 0) {
                    $errors['product_sale'] = "Giảm giá không hợp lệ";
                }
                if ($product_posting_date == "") {
                    $errors['product_posting_date'] = "Ngày đăng không hợp lệ";
                }
                if ($product_desciption == "") {
                    $errors['product_desciption'] = "Mô tả không hợp lệ";
                }
                if (!isset($errors)) {
                    products_update($product_id, $product_name, $product_price, $product_sale, $product_posting_date, $tag_id, $cate_id, $product_desciption);
                    $thongbao = "Cập nhật thành công";
                    header('location: index.php?act=products');
                } else {
                    include "products/product/update.php";
                }
            }
            break;
        default:
            include "home.php";
            break;
    }
} else {
    include "home.php";
}
include "footer.php";
