<div class="container mt-2">
    <form action="" method="post">
        <div class=" my-3">
            <label for="">Name tag</label> <br>
            <input type="text" name="tag_name" value="<?= $tag_name ?? '' ?>">
            <span style="color:red">
                    <?= $errors['tag_name'] ?? '' ?>
                </span>
        </div>    
        <div class="col mb10 mt">
            <input type="submit" name="btn_update" value="UPDATE">
            <input type="reset" value="RESET">
            <a href="index.php?act=tags_btn_list"><input type="button" value="LIST"></a>
        </div>
    </form>
</div>
<script>
    function mySubmit(){
        let input = document.querySelector('input');
        if(input.value.length == 0){
            input.focus();
            document.getElementById('tb').innerHTML = 'Tên màu không được bỏ trống, mời nhập';
            return false;
        }
        return true;
    }
</script>