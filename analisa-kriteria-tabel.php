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
			}else{
				$bobotObj->update($_POST[$k.$no], $_POST['nl'.$no], $_POST[$nid.$no]);
			}

			if ($bobotObj->insert($_POST[$nid.$no], 1/$_POST['nl'.$no], $_POST[$k.$no])) {
				// ...
			}else{
				$bobotObj->update($_POST[$nid.$no], 1/$_POST['nl'.$no], $_POST[$k.$no]);
			}
			$no++;
		}
	}
}

if (isset($_POST['hapus'])) {
	$bobotObj->delete();
	header("location: analisa-kriteria.php");
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
				<?php $bobots2 = $bobotObj->readAll2(); while ($row1 = $bobots2->fetch(PDO::FETCH_ASSOC)): ?>
          <tr>
            <th style="vertical-align:middle;"><?=$row1['nama_kriteria'] ?></th>
            <?php $bobots3 = $bobotObj->readAll2(); while ($row2 = $bobots3->fetch(PDO::FETCH_ASSOC)): ?>
              <td style="vertical-align:middle;">
              	<?php
								if ($row1['id_kriteria'] == $row2['id_kriteria']) {
              		echo '1';
              		if ($bobotObj->insert($row1['id_kriteria'], '1', $row2['id_kriteria'])) {
										// ...
									} else {
							  		$bobotObj->update($row1['id_kriteria'], '1', $row2['id_kriteria']);
							  	}
              	} else {
              		$bobotObj->readAll1($row1['id_kriteria'], $row2['id_kriteria']);
              		echo number_format($bobotObj->kp, 3, '.', ',');
              	}
              	?>
              </td>
            <?php endwhile; ?>
          </tr>
				<?php endwhile; ?>
      </tbody>
			<tfoot>
				<tr>
					<th>Jumlah</th>
					<?php $stmt5 = $bobotObj->readAll2(); while ($row5 = $stmt5->fetch(PDO::FETCH_ASSOC)): ?>
						<th>
							<?php
								$bobotObj->readSum1($row5['id_kriteria']);
								echo number_format($bobotObj->nak, 3, '.', ',');
								$bobotObj->insert3($bobotObj->nak, $row5['id_kriteria']);
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
					<?php
					$bobots1x = $bobotObj->readAll2();
					$bobots2x = $bobotObj->readAll2();
					while ($row2x = $bobots1x->fetch(PDO::FETCH_ASSOC)): ?>
						<th><?=$row2x['nama_kriteria'] ?></th>
					<?php endwhile; ?>
					<th>Bobot</th>
				</tr>
			</thead>
			<tbody>
			<?php while ($row3x = $bobots2x->fetch(PDO::FETCH_ASSOC)): ?>
				<tr>
					<th style="vertical-align:middle;"><?=$row3x['nama_kriteria'] ?></th>
					<?php $stmt4x = $bobotObj->readAll2(); while ($row4x = $stmt4x->fetch(PDO::FETCH_ASSOC)): ?>
						<td style="vertical-align:middle;">
						<?php
							if($row3x['id_kriteria']==$row4x['id_kriteria']){
								$hs1 = 1/$row4x['jumlah_kriteria'];
								$bobotObj->insert2($hs1,$row3x['id_kriteria'],$row4x['id_kriteria']);
								echo number_format($hs1, 3, '.', ',');
							} else {
								$bobotObj->readAll1($row3x['id_kriteria'],$row4x['id_kriteria']);
								$jmk = $bobotObj->kp/$row4x['jumlah_kriteria'];
								$bobotObj->insert2($jmk,$row3x['id_kriteria'],$row4x['id_kriteria']);
								echo number_format($jmk, 3, '.', ',');
							}
							?>
						</td>
					<?php endwhile; ?>
					<th style="vertical-align:middle;">
						<?php
						$bobotObj->readAvg($row3x['id_kriteria']);
						$bbt = $bobotObj->hak;
						$bobotObj->insert4($bbt,$row3x['id_kriteria']);
						echo number_format($bbt, 3, '.', ',');
						?>
					</th>
				</tr>
			<?php endwhile; ?>
			</tbody>
			<tfoot>
				<tr>
					<th>Jumlah</th>
					<?php $stmt5x = $bobotObj->readAll2(); while ($row5x = $stmt5x->fetch(PDO::FETCH_ASSOC)): ?>
						<th>
							<?php $bobotObj->readSum2($row5x['id_kriteria']); echo number_format($bobotObj->nak, 3, '.', ','); ?>
						</th>
					<?php endwhile; ?>
					<th>
						<?php $bobotObj->readSum3(); echo number_format($bobotObj->bb, 3, '.', ','); ?>
					</th>
				</tr>
			</tfoot>
		</table>
	</div>
</div>

<?php include_once('includes/footer.inc.php'); ?>
