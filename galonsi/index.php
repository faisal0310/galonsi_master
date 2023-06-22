
<?php 
session_start();
//koneksi ke database
include 'koneksi.php';
 ?>
<!DOCTYPE html>
<html>
<head>
	<title>Galon Online</title>
	<link rel="stylesheet" type="text/css" href="admin/assets/css/bootstrap.css">
	<style type="text/css">
		.row{
			border:1px solid white;
		}
	</style>
</head>
<body>
	<!-- menu -->
	<?php include 'menu.php'; ?>
	<!-- konten -->
	<section class="konten">
		<div class="container">
			<h1>Produk Terbaru</h1>
			<div class="row">

				<?php $ambil =$koneksi->query("SELECT * FROM produk"); ?>
				<?php while ($perproduk = $ambil->fetch_assoc()) { ?>
				<div class="col-md-3">
					<div class="thumbnail">
						<img src="foto_produk/<?php echo $perproduk['foto_produk']; ?>" alt="" width="500">
						<div class="caption">
							<h3><?php echo $perproduk['nama_produk']; ?></h3>
							<h5>Rp. <?php echo number_format($perproduk['harga_produk']); ?></h5>
							<a href="beli.php?id=<?php echo $perproduk['id_produk']; ?>" class="btn btn-primary">Beli</a>
							<a href="detail.php?id=<?php echo $perproduk['id_produk']; ?>" class="btn btn-default">detail</a>
						</div>
					</div>
				</div>
				<?php } ?>
			</div>
		</div>
	</section>
</body>
</html>