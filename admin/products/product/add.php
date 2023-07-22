
<div class="container">
    <form action="" method="post" enctype="multipart/form-data">
        <div class="">
            <label for="">Name</label>
            <input type="text" name="product_name" value="<?= $product_name ?? '' ?>">
            <span style="color:red">
                    <?= $errors['product_name'] ?? '' ?>
                </span>
        </div>
        <div class="">
            <label for="">Price</label>
            <input type="number" name="product_price" value="<?= $product_price ?? '' ?>">
            <span style="color:red">
                    <?= $errors['product_price'] ?? '' ?>
                </span>
        </div>
        <div class="">
            <label for="">Image</label>
            <input type="file" name="product_img" value="<?= $product_img ?? '' ?>">
            <span style="color:red">
                    <?= $errors['product_img'] ?? '' ?>
                </span>
        </div>
        <div class="">
            <label for="">Sale(%)</label>
            <input type="number" name="product_sale" value="<?= $product_sale ?? '' ?>" min="1" max="100">
            <span style="color:red">
                    <?= $errors['product_sale'] ?? '' ?>
                </span>
        </div>
        <div class="">
            <label for="">Date</label>
            <input type="date" name="product_posting_date" value="<?= $product_posting_date ?? '' ?>">
            <span style="color:red">
                    <?= $errors['product_posting_date'] ?? '' ?>
                </span>
        </div>
        <div class="">
            <select name="tag_id" id="">
                <?php foreach ($tags as $tag) : ?>
                    <option value="<?= $tag['tag_id'] ?>">
                        <?= $tag['tag_name'] ?>
                    </option>
                <?php endforeach ?>
            </select>
            <select name="cate_id" id="">
                <?php foreach ($listcate as $cate) : ?>
                    <option value="<?= $cate['cate_id'] ?>">
                        <?= $cate['cate_name'] ?>
                    </option>
                <?php endforeach ?>
            </select>
        </div>
        <div class="">
            <label for="">Desciption</label>
            <textarea cols="30" rows="10" name="product_desciption"  value="<?= $product_desciption ?? '' ?>"></textarea>
            <span style="color:red">
                    <?= $errors['product_desciption'] ?? '' ?>
                </span>
        </div>
        <div class="row mb10 mt">
            <input type="submit" name="btn_insert" value="ADD">
            <input type="reset" value="RESET">
            <a href="index.php?act=products"><input type="button" value="LIST"></a>
        </div>
    </form>
</div>