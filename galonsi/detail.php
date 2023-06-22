<?php 
session_start();
//koneksi ke database
include 'koneksi.php';

$id_produk = $_GET["id"];

$ambil=$koneksi->query("SELECT * FROM produk WHERE id_produk='$id_produk'");
$detail = $ambil->fetch_assoc();
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Detail produk</title>
	<link rel="stylesheet" type="text/css" href="admin/assets/css/bootstrap.css">
</head>
<body>
	<!-- menu -->
	<?php include 'menu.php'; ?>
	<!-- konten -->
	<section class="konten">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<img src="foto_produk/<?php echo $detail["foto_produk"]; ?>" alt="" class="img-responsive">
				</div>
				<div class="col-md-6">
					<h2><?php echo $detail["nama_produk"] ?></h2>
					<h4>Rp. <?php echo number_format($detail["harga_produk"]); ?></h4>

					<form method="post">
						<div class="form-group">
							<div class="input-group">
								<input type="number" name="jumlah" min="1" class="form-control">
								<div class="input-group-btn">
									<button class="btn btn-primary" name="beli">beli</button>
								</div>
							</div>
						</div>
					</form>

					<?php 
					if (isset($_POST["beli"])) 
					{
						$jumlah=$_POST["jumlah"];
						$_SESSION["keranjang"][$id_produk]=$jumlah;

						echo "<script>alert('produk telah dimasukan ke keranjang');</script>";
						echo "<script>location='keranjang.php'</script>";
					}
					 ?>

					<p><?php echo $detail["deskripsi_produk"] ?></p>
				</div>
			</div>
		</div>
	</section>
</body>
</html>