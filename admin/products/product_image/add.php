<div class="container mt-2">
    <form action="" method="post" enctype="multipart/form-data">

        <div class=" my-3">
            <label for="">Product Image</label> <br>
            <input type="file" name="product_img" value="<?= $product_img ?? '' ?>">
            <span style="color:red">
                    <?= $errors['product_img'] ?? '' ?>
            </span>
        </div> 

        <div class="col mb10 mt">
            <input type="submit" name="btn_insert" value="ADD">
            <input type="reset" value="RESET">
            <a href="index.php?act=listimage_product&product_id=<?= $product_id ?>"><input type="button" value="LIST"></a>
        </div>
    </form>
</div>