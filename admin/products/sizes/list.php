
<div class="container">
    <div class="row frmtitle">
        <h1>SIZES</h1>
    </div>
    <?php
    if (isset($_GET['thongbao'])) {
        $thongbao = $_GET['thongbao'];
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
                    <th>NAME SIZE</th>
                    <th></th>
                </tr>
                <?php

                foreach ($sizes as $size) {
                    extract($size);
                    $updatepro = "index.php?act=sizes_btn_edit&size_id=" . $size_id;
                    $delpro = "index.php?act=sizes_btn_delete&size_id=" . $size_id;
                    

                    echo '
                         <tr>
                         
                         <td>' . $size_id . '</td>
                         <td>' . $size_name . '</td>
                         <td><a href="' . $updatepro . '"><input type="button" value="Update"></a> <a href="' . $delpro . '"><input type="button" onclick="myFunction()" value="Delete"></a></td>
                         </tr>';
                }

                ?>
            </table>
        </div>
        <div class="row mb10 text">
            <a href="index.php?act=sizes_btn_add"><input type="button" value="ADD"></a>
        </div>
        <script language="javascript">
            function myFunction() {
                alert("Bạn có muốn xóa không?");
            }
        </script>
    </div>
</div>