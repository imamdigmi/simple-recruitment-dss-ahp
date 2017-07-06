<?php
include_once('includes/header.inc.php');

if($_POST){
	include_once('includes/kriteria.inc.php');
	$eks = new Kriteria($db);

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
			<li><a href="data-kriteria.php">Data Kriteria</a></li>
			<li class="active">Tambah Data</li>
		</ol>
		<p style="margin-bottom:10px;">
			<strong style="font-size:18pt;"><span class="fa fa-clone"></span> Tambah Kriteria</strong>
		</p>
		<div class="panel panel-default">
			<div class="panel-body">
				<form method="post">
					<div class="form-group">
						<label for="kd">ID Kriteria</label>
						<select class="form-control" id="kd" name="kd">
							<option>C1</option>
							<option>C2</option>
							<option>C3</option>
							<option>C4</option>
							<option>C5</option>
						</select>
					</div>
					<div class="form-group">
						<label for="nm">Nama Kriteria</label>
						<input type="text" class="form-control" id="nm" name="nm" required>
					</div>
					<div class="btn-group">
						<button type="submit" class="btn btn-dark">Simpan</button>
						<button type="button" onclick="location.href='data-kriteria.php'" class="btn btn-default">Kembali</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

<?php include_once('includes/footer.inc.php'); ?>
