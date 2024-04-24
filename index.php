<?php include('inc/head.php'); ?>
<style>
    #post {
		background: url('asdasd.jpg') no-repeat center center;
      	height: 100vh;
    }
	
	.header {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
}

.logo {
    width: 100px;
    height: 100px;

}

h1 {
    text-align: left;
	margin-left: 120px;
    margin-top: -70px; /* Adjust as needed */
	font-size: 20px;	 
}


    /* Height for devices larger than 576px */
    @media (min-width: 992px) {
      #intro {
        margin-top: -58.59px;
      }
    }

.row {
	padding-bottom: 20px;	
}



</style>
<body>
	<nav class="navbar navbar-toggleable-sm navbar-inverse bg-inverse p-0">
		<div class="container">
			<button class="navbar-toggler toggler-right" data-target="#mynavbar" data-toggle="collapse">
				<span class="navbar-toggler-icon"></span>
			</button>
			<a href="index.php" class="navbar-brand mr-3">Request form and Management</a>
			
		</div>
		<!-- Designed and developed by Habibur Rahman Mahid -->
	</nav>
	<!--This Is Header-->
	<header id="main-header" class="bg-success py-4 text-white">
		<div class="container">
			<div class="row">
				<div class="col-md-6" id="header">
					<img src="logo2.png" alt="Logo" class="logo">
					<h1><i class="">Jose R. Reyes Memorial Medical Center | IHOMU </i> </h1>
				</div>
			</div>
		</div>
	</header>
	
	<!-- Designed and developed by Habibur Rahman Mahid -->
	<!----Section2 for showing Post Model ---->
	<section id="post">
		<div class="container">
			<div class="row">
				<div class="col-md-6 offset-md-3 z-n1 position-absolute p-5 rounded-3">
					<div class="card">
						<div class="card-header">
							<h5>User Login</h5>
						</div>
						<div class="card-body p-3">
							<form action="" method="POST">
								<label class="form-control-label">Email</label>
								<input type="email" name="email" class="form-control"  />
								<br />
								<label class="form-control-label">Password</label>
								<input type="password" name="password" class="form-control"  />
								<br />
								<input type="submit" name="submit" class="btn btn-success" style="border-radius:0%;" value="Log In" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	</section>
	</section>
	<!----Section3 footer ---->
	<section id="main-footer" class="text-center text-white bg-inverse mt-4 p-4">
		<div class="container">
			<div class="row">
				<div class="col">
					<p class="lead">&copy; <?php echo date("Y")?> Jose R. Reyes Memorial Medical Center | IHOMU</p>
				</div>
			</div>
		</div>
	</section>
	
  
  <script src="js/jquery.min.js"></script>
  <script src="js/tether.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="https://cdn.ckeditor.com/4.9.1/standard/ckeditor.js"></script>
  <script>
	CKEDITOR.replace('editor1');
  </script>

</body>
</html>
<!-- Designed and developed by Habibur Rahman Mahid -->
<?php 
	
	if(isset($_POST['submit'])){
		$user = $_POST['email'];
		$password = $_POST['password'];

		$password = md5($_POST['password']);

		include 'inc/config.php';

		$sql = "SELECT * FROM users WHERE email = '$user' AND password = '$password'";

		$run = mysqli_query($con,$sql);
		$check = mysqli_num_rows($run);

		$name = $_GET['name'];

		if($check == 1){
			session_start();
			$_SESSION['email'] = $user;
			
			echo "<script> 
					window.open('dashboard.php','_self');
				  </script>";
		}else{
			echo "<script> 
			alert('Email or Password Invaild');
			window.open('index.php','_self');
			</script>";
		}
	}

 ?>