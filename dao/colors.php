<?php
    require_once "./pdo.php";

    // thêm color
    function color_create($color, $color_code){
        $sql = "insert into color(color_name,color_code) values(?,?)";
        pdo_execute($sql,$color,$color_code);
    }

    // sửa color
    function color_edit($color, $color_code, $color_id){
        $sql = 'update color set color_name=?,color_code=? where color_id=?';
        pdo_execute($sql,$color,$color_code,$color_id);
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

    // thêm size 
    function size_create($size_name){
        $sql = 'insert into size(size_name) values(?)';
        pdo_execute($sql,$size_name);
    }

    // sửa size
    function size_edit($size_name,$size_id){
        $sql = 'update size set size_name=? where size_id=?';
        pdo_execute($sql,$size_name,$size_id);
    }

    // xóa size
    function size_delete($size_id){
        $sql = 'delete from size where size_id=?';
        pdo_execute($sql,$size_id);
    }

    // hiển thị d/sách size
    function size_select_all(){
        $sql = 'select * from size';
        return pdo_query($sql);
    }
?>