
<div class="container">
    <div class="row frmtitle">
        <h1>TAGS</h1>
    </div>
    <?php
    if (isset($thongbao)) {
        echo '<script type="text/javascript">

            window.onload = function () { alert("' . $thongbao . '"); }

</script>';
    }
    ?>
    <div class="row mt frmcontent">
        <div class="row mb10 mt frmdshanghoa text ">
            <table>
                <tr>
                    
                    <th>ID</th>
                    <th>NAME TAG</th>
                    <th></th>
                </tr>
                <?php

                foreach ($tags as $tag) {
                    extract($tag);
                    $updatepro = "index.php?act=tag_btn_edit&tag_id=" . $tag_id;
                    $delpro = "index.php?act=tag_btn_delete&tag_id=" . $tag_id;
                    

                    echo '
                         <tr>
                         
                         <td>' . $tag_id . '</td>
                         <td>' . $tag_name . '</td>
                         <td><a href="' . $updatepro . '"><input type="button" value="Update"></a> <a href="' . $delpro . '"><input type="button" onclick="myFunction()" value="Delete"></a></td>
                         </tr>';
                }

                ?>
            </table>
        </div>
        <div class="row mb10 text">
            <a href="index.php?act=tags_btn_add"><input type="button" value="ADD"></a>
        </div>
        <script language="javascript">
            function myFunction() {
                alert("Bạn có muốn xóa không?");
            }
        </script>
    </div>
</div>