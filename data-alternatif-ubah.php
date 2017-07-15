<?php
include_once('includes/header.inc.php');

$id = isset($_GET['id']) ? $_GET['id'] : die('ERROR: missing ID.');

include_once('includes/alternatif.inc.php');

$altObj = new Alternatif($db);
$altObj->id = $id;
$altObj->readOne();

if ($_POST) {
  	$altObj->nim = $_POST["nim"];
  	$altObj->nama = $_POST["nama"];
  	$altObj->tempat_lahir = $_POST["tempat_lahir"];
  	$altObj->tanggal_lahir = $_POST["tanggal_lahir"];
  	$altObj->kelamin = $_POST["kelamin"];
  	$altObj->alamat = $_POST["alamat"];
  	$altObj->no_hp = $_POST["no_hp"];
    if ($altObj->update()) {
        echo "<script>location.href='data-alternatif.php'</script>";
    } else { ?>
      <script type="text/javascript">
        window.onload = function () {
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
      <li class="active">Ubah Data</li>
    </ol>
    <p style="margin-bottom:10px;">
      <strong style="font-size:18pt;"><span class="fa fa-pencil"></span> Ubah Alternatif</strong>
    </p>
      <div class="panel panel-default">
        <div class="panel-body">
          <form method="POST" id="form">
            <div class="form-group">
                <label for="id">ID Alternatif</label>
                <input type="text" name="id" id="id" class="form-control" readonly="on" value="<?php echo $altObj->id; ?>">
            </div>
            <div class="form-group">
                <label for="nim">Nomor Induk Mahasiswa</label>
                <input type="text" name="nim" id="nim" class="form-control" autofocus="on" required="on" value="<?php echo $altObj->nim; ?>" minlength="9" maxlength="9" required="on">
            </div>
            <div class="form-group">
                <label for="nama">Nama Lengkap</label>
                <input type="text" name="nama" id="nama" class="form-control" value="<?php echo $altObj->nama; ?>" minlength="3" required="on">
            </div>
            <div class="form-group">
                <label for="tempat_lahir">Tempat Lahir</label>
                <input type="text" name="tempat_lahir" id="tempat_lahir" class="form-control" required="on" value="<?php echo $altObj->tempat_lahir; ?>" minlength="5" required="on">
            </div>
            <div class="form-group">
                <label for="tanggal_lahir">Tanggal Lahir</label>
                <input type="text" name="tanggal_lahir" id="tanggal_lahir" class="form-control datepicker" required="on" value="<?php echo $altObj->tanggal_lahir; ?>" required="on">
            </div>
            <div class="form-group">
                <label for="kelamin">Jenis Kelamin</label>
                <select class="form-control" name="kelamin" id="kelamin" required="on">
                    <option value="">---</option>
                    <option value="pria"<?=($altObj->kelamin == "pria")? "selected=\"on\"" : "" ?>>Pria</option>
                    <option value="wanita"<?=($altObj->kelamin == "wanita")? "selected=\"on\"" : "" ?>>Wanita</option>
                </select>
            </div>
            <div class="form-group">
                <label for="alamat">Alamat</label>
                <textarea id="alamat" name="alamat" rows="4" class="form-control" minlength="10" required="on"><?php echo $altObj->alamat; ?></textarea>
            </div>
            <div class="form-group">
                <label for="no_hp">Nomor HP</label>
                <input type="text" name="no_hp" id="no_hp" class="form-control" value="<?php echo $altObj->no_hp; ?>" minlength="11" lengthmax="12" data-parsley-type="integer" required="on">
            </div>
            <div class="btn-group">
              <button type="submit" class="btn btn-dark">Ubah</button>
              <button type="button" onclick="location.href = 'data-alternatif.php'" class="btn btn-default">Kembali</button>
            </div>
          </form>
        </div>
      </div>
  </div>
</div>

<?php include_once('includes/footer.inc.php'); ?>
