<div class="container mt-2">
    <form onsubmit="return mySubmit()" action="" method="post">
        <div class=" my-3">
            <label for="">Name size</label> <br>
            <input type="text" name="size_name" value="<?= $size_name ?? '' ?>"> <br>
            <span id="tb" style="color:red">
                    <?= $errors['size_name'] ?? '' ?>
                </span>
        </div>    
        <div class="col mb10 mt">
            <input type="submit" name="btn_update" value="UPDATE">
            <input type="reset" value="RESET">
            <input type="hidden" name="size_id" value="<?= $size_id ?? '' ?>">
            <a href="index.php?act=sizes_btn_list"><input type="button" value="LIST"></a>
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