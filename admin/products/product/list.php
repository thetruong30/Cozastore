
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
                    $updatepro = "index.php?act=updatepro&product_id=" . $product_id;
                    $delpro = "index.php?act=delpro&product_id=" . $product_id;
                    

                    echo '
                         <tr>
                         
                         <td>' . $product_id . '</td>
                         <td>' . $product_name . '</td>
                         <td>' . $product_price . '</td>
                         <td>' . $product_sale . '%</td>
                         <td>' . $product_posting_date . '</td>
                         <td>' . $product_desciption . '</td>
                         <td><a href="' . $updatepro . '"><input type="button" value="Update"></a> <a href="' . $delpro . '"><input type="button" onclick="myFunction()" value="Delete"></a></td>
                         </tr>';
                }

                ?>
            </table>
        </div>
        <div class="row mb10 text">
            <a href="index.php?act=addproduct"><input type="button" value="ADD"></a>
        </div>
        <script language="javascript">
            function myFunction() {
                alert("Bạn có muốn xóa không?");
            }
        </script>
    </div>
</div>