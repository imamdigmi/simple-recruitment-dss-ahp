<?php
include_once('includes/header.inc.php');

if($_POST){
	include_once('includes/alternatif.inc.php');
	$eks = new Alternatif($db);
	$eks->id = $_POST['kd'];
	$eks->nm = $_POST['nm'];
	if($eks->insert()){ ?>
		<script type="text/javascript">
			window.onload=function(){
				showStickySuccessToast();
			};
		</script> <?php
	} else { ?>
		<script type="text/javascript">
			window.onload=function(){
				showStickyErrorToast();
			};
		</script> <?php
	}
}
?>
<div class="row">
  <div class="col-xs-12 col-sm-12 col-md-12">
	  <ol class="breadcrumb">
		  <li><a href="index.php">Beranda</a></li>
		  <li><a href="data-alternatif.php">Data Alternatif</a></li>
		  <li class="active">Tambah Data</li>
		</ol>
  	<p style="margin-bottom:10px;">
  		<strong style="font-size:18pt;"><span class="fa fa-clone"></span> Tambah Alternatif</strong>
  	</p>
  	<div class="panel panel-default">
			<div class="panel-body">
				    <form method="post">
						  <div class="form-group">
						    <label for="kd">ID Alternatif</label>
						    <select class="form-control" id="kd" name="kd">
									<option>A1</option>
									<option>A2</option>
									<option>A3</option>
									<option>A4</option>
									<option>A5</option>
								</select>
						  </div>
						  <div class="form-group">
						    <label for="kt">Nama Alternatif</label>
						    <input type="text" class="form-control" id="nm" name="nm" required>
						  </div>
							<div class="btn-group">
							  <button type="submit" class="btn btn-dark">Simpan</button>
							  <button type="button" onclick="location.href='data-alternatif.php'" class="btn btn-default">Kembali</button>
							</div>
					</form>
			  </div>
		</div>
	</div>
</div>

<?php include_once('includes/footer.inc.php'); ?>
