<?php
 $hinhpath = "../upload/" . $blog_img;
 if (!is_file($hinhpath)) {
     $blog_img = "no photo";
 }
?>
<div class="container mt-2">
    <form action="" method="post" enctype="multipart/form-data">
        <div class=" my-3">
            <label for="">Title</label> <br>
            <input type="text" name="blog_title" value="<?= $blog_title ?? '' ?>">
            <span style="color:red">
                <?= $errors['blog_title'] ?? '' ?>
            </span>
        </div>
        <div class=" my-3">
            <label for="">Content</label> <br>
            <input type="text" name="blog_content" value="<?= $blog_content ?? '' ?>">
            <span style="color:red">
                <?= $errors['blog_content'] ?? '' ?>
            </span>
        </div>

        <div class=" my-3">
            <label for="">Image</label> <br>
            <input type="file" name="blog_img">
            <input type="hidden" name="blog_img" value="<?= $blog_img ?? '' ?>">
            <img src="<?= $hinhpath ?? '' ?>" height='80'>
            <span style="color:red">
                <?= $errors['blog_img'] ?? '' ?>
            </span>
        </div>
        <div class=" my-3">
            <label for="">Date</label> <br>
            <input type="date" name="blog_post_date" value="<?= $blog_post_date ?? '' ?>">
            <span style="color:red">
                <?= $errors['blog_post_date'] ?? '' ?>
            </span>
        </div>
        <div class="col mb10 mt">
        <input type="hidden" name="blog_id" value="<?php if (isset($blog_id) && ($blog_id > 0)) echo $blog_id; ?>">

            <input type="submit" name="updateblog" value="UPDATE">
            <input type="reset" value="RESET">
            <a href="index.php?act=blogs"><input type="button" value="LIST"></a>
        </div>
    </form>
</div>