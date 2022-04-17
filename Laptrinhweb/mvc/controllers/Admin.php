<?php


class Admin extends Controller{

    public function __construct(){
        $this->orderModel = $this->model("OrderModel");
    }

    function SayHi() {
        $doanhthu = $this->orderModel->getDoanhthu();
        echo "<script>console.log('Debug Objects: " . $doanhthu[0] . "' );</script>";
        $this->view("admin",[
            "doanhthu"=>$doanhthu
        ]);
    }
}

?>