<?php
 $hinhpath = "../upload/" . $product_img;
 if (is_file($hinhpath)) {
     $product_img = "<img src='" . $hinhpath . "' height='80'>";
 } else {
     $product_img = "no photo";
 }
?>
<div class="container mt-2">
    <form action="" method="post" enctype="multipart/form-data">
   
        <div class=" my-3">
            <label for="">Product Image</label> <br>
            <input type="hidden" name="product_img" value="<?= $product_img ?? '' ?>">
            <input type="file" name="product_img" value="<?= $img_product ?? '' ?>">
            <img src="<?= $hinhpath ?? '' ?>" height='80'>
            <span style="color:red">
                    <?= $errors['product_img'] ?? '' ?>
                </span>
        </div>   
        <div class="col mb10 mt">
        <input type="hidden" name="product_img_id" value="<?php if (isset($product_img_id) && ($product_img_id > 0)) echo $product_img_id; ?>">
            <input type="submit" name="updateimg_product" value="UPDATE">
            <a href="index.php?act=listimage_product&product_id=<?= $product_id ?>"><input type="button" value="LIST"></a>
        </div>
    </form>
</div>