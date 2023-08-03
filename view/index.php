<?php
ob_start();
session_start();

require_once '../dao/categories.php';
require_once '../dao/products.php';
require_once '../dao/product_img.php';
require_once '../dao/contact.php';
require_once '../dao/filter.php';
require_once '../dao/tags.php';
require_once '../dao/reviews.php';
require_once '../dao/users.php';
require_once '../dao/blogs.php';
require_once '../dao/sizes.php';
require_once '../dao/colors.php';
require_once '../dao/comments.php';
require_once '../dao/cart.php';
require_once '../dao/product_detail.php';
include 'header.php';
$categories = category_home();
$payments = pay_select_all();
if (!isset($_SESSION['cart'])) $_SESSION['cart'] = [];
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
            $page_first_resutls = ($num_page - 1) * $resutls_per_page; // lấy sản phẩm bắt đầu của trang

            // Lấy tổng số trang
            $total_page = ceil($total_product / $resutls_per_page);

            $products = show_products_all($page_first_resutls, $resutls_per_page);

            include 'products/product.php';
            break;
        case 'product_detail':
            $product_id = $_GET['pro_id'];
            $product = products_select_by_id($product_id);
            $product_img = product_img_select_all_by_id($product_id);
            $reviews = review_select_by_product($product_id);
            $colors = color_select_all();
            $sizes = size_select_all();
            include 'products/product-detail.php';
            break;
        case 'about':
            include 'about/about.php';
            break;
        case 'contact':
            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                $email = $_POST['email'];
                $msg = $_POST['message'];

                if (strlen($email) == 0) {
                    $err['email'] = 'Email không được bỏ trống.';
                }
                if (strlen($msg) == 0) {
                    $err['msg'] = 'Mời bạn nhập nội dung.';
                }
                if (!isset($err)) {
                    contact_create($email, $msg);
                    $thongbao = 'Gửi yêu cầu thành công, chúng tôi sẽ sớm liên hệ lại với bạn.';
                    header("location: index.php?act=contact&thongbao=$thongbao");
                } else {
                    include 'contacts/contact.php';
                }
            } else {
                include 'contacts/contact.php';
            }
            break;
        case 'cart':
            $carts = cart_select_all();
            include 'carts/shoping-cart.php';
            break;
        case 'products_cate':
            $cate_id = $_GET['cate_id'];
            $cate_name = category_select_by_id($cate_id);

            // Lấy tổng số sản phẩm
            $resutls = products_select_by_cate($cate_id);
            $total_product = count($resutls);

            // Tổng số sản phẩm trong 1 trang
            $resutls_per_page = 12;

            if (!isset($_GET['pages'])) {
                $num_page = 1;
            } else {
                $num_page = $_GET['pages'];
            }

            // lấy sản phẩm bắt đầu của trang
            $page_first_resutls = ($num_page - 1) * $resutls_per_page;

            // Lấy tổng số trang
            $total_page = ceil($total_product / $resutls_per_page);
            $total_kq = "Có tổng số " . $total_product . " sản phẩm liên quan đến '" . $cate_name['cate_name'] . "'";

            $products = show_products_all_cate($cate_id, $page_first_resutls, $resutls_per_page);

            include 'products/product.php';
            break;
        case 'filter_price':

            if (!isset($_GET['price'])) {
                $first = $_GET['first'];
                $second = $_GET['second'];

                // Phân trang
                $resutls = filter_price_between_all($first, $second);
                $total_product = count($resutls);
                $resutls_per_page = 8;
                if (!isset($_GET['pages'])) {
                    $num_page = 1;
                } else {
                    $num_page = $_GET['pages'];
                }
                $page_first_resutls = ($num_page - 1) * $resutls_per_page;
                $total_page = ceil($total_product / $resutls_per_page);
                $total_kq = "Có tổng số " . $total_product . " sản phẩm có giá từ '" . $first . " đến " . $second . "'";
                $products = filter_price_between($first, $second, $page_first_resutls, $resutls_per_page);
            } else {
                $price = $_GET['price'];
                // Phân trang
                $resutls = filter_price_all($price);
                $total_product = count($resutls);
                $resutls_per_page = 8;
                if (!isset($_GET['pages'])) {
                    $num_page = 1;
                } else {
                    $num_page = $_GET['pages'];
                }
                $page_first_resutls = ($num_page - 1) * $resutls_per_page;
                $total_page = ceil($total_product / $resutls_per_page);
                $total_kq = "Có tổng số " . $total_product . " sản phẩm có giá từ '" . $price . "'";
                $products = filter_price($price, $page_first_resutls, $resutls_per_page);
            }
            include 'products/product.php';
            break;
        case 'filter_tag':
            $tag_id = $_GET['tag_id'];
            $tag = tag_select_by_id($tag_id);
            // Phân trang
            $resutls = products_select_by_tag($tag_id);
            $total_product = count($resutls);
            $resutls_per_page = 8;
            if (!isset($_GET['pages'])) {
                $num_page = 1;
            } else {
                $num_page = $_GET['pages'];
            }
            $page_first_resutls = ($num_page - 1) * $resutls_per_page;
            $total_page = ceil($total_product / $resutls_per_page);
            $total_kq = "Có tổng số " . $total_product . " sản phẩm liên quan đến '" . $tag['tag_name'] . "'";
            $products = filter_tag($tag_id, $page_first_resutls, $resutls_per_page);
            include 'products/product.php';
            break;
        case 'price_low_to_high':
            $resutls = products_select_all();
            $total_product = count($resutls);

            $resutls_per_page = 12; // Tổng số sản phẩm trong 1 trang

            if (!isset($_GET['pages'])) {
                $num_page = 1;
            } else {
                $num_page = $_GET['pages'];
            }
            $page_first_resutls = ($num_page - 1) * $resutls_per_page; // lấy sản phẩm bắt đầu của trang

            // Lấy tổng số trang
            $total_page = ceil($total_product / $resutls_per_page);

            $products = products_select_all_sx_price();

            include 'products/product.php';
            break;
        case 'price_high_to_low':
            $resutls = products_select_all();
            $total_product = count($resutls);

            $resutls_per_page = 12; // Tổng số sản phẩm trong 1 trang

            if (!isset($_GET['pages'])) {
                $num_page = 1;
            } else {
                $num_page = $_GET['pages'];
            }
            $page_first_resutls = ($num_page - 1) * $resutls_per_page; // lấy sản phẩm bắt đầu của trang

            // Lấy tổng số trang
            $total_page = ceil($total_product / $resutls_per_page);
            $products = products_select_all_sx_high_to_low();

            include 'products/product.php';
            break;
        case 'search_keyword':
            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                $key = $_POST['search'];

                if (strlen($key) > 0) {
                    $products = products_select_keyword($key);
                    $total_kq = "Có tổng số " . count($products) . " sản phẩm liên quan đến từ khóa '" . $key . "'";
                    include 'products/product.php';
                } else {
                    header('location: index.php?act=products');
                    die;
                }
            }
            break;
        case 'your_review':
            if (!isset($_SESSION['user_kh'])) {
                header("location: user/index.php");
                die;
            }

            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                $content = $_POST['review'];
                $product_id = $_POST['product_id'];
                extract($_SESSION['user_kh']);


                if (strlen($content) == 0) {
                    $err['cmt'] = 'Không được bỏ trống.';
                }

                if (!isset($err)) {
                    review_create($content, $product_id, $user_id);
                    header("location: index.php?act=product_detail&pro_id=$product_id&thongbao=Đánh giá của bạn đã được gửi đến quản trị viên");
                    die;
                } else {
                    $product = products_select_by_id($product_id);
                    $product_img = product_img_select_all_by_id($product_id);
                    $reviews = review_select_by_product($product_id);
                    include 'products/product-detail.php';
                }
            }
            break;
        case "addcart":
            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                $color_id = $_POST['color_id'];
                $size_id = $_POST['size_id'];
                $order_detail_name = $_POST['product_name'];
                $order_detail_img = $_POST['order_detail_img'];
                $product_id = $_POST['product_id'];
                $order_detail_price = $_POST['product_price'];
                $so_luong = $_POST['so_luong'];
                $product_detail =  product_detail_select_by_size_color($color_id, $size_id, $product_id);
                $product_detail_id = $product_detail['product_detail_id'];
                // $cartadd = cart_select_by_id($product_detail['product_detail_id']);
                // if (is_array($cartadd)) {
                //     $so_luong += $cartadd['so_luong'];
                //     cart_edit_sl($cartadd['order_detail_id'], $so_luong);
                // } else {
                //     cart_insert($order_detail_name, $order_detail_price, $order_detail_img, $product_detail_id, $so_luong);
                // }
                $fg = 0;
                $i = 0;
                foreach ($_SESSION['cart'] as $item) {
                    if ($item[0] == $product_detail_id) {
                        $slnew = $so_luong + $item[4];
                        $_SESSION['cart'][$i][4] = $slnew;
                        $fg = 1;
                        break;
                    }
                    $i++;
                }

                if ($fg == 0) {
                    $item = array($product_detail_id, $order_detail_name, $order_detail_img, $order_detail_price, $so_luong);
                    $_SESSION['cart'][] = $item;
                }

                header("location: http://localhost/cozastore/view/index.php?act=products");
            }
            break;
        case "updatecart":
            if ($_SERVER['REQUEST_METHOD'] == 'POST') {
                $arr = $_POST['so_luong'];
                $i = 0;
                foreach ($arr as $ar => $a) {
                    if (isset($i) && ($i >= 0)) {
                        if ($a == 0) {
                            array_splice($_SESSION['cart'], $i, 1);
                        } else {
                            $_SESSION['cart'][$i][4] = $a;
                        }
                    } else {
                        if (isset($_SESSION['cart'])) unset($_SESSION['cart']);
                    }
                    $i++;
                }
            }
            $carts = cart_select_all();
            header("location: http://localhost/cozastore/view/index.php?act=cart");

            break;
        case "delcart":
            if (isset($_GET['i']) && ($_GET['i'] >= 0)) {
                if (isset($_SESSION['cart']) && (count($_SESSION['cart']) > 0))
                    array_splice($_SESSION['cart'], $_GET['i'], 1);
            } else {
                if (isset($_SESSION['cart'])) unset($_SESSION['cart']);
            }
            if (isset($_SESSION['cart']) && (count($_SESSION['cart']) > 0)) {
                header("location: http://localhost/cozastore/view/index.php?act=cart");
            } else {
                header("location: index.php");
            }
            break;
        case "thanhtoan":
            if (isset($_SESSION['cart']) && (count($_SESSION['cart']) > 0)) {

                $order_status = 1;
                $order_address = $_POST['order_address'];
                $order_email = $_POST['order_email'];
                $order_phone = $_POST['order_phone'];
                $payment_id = $_POST['payment_id'];
                $order_total = $_POST['order_total'];
                $order_id = rand(0, 99999999);
                if (isset($_SESSION['user_kh'])) {
                    extract($_SESSION['user_kh']);
                } else {
                    $user_id = 0;
                }
                orders_insert($order_id, $user_id, date("Y-m-d"), $order_status, $order_address, $order_email, $order_phone, $payment_id, $order_total);
                if (!isset($_SESSION['user_kh'])) {
                    $_SESSION['dh'] = orders_select($order_id);
                }
                foreach ($_SESSION['cart'] as $item) {
                    cart_insert($order_id, $item[1], $item[3], $item[2], $item[0], $item[4]);
                }
                unset($_SESSION['cart']);
                header("location: http://localhost/cozastore/view/index.php?act=cart");
            } else {
                header("location: http://localhost/cozastore/view/index.php?act=cart");
            }
            break;
        case "status_update":
            $order_id = $_GET['order_id'];
            dh_edit_order_id("3", $order_id);
            header("location: http://localhost/cozastore/view/index.php?act=cart");
            break;
        default:
            $products = show_products_home();
            include 'trang-chu/home.php';
    }
} else {
    $products = show_products_home();
    include 'trang-chu/home.php';
}


include 'footer.php';
