
<?php 
session_start();
//koneksi ke database
include 'koneksi.php';
 ?>
 <!DOCTYPE html>
 <html>
 <head>
 	<title>Login Pelanggan</title>
 	<link rel="stylesheet" type="text/css" href="admin/assets/css/bootstrap.css">
 </head>
 <body>
	<!-- menu -->
	
	<?php include 'menu.php'; ?>

	<!-- konten -->
	<!-- Halaman Login Pelanggan -->
 	<div class="container">
 		<div class="row">
 			<div class="col-md-4">
 				<div class="panel panel-default">
 					<div class="panel-heading">
 						<h3 class="panel-title">Login Pelanggan</h3>
 					</div>
 					<div class="panel-body">
 						<form method="post">
 							<div class="form-group">
 								<label>Email</label>
 								<input type="email" class="form-control" name="email">
 							</div>
 							<div class="form-group">
 								<label>Password</label>
 								<input type="password" class="form-control" name="password">
 							</div>
 							<button class="btn btn-primary" name="simpan">Simpan</button>
 						</form>
 					</div>
 				</div>
 			</div>
 		</div>
 	</div>
 	<?php 
 	if (isset($_POST["simpan"])) 
 			{	

 		$email=$_POST['email'];
 		$password=$_POST['password'];
 		$ambil=	$koneksi->query("SELECT * FROM pelanggan WHERE email_pelanggan='$email' AND password_pelanggan='$password'");
 		$akunyangcocok =$ambil->num_rows;

 		if ($akunyangcocok==1) {
 			//anda sukses login
 			$akun=$ambil->fetch_assoc();
 			$_SESSION["pelanggan"]=$akun;
 			echo "<script>alert('anda sukses login');</script>";
 			echo "<script>location='checkout.php';</script>";

 		}else{
 			//anda gagal login
 			echo "<script>alert('anda gagal login, periksa akun anda!');</script>";
 			echo "<script>location='login.php';</script>";
 		}
 	}

 	 ?>
 </body>
 </html>