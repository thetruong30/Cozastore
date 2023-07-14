<?php
    require_once "pdo.php";

    // thêm color
    function color_create($color_name, $color_code){
        $sql = "insert into color(color_name,color_code) values(?,?)";
        pdo_execute($sql,$color_name,$color_code);
    }

    // sửa color
    function color_edit($color_name, $color_code, $color_id){
        $sql = 'update color set color_name=?,color_code=? where color_id=?';
        pdo_execute($sql,$color_name,$color_code,$color_id);
    }

    // xóa color
    function color_delete($color_id){
        $sql = 'delete from color where color_id=?';
        pdo_execute($sql,$color_id);
    }

    // hiển thị d/sách color
    function color_select_all(){
        $sql = 'select * from color';
        return pdo_query($sql);
    }

?>