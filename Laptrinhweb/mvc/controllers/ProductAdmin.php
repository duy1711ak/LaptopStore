<?php
require_once "mvc/utility/utility.php";
class ProductAdmin extends Controller{

    public $productModel;

    public function __construct() {
        $this->productModel = $this->model("ProductModel");
    }

    public function SayHi(){
        $allProduct = $this->productModel->getAllProduct(1);
        
        $this->view("product/productAdmin",[
            "allProduct"=>$allProduct
        ]);
    }

    public function viewAddProduct(){
        $category = $this->model("CategoryModel")->getCategory();
        $this->view("product/addProduct",[
            "category"=>$category
        ]);
    }

    public function insertProductController(){
        if(isset($_POST)){
            $title = getPost('title');
            $price = getPost('price');
            $discount = getPost('discount');
            $thumbnail = getPost('thumbnail');
            $category_id = getPost('category_id');
            $description = getPost('description');
            $this->productModel->insertProduct($category_id, $title, $price, $discount, $thumbnail, $description);
        }
        header('Location: http://localhost/Laptrinhweb/productAdmin');
    }

    public function viewUpdateProduct($id){
        $category = $this->model("CategoryModel")->getCategory();
        $data = $this->productModel->selectProduct($id);
        $this->view("product/updateProduct",[
            "id"=>$id,
            "title"=>$data["title"],
            "thumbnail"=>$data["thumbnail"],
            "price"=>$data["price"],
            "discount"=>$data["discount"],
            "category_id"=>$data["category_id"],
            "description"=>$data["description"],
            "category"=>$category
        ]);
    }

    public function updateProductController(){
        if(isset($_POST)){
            $id = getPost('id');
            $title = getPost('title');
            $price = getPost('price');
            $discount = getPost('discount');
            $thumbnail = getPost('thumbnail');
            $category_id = getPost('category_id');
            $description = getPost('description');
            $this->productModel->updateProduct($id, $category_id, $title, $price, $discount, $thumbnail, $description);
        }
        header('Location: http://localhost/Laptrinhweb/productAdmin');
    }

    public function deleteProduct($id){
        $this->productModel->selectProductDelete($id);
        header('Location: http://localhost/Laptrinhweb/productAdmin');
    }

}

?>