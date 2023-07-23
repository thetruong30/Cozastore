<?php
require_once 'pdo.php';


function filter_price_between($first, $second, $page_first, $page_second)
{
    $sql = "SELECT * FROM products WHERE product_price BETWEEN $first AND $second ORDER BY product_id LIMIT $page_first, $page_second";
    return pdo_query($sql);
}
function filter_price($price, $page_first, $page_second)
{
    $sql = "SELECT * FROM products WHERE product_price > $price ORDER BY product_id LIMIT $page_first, $page_second";
    return pdo_query($sql);
}

function filter_price_between_all($first, $second)
{
    $sql = "SELECT * FROM products WHERE product_price BETWEEN $first AND $second ORDER BY product_id";
    return pdo_query($sql);
}
function filter_price_all($price)
{
    $sql = "SELECT * FROM products WHERE product_price > $price ORDER BY product_id DESC";
    return pdo_query($sql);
}

function filter_tag($tag_id,$first,$second){
    $sql = "SELECT * FROM products WHERE tag_id=? ORDER BY product_id DESC LIMIT $first,$second";
    return pdo_query($sql, $tag_id);
}

function products_select_all_sx_price()
{
    $sql = "SELECT * FROM products ORDER BY product_price DESC";
    return pdo_query($sql);
}

function products_select_all_sx_high_to_low()
{
    $sql = "SELECT * FROM products ORDER BY product_price";
    return pdo_query($sql);
}
