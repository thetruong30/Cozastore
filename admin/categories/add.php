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
            <span style="color:red">
                    <?= $errors['cate_img'] ?? '' ?>
                </span>
        </div>   
        <div class="col mb10 mt">
            <input type="submit" name="btn_insert" value="ADD">
            <input type="reset" value="RESET">
            <a href="index.php?act=listcategory"><input type="button" value="LIST"></a>
        </div>
    </form>
</div>