<div class="container mt-2">
    <form action="" method="post">
        <div class=" my-3">
            <label for="">Name color</label> <br>
            <input type="text" name="color_name" value="<?= $color_name ?? '' ?>">
            <span style="color:red">
                    <?= $errors['color_name'] ?? '' ?>
                </span>
        </div>    
        <div class="col mb10 mt">
            <input type="submit" name="btn_insert" value="ADD">
            <input type="reset" value="RESET">
            <a href="index.php?act=color_list"><input type="button" value="LIST"></a>
        </div>
    </form>
</div>