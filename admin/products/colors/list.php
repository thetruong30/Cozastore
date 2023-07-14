
<div class="container">
    <div class="row frmtitle">
        <h1>COLORS</h1>
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
                    <th>NAME COLOR</th>
                    <th></th>
                </tr>
                <?php

                foreach ($colors as $color) {
                    extract($color);
                    $updatepro = "index.php?act=colors_btn_edit&color_id=" . $color_id;
                    $delpro = "index.php?act=colors_btn_delete&color_id=" . $color_id;
                    

                    echo '
                         <tr>
                         
                         <td>' . $color_id . '</td>
                         <td>' . $color_name . '</td>
                         <td><a href="' . $updatepro . '"><input type="button" value="Update"></a> <a href="' . $delpro . '"><input type="button" onclick="return confirm(`Do you want delete?`);" value="Delete"></a></td>
                         </tr>';
                }

                ?>
            </table>
        </div>
        <div class="row mb10 text">
            <a href="index.php?act=colors_btn_add"><input type="button" value="ADD"></a>
        </div>
        <script language="javascript">
            function myFunction() {
                alert("Bạn có muốn xóa không?");
            }
        </script>
    </div>
</div>