<?php
include "includes/config.php";
session_start();
if (!isset($_SESSION['nama_lengkap'])) {
echo "<script>location.href='login.php'</script>";
}
$config = new Config();
$db = $config->getConnection();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Pemilihan Pegawai Terbaik</title>
    <link type="text/css" rel="stylesheet" href="assets/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-datepicker.min.css"> -->
    <link type="text/css" rel="stylesheet" href="assets/css/dataTables.bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="assets/css/jquery.toastmessage.css"/>
    <link type="text/css" rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="assets/css/sweetalert.css">
    <link type="text/css" rel="stylesheet" href="assets/css/style.css">
    <script src="assets/js/sweetalert.min.js"></script>
    <script type="text/javascript" src="assets/js/jquery-1.11.3.min.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="container">
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
          <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
              </button>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
              <li><a href="index.php">Home <span class="sr-only">(current)</span></a></li>
              <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-file "></i> Input Data <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                      <li role="presentation"><a href="nilai.php"><span class="fa fa-modx"></span> Data Nilai</a></li>
                      <li role="presentation"><a href="data-kriteria.php"><span class="fa fa-bank"></span> Data Kriteria</a></li>
                      <li role="presentation"><a href="data-alternatif.php"><span class="fa fa-book"></span> Data Alternatif</a></li>
                  </ul>
              </li>
              <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-file "></i> Analisa Data <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                      <li role="presentation"><a href="analisa-kriteria.php"><span class="fa fa-bomb"></span> Analisa Kriteria</a></li>
                      <li role="presentation"><a href="analisa-alternatif.php"><span class="fa fa-balance-scale"></span> Analisa Alternatif</a></li>
                      <li role="presentation"><a href="rangking.php"><span class="fa fa-bolt"></span> Rangking</a></li>
                      <li role="presentation"><a href="laporan-cetak.php" target="_blank"><span class="fa fa-file-pdf-o"></span> Laporan</a></li>
                  </ul>
              </li>
              <?php //if ($_SESSION["nama_lengkap"] == "Pegawai"): ?>
                  <!-- <li><a href="?page=pegawai">Pegawai</a></li> -->
              <?php //endif; ?>

              <?php //if ($_SESSION["nama_lengkap"] == "Atasan"): ?>
                  <!-- <li><a href="?page=kriteria">Kriteria</a></li>
                  <li><a href="?page=nilai">Nilai Awal</a></li>
                  <li><a href="?page=penilaian">Penilaian</a></li>
                  <li><a href="?page=pengguna">Pengguna</a></li>
                  <li><a href="?page=perhitungan">Perhitungan</a></li> -->
              <?php //endif; ?>

              <?php //if ($_SESSION["nama_lengkap"] == "Atasan" OR $_SESSION["role"] == "Manajer"): ?>
                  <!-- <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Laporan <span class="caret"></span></a>
                      <ul class="dropdown-menu">
                          <li><a href="?page=pegawai&laporan">Pegawai</a></li>
                          <li><a href="?page=kriteria&laporan">Kriteria</a></li>
                          <li><a href="?page=penilaian&laporan">Penialain</a></li>
                          <li><a href="?page=usulan&laporan">Usulan</a></li>
                      </ul>
                  </li> -->
              <?php //endif; ?>
          </ul>
          <ul class="nav navbar-nav navbar-right">
              <li class="dropdown">
                  <a href="#" class="dropdown-toggle text-red text-bold" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><?=$_SESSION["nama_lengkap"]?> <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                      <li><a href="profil.php"><span class="fa fa-user"></span> Profil</a></li>
                      <li><a href="user.php"><span class="fa fa-users"></span> Manejer Pengguna</a></li>
                      <li role="separator" class="divider"></li>
                      <li><a href="logout.php"><span class="fa fa-sign-out"></span> Logout</a></li>
                  </ul>
              </li>
          </ul>
          </div><!-- /.navbar-collapse -->
      </div><!-- /.container -->
  </nav>
