<div class="container">
    <div class="row frmtitle">
        <h1>PRODUCTS</h1>
    </div>
    <?php
    if (isset($thongbao)) {
        echo '<script type="text/javascript">

            window.onload = function () { alert("' . $thongbao . '"); }

</script>';
    }
    ?>
    <script language="javascript">
            function confirmation() {
                var result = confirm("Are you sure to delete?");
                if (result) {
                    $delpro = "index.php?act=delpro&product_id=" . $product_id;
                }
            }
        </script>
    <div class="row mt frmcontent">
        <div class="row mb10 mt frmdshanghoa text ">
            <table>
                <tr>

                    <th>ID</th>
                    <th>NAME</th>
                    <th>PRICE</th>
                    <th>SALE</th>
                    <th>DATE</th>
                    <th>DESCRIPTION</th>
                    <th></th>
                </tr>
                <?php

                foreach ($products as $product) {
                    extract($product);
                    foreach ($colors as $color) {
                        extract($color);
                        foreach ($sizes as $size) {
                            extract($size);
                            product_detail_insert($product_id, $color_id, $size_id);
                        }
                    }
                    $updatepro = "index.php?act=updatepro&product_id=" . $product_id;
                    $delpro = "index.php?act=products";
                    echo '
                         <tr>
                         
                         <td>' . $product_id . '</td>
                         <td>' . $product_name . '</td>
                         <td>' . $product_price . '</td>
                         <td>' . $product_sale . '%</td>
                         <td>' . $product_posting_date . '</td>
                         <td>' . $product_desciption . '</td>
                         <td><a href="' . $updatepro . '"><input type="button" value="Update"></a> <a href="' . $delpro . '"><input type="button" onclick="confirmation()" value="Delete"></a></td>
                         </tr>';
                }

                ?>
            </table>
        </div>
        <div class="row mb10 text">
            <a href="index.php?act=addproduct"><input type="button" value="ADD"></a>
        </div>
        
    </div>
</div>