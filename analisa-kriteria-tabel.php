<?php
include_once('includes/header.inc.php');
include_once('includes/bobot.inc.php');
include_once('includes/kriteria.inc.php');

$bobotObj = new Bobot($db);
$count = $bobotObj->countAll();

if(isset($_POST['submit'])){
	$kriteriaObj = new Kriteria($db);
	$kriteriaCount = $kriteriaObj->countAll();

	$r = [];
	$kriterias = $kriteriaObj->readAll();
	while ($row = $kriterias->fetch(PDO::FETCH_ASSOC)) {
		$kriteriass = $kriteriaObj->readSatu($row['id_kriteria']);
		while ($roww = $kriteriass->fetch(PDO::FETCH_ASSOC)) {
			$pcs = explode("C", $roww['id_kriteria']);
			$c = $kriteriaCount - $pcs[1];
		}
		if ($c>=1) {
			$r[$row['id_kriteria']] = $c;
		}
	}

	$no=1;
	foreach ($r as $k => $v) {
		for ($i=1; $i<=$v; $i++) {
			$pcs = explode("C", $k);
			$nid = "C".($pcs[1]+$i);
			if ($bobotObj->insert($_POST[$k.$no], $_POST['nl'.$no], $_POST[$nid.$no])) {
				// ...
			} else {
				$bobotObj->update($_POST[$k.$no], $_POST['nl'.$no], $_POST[$nid.$no]);
			}
			$no++;
		}
	}
}

if (isset($_POST['hapus'])) {
	$bobotObj->delete();
	echo "<script>location.href='analisa-kriteria.php'</script>";
	exit;
}
?>
<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-12">
		<ol class="breadcrumb">
		  <li><a href="index.php">Beranda</a></li>
		  <li><a href="analisa-kriteria.php">Analisa Kriteria</a></li>
		  <li class="active">Tabel Analisa Kriteria</li>
		</ol>
		<div class="row">
			<div class="col-md-6 text-left">
				<strong style="font-size:18pt;"><span class="fa fa-table"></span> Perbandingan Kriteria</strong>
			</div>
			<div class="col-md-6 text-right">
				<form method="post">
          <button name="hapus" class="btn btn-danger">Hapus Semua Data</button>
				</form>
			</div>
		</div>
		<br/>
		<table width="100%" class="table table-striped table-bordered">
      <thead>
        <tr>
          <th>Antar Kriteria</th>
          <?php $bobots1 = $bobotObj->readAll2(); while ($row = $bobots1->fetch(PDO::FETCH_ASSOC)): ?>
            <th><?=$row['nama_kriteria'] ?></th>
          <?php endwhile; ?>
        </tr>
      </thead>
      <tbody>
				<?php $bobots2 = $bobotObj->readAll2(); while ($baris = $bobots2->fetch(PDO::FETCH_ASSOC)): ?>
          <tr>
            <th class="active"><?=ucwords($baris['nama_kriteria'])?></th>
            <?php $bobots3 = $bobotObj->readAll2(); while ($kolom = $bobots3->fetch(PDO::FETCH_ASSOC)): ?>
              <td>
              	<?php
								if ($baris['id_kriteria'] == $kolom['id_kriteria']) {
              		echo '1';
              		if (!$bobotObj->insert($baris['id_kriteria'], '1', $kolom['id_kriteria'])) {
							  		$bobotObj->update($baris['id_kriteria'], '1', $kolom['id_kriteria']);
							  	}
              	} else {
									if ($baris["id_kriteria"] == "C1") {
										$bobotObj->readAll1($baris['id_kriteria'], $kolom['id_kriteria']);
										echo $n = number_format($bobotObj->nak, 4, '.', ',');
	              		if (!$bobotObj->insert($baris['id_kriteria'], $n, $kolom['id_kriteria'])) {
								  		$bobotObj->update($baris['id_kriteria'], $n, $kolom['id_kriteria']);
								  	}
									} else {
										$bobotObj->readAll3($baris['id_kriteria']);
										$n = ($bobotObj->readAll4() == $kolom['id_kriteria']) ? $bobotObj->nak : 1/$bobotObj->nak;
										echo $nn = number_format($n, 4, '.', ',');
	              		if (!$bobotObj->insert($baris['id_kriteria'], $nn, $kolom['id_kriteria'])) {
								  		$bobotObj->update($baris['id_kriteria'], $nn, $kolom['id_kriteria']);
								  	}
									}
              	}
              	?>
              </td>
            <?php endwhile; ?>
          </tr>
				<?php endwhile; ?>
      </tbody>
			<tfoot>
				<tr class="info">
					<th>Jumlah</th>
					<?php $bobots4 = $bobotObj->readAll2(); while ($row = $bobots4->fetch(PDO::FETCH_ASSOC)): ?>
						<th>
							<?php
								$bobotObj->readSum1($row['id_kriteria']);
								echo number_format($bobotObj->nak, 4, '.', ',');
								$bobotObj->insert3($bobotObj->nak, $row['id_kriteria']);
							?>
						</th>
					<?php endwhile; ?>
				</tr>
			</tfoot>
    </table>

		<table width="100%" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Perbandingan</th>
					<?php $bobots1x = $bobotObj->readAll2(); while ($row = $bobots1x->fetch(PDO::FETCH_ASSOC)): ?>
						<th><?=$row['nama_kriteria'] ?></th>
					<?php endwhile; ?>
					<th class="info">Jumlah</th>
					<th class="success">Prioritas</th>
				</tr>
			</thead>
			<tbody>
				<?php $bobots2x = $bobotObj->readAll2(); while ($row1 = $bobots2x->fetch(PDO::FETCH_ASSOC)): ?>
					<tr>
						<th class="active"><?=$row1['nama_kriteria'] ?></th>
						<?php $bobots3x = $bobotObj->readAll2(); while ($row2 = $bobots3x->fetch(PDO::FETCH_ASSOC)): ?>
							<td>
							<?php
								if ($row1['id_kriteria'] == $row2['id_kriteria']) {
									$c = 1/$row2['jumlah_kriteria'];
									$bobotObj->insert2($c, $row1['id_kriteria'], $row2['id_kriteria']);
									echo number_format($c, 4, '.', ',');
								} else {
									$bobotObj->readAll1($row1['id_kriteria'], $row2['id_kriteria']);
									$c = $bobotObj->nak / $row2['jumlah_kriteria'];
									$bobotObj->insert2($c, $row1['id_kriteria'], $row2['id_kriteria']);
									echo number_format($c, 4, '.', ',');
								}
								?>
							</td>
						<?php endwhile; ?>
						<th class="info">
							<?php
							$bobotObj->readSum2($row1['id_kriteria']);
							$j = $bobotObj->hak;
							// $bobotObj->insert4($j, $row1['id_kriteria']);
							echo number_format($j, 4, '.', ',');
							?>
						</th>
						<th class="success">
							<?php
							$bobotObj->readAvg($row1['id_kriteria']);
							$b = $bobotObj->hak;
							$bobotObj->insert4($b, $row1['id_kriteria']);
							echo number_format($b, 4, '.', ',');
							?>
						</th>
					</tr>
				<?php endwhile; ?>
			</tbody>
		</table>

		<table width="100%" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Penjumlahan</th>
					<?php $bobots1y = $bobotObj->readAll2(); while ($row = $bobots1y->fetch(PDO::FETCH_ASSOC)): ?>
						<th><?=$row['nama_kriteria'] ?></th>
					<?php endwhile; ?>
					<th class="info">Jumlah</th>
				</tr>
			</thead>
			<tbody>
				<?php $sumRow = []; $bobots2y = $bobotObj->readAll2(); while ($row1 = $bobots2y->fetch(PDO::FETCH_ASSOC)): ?>
					<tr>
						<th class="active"><?=$row1['nama_kriteria'] ?></th>
						<?php $jumlah = 0; $bobots3y = $bobotObj->readAll2(); while ($row2 = $bobots3y->fetch(PDO::FETCH_ASSOC)): ?>
							<td>
							<?php
								if ($row1['id_kriteria'] == $row2['id_kriteria']) {
									$c = $row2['bobot_kriteria'] * 1;
									echo number_format($c, 4, '.', ',');
									$jumlah += $c;
								} else {
									$bobotObj->readAll1($row1['id_kriteria'], $row2['id_kriteria']);
									$c = $row2['bobot_kriteria'] * $bobotObj->nak;
									echo number_format($c, 4, '.', ',');
									$jumlah += $c;
								}
								?>
							</td>
						<?php endwhile; ?>
						<th class="info">
							<?php
							$sumRow[$row1['id_kriteria']] = $jumlah;
							echo number_format($jumlah, 4, '.', ',');
							?>
						</th>
					</tr>
				<?php endwhile;?>
			</tbody>
		</table>

		<table width="100%" class="table table-striped table-bordered">
			<thead>
				<tr>
					<th>Rasio Konsistensi</th>
					<th class="info">Jumlah</th>
					<th class="success">Prioritas</th>
					<th class="warning">Hasil</th>
				</tr>
			</thead>
			<tbody>
				<?php $total=0; $bobots1z = $bobotObj->readAll2(); while ($row1 = $bobots1z->fetch(PDO::FETCH_ASSOC)): ?>
					<tr>
						<th class="active"><?=$row1["nama_kriteria"]?></th>
						<th class="info"><?=number_format($sumRow[$row1["id_kriteria"]], 4, '.', ',')?></th>
						<th class="success"><?=number_format($row1["bobot_kriteria"], 4, '.', ',');?></th>
						<?php $jumlah = $sumRow[$row1["id_kriteria"]] + $row1["bobot_kriteria"]; ?>
						<th class="warning"><?=number_format($jumlah, 4, '.', ',');?></th>
						<?php $total += $jumlah; ?>
					</tr>
				<?php endwhile; ?>
			</tbody>
			<tfoot>
				<tr class="danger">
					<th colspan="3">Rata-rata</th>
					<th><?php $rata = $total/$count; echo number_format($rata, 4, '.', ','); ?></th>
				</tr>
			</tfoot>
		</table>

		<table width="100%" class="table table-striped table-bordered">
			<tbody>
				<tr>
					<th>N (kriteria)</th>
					<td><?=$count?></td>
				</tr>
				<tr>
					<th>Hasil Akhir (X maks)</th>
					<td><?=number_format($rata, 4, '.', ',');?></td>
				</tr>
				<tr>
					<th>IR</th>
					<td><?php echo $ir = 1.12; ?></td>
				</tr>
				<tr>
					<th>CI</th>
					<td><?php $ci = ($rata-$count)/($count-1); echo number_format($ci, 4, '.', ',');?></td>
				</tr>
				<tr>
					<th>CR</th>
					<td><?php $cr = $ci/$ir; echo number_format($cr, 4, '.', ',');?></td>
				</tr>
			</tbody>
		</table>

	</div>
</div>

<?php include_once('includes/footer.inc.php'); ?>
