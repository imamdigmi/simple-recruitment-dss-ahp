<?php
include_once('includes/header.inc.php');

if ($_POST) {
  include_once('includes/user.inc.php');
  $eks = new User($db);
  $eks->name = $_POST['name'];
  $eks->role = $_POST['role'];
  $eks->username = $_POST['username'];
  $eks->password = md5($_POST['password']);

  if ($eks->password == md5($_POST['confirmation_password'])) {
    if ($eks->insert()) { ?>
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
  } else { ?>
    <script type="text/javascript">
      window.onload=function(){
        showStickyWarningToast();
      };
    </script> <?php
  }
}
?>

<div class="row">
  <div class="col-xs-12 col-sm-12 col-md-12">
	  <ol class="breadcrumb">
		  <li><a href="index.php">Beranda</a></li>
		  <li><a href="user.php">Data Pengguna</a></li>
		  <li class="active">Tambah Data</li>
		</ol>
  	<p style="margin-bottom:10px;">
  		<strong style="font-size:18pt;"><span class="fa fa-clone"></span> Tambah Pengguna</strong>
  	</p>
    <div class="panel panel-default">
      <div class="panel-body">
        <form method="post" id="form">
          <div class="form-group">
            <label for="name">Nama Lengkap</label>
            <input type="text" class="form-control" id="name" name="name" minlength="5" required="on">
          </div>
          <div class="form-group">
            <label for="role">Role</label>
            <select class="form-control" name="role" id="role" required="on">
              <option value="">----</option>
              <option value="operator">Operator</option>
              <option value="wakil">Wakil Ketua</option>
              <option value="ketua">Ketua</option>
            </select>
          </div>
          <div class="form-group">
            <label for="username">Username</label>
            <input type="text" class="form-control" id="username" name="username" minlength="5" maxlength="10" data-parsley-type="alphanum" required="on">
          </div>
          <div class="form-group">
            <label for="password">Password</label>
            <input type="password" class="form-control" id="password" name="password" minlength="6" required="on">
          </div>
          <div class="form-group">
            <label for="confirmation_password">Ulangi Password</label>
            <input type="password" class="form-control" id="confirmation_password" name="confirmation_password" minlength="6" data-parsley-equalto="#password" required="on">
          </div>
          <div class="btn-group">
            <button type="submit" class="btn btn-dark">Simpan</button>
      		  <button type="button" onclick="location.href='user.php'" class="btn btn-default">Kembali</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<?php include_once('includes/footer.inc.php'); ?>
