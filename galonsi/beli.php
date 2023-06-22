<?php 
session_start();
//mendapatkan id produk dari url
$id_produk=$_GET['id'];

//jika sudah ada maka produk itu nambah 1
if (isset($_SESSION['keranjang'][$id_produk])) 
{
	$_SESSION['keranjang'][$id_produk]+=1;
} 
//kalau belum beli maka produk di anggap beli 1
else
{
	$_SESSION['keranjang'][$id_produk]=1;
}

echo "<script>alert('produk telah masuk ke keranjang');</script>";
echo "<script>location='keranjang.php';</script>";
 ?>