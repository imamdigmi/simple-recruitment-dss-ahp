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
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Administrasi</title>

        <!-- Bootstrap -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
        <link type="text/css" href="css/jquery.toastmessage.css" rel="stylesheet"/>
        <link rel="stylesheet" href="css/font-awesome.min.css">

        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>

        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <!-- Brand and toggle get grouped for better mobile display -->

                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <a class="navbar-brand" href="index.php">Sistem Pendukung Keputusan Kenaikan Jabatan Karyawan</a>

                </div> 
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                <ul class="nav navbar-nav">
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
<!--                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="glyphicon glyphicon-file "></i> Admin Area <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li role="presentation"><a href="profil.php"><span class="fa fa-user"></span> Profil</a></li>
                            <li role="presentation"><a href="user.php"><span class="fa fa-users"></span> Pengguna</a></li>
                            <li role="presentation"><a href="logout.php"><span class="fa fa-sign-out"></span> Logout</a></li>
                        </ul>
                    </li>-->
                </ul>
           
            <!-- Collect the nav links, forms, and other content for toggling -->
                <ul class="nav navbar-nav navbar-right">
                      <!--<li><a href="https://www.facebook.com/ghazali.samudera"><span class="fa fa-facebook"></span></a></li>
                      <li><a href="https://www.plus.google.com/+TGhazali"><span class="fa fa-google-plus"></span></a></li>
                      <li><a href="https://www.twitter.com/tghazalipidie"><span class="fa fa-twitter"></span></a></li>
                      <li><a href="https://www.youtube.com/?q=Code+Berkas"><span class="fa fa-youtube"></span></a></li> -->
                    <li><a href=""><?php echo $_SESSION['nama_lengkap'] ?></a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cog"></span> <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="profil.php"><span class="fa fa-user"></span> Profil</a></li>
                            <li><a href="user.php"><span class="fa fa-users"></span> Manejer Pengguna</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="logout.php"><span class="fa fa-sign-out"></span> Logout</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <div class="container-fluid">