<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <!-- <div class="content-wrapper"> -->
	    <!-- <div class="container"> -->

	      <!-- Main content -->
	      <section class="content">
	        <!-- <div class="row"> -->
	        	<!-- <div class="col-sm-9"> -->
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>
	        		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                <ol class="carousel-indicators">
		                  <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
		                  <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
						  <li data-target="#carousel-example-generic" data-slide-to="3" class=""></li>
		                </ol>
		                <div class="carousel-inner">
		                  <div class="item active" data-interval="600">
		                    <img src="images/b1.png" alt="First slide" width="100%" height="1000">
		                  </div>
		                  <div class="item" data-interval="600">
		                    <img src="images/2.png" alt="Second slide" width="2000" height="1000">
		                  </div>
		                  <div class="item" data-interval="600">
		                    <img src="images/Apex(20183) (1).png" alt="Third slide" width="2000" height="1000">
		                  </div>
						  <div class="item" data-interval="600">
		                    <img src="images/Apex(ERTYUIO.png" alt="Fourth slide" width="2000" height="1000">
		                  </div>
		                </div>
		                <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
		                  <span class="fa fa-angle-left"></span>
		                </a>
		                <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
		                  <span class="fa fa-angle-right"></span>
		                </a>
		            </div>
					<div class="desc">
						<img src="images\Untitled design.png" width="100%"  alt="alternatetext">
						</div>
						<div class="desc">
						<img src="images\Untitled design2.png" width="100%"  alt="alternatetext">
						</div>
						<div class="desc">
						<img src="images\Untitled design3.png" width="100%"  alt="alternatetext">
						</div>
						<div class="desc">
						<img src="images\Untitled design6.png" width="100%"  alt="alternatetext">
						</div>
						<div class="desc">
						<img src="images\Untitled design5.png" width="100%"  alt="alternatetext">
						</div>
						<div class="desc">
						<img src="images\Untitled design4.png" width="100%"  alt="alternatetext">
						</div>
						<div class="desc">
						<img src="images\neko.png" width="100%"  alt="alternatetext">
						</div>

		            <!-- <h2>Monthly Top Sellers</h2> -->
  	<?php include 'includes/footer.php'; ?>
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>