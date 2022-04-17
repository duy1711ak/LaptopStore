<div id="wrapper">

    <a style="color:black;text-decoration:none" href="http://localhost/Laptrinhweb/Home/productList/1"><h3 style="margin-left:20px; margin-top: 15px">Asus</h3></a>
    <hr/>
    <div class="showproduct">
    <?php
        for($i=0;$i<4;$i++){
            echo    '<div class="card">';
            echo        '<a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productAsus"][$i]["id"].'">
                            <img class="card-img-top mt-2"
                                src="'.$data["productAsus"][$i]["thumbnail"].'"
                                alt="Card image cap">
                        </a>';
            echo        '<div class="card-body">';
            echo            '<a id="taga" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productAsus"][$i]["id"].'"><h5 class="card-title">'.$data["productAsus"][$i]["title"].'</h5></a>
                            <hr />';
            echo            '<span class="card-text">'.number_format($data["productAsus"][$i]["price"]).'đ</span>';
            echo            '<span style="margin-left:12px; text-decoration: line-through;" class="card-text">'; if($data["productAsus"][$i]["discount"] != 0) echo number_format($data["productAsus"][$i]["discount"]).'đ'; echo '</span>';
            echo        '</div>';
            echo        '<button type="button" class="btnOrder btn btn-danger" onclick="addToCard('.$data["productAsus"][$i]["id"].')">Đặt hàng</button>';
            echo    '</div>';
        }
        ?>
    </div>

    <a style="color:black;text-decoration:none" href="http://localhost/Laptrinhweb/Home/productList/2"><h3 style="margin-left:20px; margin-top: 15px">Dell</h3></a>
    <hr/>
    <div class="showproduct">
    <?php
        for($i=0;$i<4;$i++){
            echo    '<div class="card">';
            echo        '<a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productDell"][$i]["id"].'">
                            <img class="card-img-top mt-2"
                                src="'.$data["productDell"][$i]["thumbnail"].'"
                                alt="Card image cap">
                        </a>';
            echo        '<div class="card-body">';
            echo            '<a id="taga" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productDell"][$i]["id"].'"><h5 class="card-title">'.$data["productDell"][$i]["title"].'</h5></a>
                            <hr />';
            echo            '<span class="card-text">'.number_format($data["productDell"][$i]["price"]).'đ</span>';
            echo            '<span style="margin-left:12px; text-decoration: line-through;" class="card-text">'; if($data["productDell"][$i]["discount"] != 0) echo number_format($data["productDell"][$i]["discount"]).'đ'; echo '</span>';
            echo        '</div>';
            echo        '<button type="button" class="btnOrder btn btn-danger" onclick="addToCard('.$data["productDell"][$i]["id"].')">Đặt hàng</button>';
            echo    '</div>';
        }
        ?>
    </div>

    <a style="color:black;text-decoration:none" href="http://localhost/Laptrinhweb/Home/productList/3"><h3 style="margin-left:20px; margin-top: 15px">HP</h3></a>
    <hr/>
    <div class="showproduct">
    <?php
        for($i=0;$i<4;$i++){
            echo    '<div class="card">';
            echo        '<a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productHP"][$i]["id"].'">
                            <img class="card-img-top mt-2"
                                src="'.$data["productHP"][$i]["thumbnail"].'"
                                alt="Card image cap">
                        </a>';
            echo        '<div class="card-body">';
            echo            '<a id="taga" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productHP"][$i]["id"].'"><h5 class="card-title">'.$data["productHP"][$i]["title"].'</h5></a>
                            <hr />';
            echo            '<span class="card-text">'.number_format($data["productHP"][$i]["price"]).'đ</span>';
            echo            '<span style="margin-left:12px; text-decoration: line-through;" class="card-text">'; if($data["productHP"][$i]["discount"] != 0) echo number_format($data["productHP"][$i]["discount"]).'đ'; echo '</span>';
            echo        '</div>';
            echo        '<button type="button" class="btnOrder btn btn-danger" onclick="addToCard('.$data["productHP"][$i]["id"].')">Đặt hàng</button>';
            echo    '</div>';
        }
        ?>
    </div>

    <a style="color:black;text-decoration:none" href="http://localhost/Laptrinhweb/Home/productList/102"><h3 style="margin-left:20px; margin-top: 15px">Lenovo</h3></a>
    <hr/>
    <div class="showproduct">
    <?php
        for($i=0;$i<4;$i++){
            echo    '<div class="card">';
            echo        '<a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productLenovo"][$i]["id"].'">
                            <img class="card-img-top mt-2"
                                src="'.$data["productLenovo"][$i]["thumbnail"].'"
                                alt="Card image cap">
                        </a>';
            echo        '<div class="card-body">';
            echo            '<a id="taga" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productLenovo"][$i]["id"].'"><h5 class="card-title">'.$data["productLenovo"][$i]["title"].'</h5></a>
                            <hr />';
            echo            '<span class="card-text">'.number_format($data["productLenovo"][$i]["price"]).'đ</span>';
            echo            '<span style="margin-left:12px; text-decoration: line-through;" class="card-text">'; if($data["productLenovo"][$i]["discount"] != 0) echo number_format($data["productLenovo"][$i]["discount"]).'đ'; echo '</span>';
            echo        '</div>';
            echo        '<button type="button" class="btnOrder btn btn-danger" onclick="addToCard('.$data["productLenovo"][$i]["id"].')">Đặt hàng</button>';
            echo    '</div>';
        }
        ?>
    </div>

    <a style="color:black;text-decoration:none" href="http://localhost/Laptrinhweb/Home/productList/104"><h3 style="margin-left:20px; margin-top: 15px">Macbook</h3></a>
    <hr/>
    <div class="showproduct">
    <?php
        for($i=0;$i<4;$i++){
            echo    '<div class="card">';
            echo        '<a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productMacbook"][$i]["id"].'">
                            <img class="card-img-top mt-2"
                                src="'.$data["productMacbook"][$i]["thumbnail"].'"
                                alt="Card image cap">
                        </a>';
            echo        '<div class="card-body">';
            echo            '<a id="taga" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["productMacbook"][$i]["id"].'"><h5 class="card-title">'.$data["productMacbook"][$i]["title"].'</h5></a>
                            <hr />';
            echo            '<span class="card-text">'.number_format($data["productMacbook"][$i]["price"]).'đ</span>';
            echo            '<span style="margin-left:12px; text-decoration: line-through;" class="card-text">'; if($data["productMacbook"][$i]["discount"] != 0) echo number_format($data["productMacbook"][$i]["discount"]).'đ'; echo '</span>';
            echo        '</div>';
            echo        '<button type="button" class="btnOrder btn btn-danger" onclick="addToCard('.$data["productMacbook"][$i]["id"].')">Đặt hàng</button>';
            echo    '</div>';
        }
        ?>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function(){
		$(".btnOrder").click(function(){
            $("#alertSuccess").html('<p style="background-color: #55e073;padding: 10px;"><i class="fas fa-check-circle"></i>Thêm vào giỏ hàng thành công</p>');
		});
	});
    
    function addToCard(productId) {
        var action = "add";
        $.ajax({
            url:"home/addToCart",
            method:"POST",
            data:{action:action ,productId:productId, num:1},
            success:function(data){
                location.reload();
            }
        });
    }
</script>