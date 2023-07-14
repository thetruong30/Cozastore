<div class="container mt-2">
    <form action="" method="post">
        <div class=" my-3">
            <label for="">Name size</label> <br>
            <input type="text" name="size_name" value="<?= $size_name ?? '' ?>">
            <span style="color:red">
                    <?= $errors['size_name'] ?? '' ?>
                </span>
        </div>    
        <div class="col mb10 mt">
            <input type="submit" name="btn_insert" value="ADD">
            <input type="reset" value="RESET">
            <a href="index.php?act=sizes_btn_list"><input type="button" value="LIST"></a>
        </div>
    </form>
</div>