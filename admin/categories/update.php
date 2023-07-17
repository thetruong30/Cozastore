<?php
echo '<h1>'.$cate_img.'</h1>';
 $hinhpath = "../upload/" . $cate_img;
 if (!is_file($hinhpath)) {
     $cate_img = "no photo";
 }
?>
<div class="container mt-2">
    <form action="" method="post" enctype="multipart/form-data">
        <div class=" my-3">
            <label for="">Category</label> <br>
            <input type="text" name="cate_name" value="<?= $cate_name ?? '' ?>">
            <span style="color:red">
                    <?= $errors['cate_name'] ?? '' ?>
                </span>
        </div>  
        
        <div class=" my-3">
            <label for="">Category Image</label> <br>
            <input type="file" name="cate_img" >
            <input type="hidden" name="cate_img" value="<?= $cate_img ?? '' ?>">
            <img src="<?= $hinhpath ?? '' ?>" height='80'>
            <span style="color:red">
                    <?= $errors['cate_img'] ?? '' ?>
                </span>
        </div>   
        <div class="col mb10 mt">
        <input type="hidden" name="cate_id" value="<?php if (isset($cate_id) && ($cate_id > 0)) echo $cate_id; ?>">
            <input type="submit" name="updatecategory" value="UPDATE">
            <a href="index.php?act=listcategory"><input type="button" value="LIST"></a>
        </div>
    </form>
</div>