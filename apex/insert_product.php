<?php
include('../includes/connect.php');
if(isset($_POST['insert_product'])){
        $product_title=$_POST['product_title'];
        $product_description=$_POST['product_description'];
        $product_keywords=$_POST['product_keywords'];
        $product_categories=$_POST['product_categories'];
        $models=$_POST['models'];
        $product_price=$_POST['product_price'];
        
        //accessing images
        
        $product_image=$_FILES['product_image']['name'];

        //accessing image temp name

        $temp_image=$_FILES['product_image']['tmp_name'];

        //checking empt condition

        if($product_title==''or  $product_description=''or $product_keywords==''or
$product_categories=''or  $models
=''or  $product_price=''or$product_image=''){
        echo"<script>aleart('please fill all available fields')<script>";
        exit();
}else{
        move_uploaded_file( $temp_image,"../product_images/$product_image");

        //insret query

        $insert_products="insert into `products`(product_title,product_description,
        product_keywords,category_id,model_id,product_image,product_price) 
        values('$product_title','$product_description','$product_keywords',
        '$product_categories',' $models','$product_image','$product_price')";

        $result_query=mysqli_query($con,$insert_products);
        if($result_query){
                echo"<script>aleart('successfully inserted product')<script>";
       

        }
}


}

?>
<html>
 <head>
<title>insert product Admin-dashboard</title>
 <!--bootstrap css link-->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
    crossorigin="anonymous">
<!--font awsome link-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
         integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous"
          referrerpolicy="no-referrer" />
      

       <!--css link-->
       <link rel="stylesheet" href="../style.css">
       


        </head>
 <body class="bg-light">
        <div class="container mt-3">
                <h1 class="text-center">Insert Products</h1>
                <form action="" method="post" enctype="multipart/form-data">
                        <div class="form-outline mb-4 w-50 m-auto">
                                <label for="product_title" class="form-label">Product title</label>
                                <input type="text" name="product_title" id="product_title"
                                class="form-control"placeholder="enter model title" autocomplete="off" 
                                required="required">
</div>
   <!--description-->
   <div class="form-outline mb-4 w-50 m-auto">
                                <label for="product_description" class="form-label">Product descripton</label>
                                <input type="text" name="product_description" id="description"
                                class="form-control"placeholder="enter product description" autocomplete="off" 
                                required="required">
</div>
 <!--keywords-->
 <div class="form-outline mb-4 w-50 m-auto">
                                <label for="product_keywords" class="form-label">model keywords</label>
                                <input type="text" name="product_keywords" id="model_keywords"
                                class="form-control"placeholder="enter model keywords" autocomplete="off" 
                                required="required">
</div>
 <!--categories-->
 <div class="form-outline mb-4 w-50 m-auto">
<select name="product_categories" id="" class="form-select">


        <option values="">Select a categories</option>
        <?php
        $select_query="select * from `categories`";
        $result_query=mysqli_query($con,$select_query);
        while($row=mysqli_fetch_assoc($result_query)){
                $category_title=$row['category_title'];
                $category_id=$row['category_id'];
                echo"<option value='$category_id'>$category_title</optional>";
        }
        ?>

     
</select>
 </div>
 <div>
        <!--models-->
 <div class="form-outline mb-4 w-50 m-auto">
<select name="models" id="" class="form-select">

        <option values="">Select a models</option>
        
        <?php
        $select_query="select * from `models`";
        $result_query=mysqli_query($con,$select_query);
        while($row=mysqli_fetch_assoc($result_query)){
                $model_title=$row['model_title'];
                $model_id=$row['model_id'];
                echo"<option value='$model_id'>$model_title</optional>";
        }
        ?>



       
</select>
 </div>
 
  <!--image-->
 

  <div class="form-outline mb-4 w-50 m-auto">
                                <label for="product_image" class="form-label">model image</label>
                                <input type="file" name="product_image" id="product_image"
                                class="form-control" autocomplete="off" 
                                required="required">
</div>
<!--price-->
<div class="form-outline mb-4 w-50 m-auto">
                                <label for="product_price" class="form-label">model price</label>
                                <input type="text" name="product_price" id="product_price"
                                class="form-control"placeholder="enter model price" autocomplete="off" 
                                required="required">
</div>
<!--keywords-->
<div class="form-outline mb-4 w-50 m-auto">
                             <input type="submit"name="insert_product" class="btn btn-info"value="insert products">  </div>
 


                </form>
        </div>

</body>
</html>