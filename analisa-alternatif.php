<?php
include_once('includes/header.inc.php');
include_once('includes/skor.inc.php');
include_once('includes/alternatif.inc.php');
include_once('includes/kriteria.inc.php');
include_once('includes/nilai.inc.php');

$altObj = new Alternatif($db);
$skoObj = new Skor($db);
$kriObj = new Kriteria($db);
$nilObj = new Nilai($db);

$altCount = $altObj->countAll();

$r = [];
$alt1 = $altObj->readAll();
while ($row = $alt1->fetch(PDO::FETCH_ASSOC)) {
	$alt2 = $altObj->readSatu($row['id_alternatif']);
	while ($roww = $alt2->fetch(PDO::FETCH_ASSOC)) {
		$pcs = explode("A", $roww['id_alternatif']);
		$c = $altCount - $pcs[1];
	}
	if ($c>=1) {
		$r[$row['id_alternatif']] = $c;
	}
}
?>
<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-12">
		<ol class="breadcrumb">
			<li><a href="index.php">Beranda</a></li>
			<li class="active">Analisa Alternatif</li>
			<li><a href="#" data-toggle="modal" data-target="#myModalalt">Tabel Analisa Alternatif</a></li>
		</ol>
		<!-- Modal -->
		<div class="modal fade" id="myModalalt" tabindex="-1" role="dialog" aria-labelledby="myModalLabelalt">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title" id="myModalLabelalt">Pilih Kriteria</h4>
					</div>
					<div class="modal-body">
						<div class="list-group">
							<?php $kri1 = $kriObj->readAll(); while ($row = $kri1->fetch(PDO::FETCH_ASSOC)): ?>
								<a href="analisa-alternatif-tabel.php?kriteria=<?=$row['id_kriteria'] ?>" class="list-group-item"><?=$row['nama_kriteria'] ?></a>
							<?php endwhile; ?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<p style="margin-bottom:10px;">
			<strong style="font-size:18pt;"><span class="fa fa-bomb"></span> Analisa Alternatif</strong>
		</p>
		<div class="panel panel-default">
			<div class="panel-body">
				<form method="post" action="analisa-alternatif-tabel.php">
					<div class="row">
						<div class="col-xs-12 col-md-3">
							<div class="form-group">
								<p style="padding:10px 0;"><label>Pilih Kriteria</label></p>
							</div>
						</div>
						<div class="col-xs-12 col-md-9">
							<div class="form-group">
								<select class="form-control" id="kriteria" name="kriteria">
								<?php $kri2 = $kriObj->readAll(); while ($row = $kri2->fetch(PDO::FETCH_ASSOC)): ?>
									<option value="<?=$row['id_kriteria'] ?>"><?=$row['nama_kriteria'] ?></option>
								<?php endwhile; ?>
								</select>
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-xs-12 col-md-3">
							<div class="form-group">
								<label>Kriteria Pertama</label>
							</div>
						</div>
						<div class="col-xs-12 col-md-6">
							<div class="form-group">
								<label>Pernilaian</label>
							</div>
						</div>
						<div class="col-xs-12 col-md-3">
							<div class="form-group">
								<label>Kriteria Kedua</label>
							</div>
						</div>
					</div>

					<?php $no=1; foreach ($r as $k => $v): ?>
						<?php for ($i=1; $i<=$v; $i++): ?>
							<?php $rows = $altObj->readSatu($k); while ($row = $rows->fetch(PDO::FETCH_ASSOC)): ?>
								<div class="row">
									<div class="col-xs-12 col-md-3">
										<div class="form-group">
											<?php $rows = $skoObj->readAlternatif($k); while ($row = $rows->fetch(PDO::FETCH_ASSOC)): ?>
												<input type="text" class="form-control" value="<?=$row['nama'] ?>" readonly />
												<input type="hidden" name="<?=$k?><?=$no?>" value="<?=$row['id_alternatif'] ?>" />
											<?php endwhile; ?>
										</div>
									</div>
									<div class="col-xs-12 col-md-6">
										<div class="form-group">
											<select class="form-control" name="nl<?=$no?>">
											<?php $stmt1 = $nilObj->readAll(); while ($row2 = $stmt1->fetch(PDO::FETCH_ASSOC)): ?>
												<option value="<?=$row2['jum_nilai'] ?>"><?=$row2['jum_nilai'] ?> - <?=$row2['ket_nilai'] ?></option>
											<?php endwhile; ?>
											</select>
										</div>
									</div>
									<div class="col-xs-12 col-md-3">
										<div class="form-group">
										<?php $pcs = explode("A", $k); $nid = "A".($pcs[1]+$i); ?>
										<?php $rows = $skoObj->readAlternatif($nid); while ($row = $rows->fetch(PDO::FETCH_ASSOC)): ?>
											<input type="text" class="form-control" value="<?=$row['nama'] ?>" readonly />
											<input type="hidden" name="<?=$nid?><?=$no?>" value="<?=$row['id_alternatif'] ?>" />
										<?php endwhile; ?>
										</div>
									</div>
								</div>
							<?php endwhile; $no++; ?>
						<?php endfor; ?>
					<?php endforeach; ?>
					<button type="submit" name="submit" class="btn btn-dark"> Selanjutnya <span class="fa fa-arrow-right"></span></button>
				</form>
			</div>
		</div>
	</div>
</div>

<?php include_once('includes/footer.inc.php'); ?>
