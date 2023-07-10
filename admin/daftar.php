<?php 
session_start();
//koneksi ke database
$koneksi = new mysqli("localhost","root","","galon");
 ?>
<!DOCTYPE html>
<html>
<head>
    <title>Daftar admin</title>
        <!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body>
 <!-- isi-->
    <div class="container">
        <div class="row text-center ">
            <div class="col-md-12">
                <br /><br />
                <h2>Daftar</h2>
                <h5>Sebagai admin</h5>
                 <br />
            </div>
        </div>
         <div class="row ">
               
                  <div class="col-md-7 col-md-offset-3">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                        <strong> Daftar</strong>  
                        <a style="margin-left: 470px" class="btn btn-secondary" href="index.php">Kembali</a> 
                            </div>
                            <div class="panel-body">
                                <form method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="control-label col-md-3">Username</label>
                            <div class="col-md-7">
                                <input type="text" name="username" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Password</label>
                            <div class="col-md-7">
                                <input type="password" name="password" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Nama Lengkap</label>
                            <div class="col-md-7">
                                <input type="text" name="nama_lengkap" class="form-control" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-7 col-md-offset-3">
                                <button class="btn btn-primary " name="daftar">Daftar</button>
                            </div>
                        </div>
                    </form>
                <?php if (isset($_POST["daftar"]))

                    {
                        $username=$_POST["username"];
                        $password=$_POST["password"];
                        $nama_lengkap=$_POST["nama_lengkap"];

                        $ambil=$koneksi->query("SELECT * FROM admin WHERE username='$username'");
                        $yangcocok = $ambil->num_rows;
                        if ($yangcocok>0) 
                        {
                            echo "<script>alert('pendaftaran gagal,email sudah di gunakan');</script>";
                            echo "<script>location='daftar.php';</script>";
                        }
                        else
                        {
                            $koneksi->query("INSERT INTO admin(username,password,nama_lengkap) VALUES('$username','$password','$nama_lengkap')");
 
                            echo "<script>alert('berhasil mendaftar, silahkan login');</script>";
                            echo "<script>location='login.php';</script>";
                        }
                    }

                    ?>
    </body>
</html>