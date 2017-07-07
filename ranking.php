<?php
include_once('includes/header.inc.php');

include_once('includes/alternatif.inc.php');
$pro1 = new Alternatif($db);
$stmt1 = $pro1->readAll();
$stmt1y = $pro1->readAll();

include_once('includes/kriteria.inc.php');
$pro2 = new Kriteria($db);
$stmt2 = $pro2->readAll();
$stmt2y = $pro2->readAll();

include_once('includes/ranking.inc.php');
$pro = new Ranking($db);
$stmt = $pro->readKhusus();
$stmty = $pro->readKhusus();
$count = $pro->countAll();
$stmtx1 = $pro->readBob();
$stmtx2 = $pro->readBob();
$stmtx1y = $pro->readBob();
$stmtx2y = $pro->readBob();
?>
<div class="row">
	<div class="col-xs-12 col-sm-12 col-md-12">
		<br/>
		<div class="row">
			<div class="col-md-6 text-left">
				<h4>Data Rangking</h4>
			</div>
			<div class="col-md-6 text-right">
	      <button type="button" onclick="location.href='index.php'" class="btn btn-primary"><i class="fa fa-arrow-left"></i> Kembali</button>
			</div>
		</div>
		<br/>
		<table width="100%" class="table table-striped table-bordered">
	    <thead>
	      <tr>
	        <th rowspan="2" style="vertical-align: middle" class="text-center">Alternatif</th>
	        <th colspan="<?php echo $stmt2->rowCount(); ?>" class="text-center">Kriteria</th>
	      </tr>
				<tr>
				<?php while ($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)): ?>
					<th><?php echo $row2['nama_kriteria'] ?></th>
				<?php endwhile; ?>
				</tr>
	    </thead>
			<tbody>
				<?php while ($row1 = $stmt1->fetch(PDO::FETCH_ASSOC)): ?>
					<tr>
						<th><?php echo $row1['nama_alternatif'] ?></th>
						<?php $a= $row1['id_alternatif']; $stmt21 = $pro2->readAll(); ?>
						<?php	while ($row21 = $stmt21->fetch(PDO::FETCH_ASSOC)): ?>
							<?php $b= $row21['id_kriteria']; $stmtr = $pro->readR($a,$b); ?>
							<?php while ($rowr = $stmtr->fetch(PDO::FETCH_ASSOC)): ?>
								<td>
									<?php
										echo $nor = $rowr['skor_alt_kri'];
										//pow($rowr['skor_alt_kri'],$bobot);
										//$pro->ia = $a;
										//$pro->ik = $b;
										//$pro->nn4 = $nor;
										//$pro->normalisasi1();
									?>
								</td>
							<?php endwhile; ?>
						<?php endwhile; ?>
					</tr>
				<?php endwhile; ?>
				<tr>
					<th>Bobot</th>
					<?php while ($rowx1 = $stmtx1->fetch(PDO::FETCH_ASSOC)): ?>
						<td><?php echo $rowx1['bobot_kriteria'] ?></td>
					<?php endwhile; ?>
				</tr>
				<tr>
					<th>Jumlah</th>
					<?php while ($rowx2 = $stmtx2->fetch(PDO::FETCH_ASSOC)): ?>
						<td>
							<?php
								$stmtx3 = $pro->readMax($rowx2['id_kriteria']);
								$rowx3 = $stmtx3->fetch(PDO::FETCH_ASSOC);
								echo number_format($rowx3['mnr1'], 5, '.', ',');
							?>
						</td>
					<?php endwhile; ?>
				</tr>
			</tbody>
	  </table>
		<h3>Hasil Perangkingan</h3>
		<br/>
		<table width="100%" class="table table-striped table-bordered">
	    <thead>
	      <tr>
	        <th rowspan="2" style="vertical-align: middle" class="text-center">Alternatif</th>
	        <th colspan="<?php echo $stmt2->rowCount(); ?>" class="text-center">Kriteria</th>
	        <th rowspan="2" style="vertical-align: middle" class="text-center">Hasil</th>
	      </tr>
	      <tr>
	        <?php while ($row2 = $stmt2y->fetch(PDO::FETCH_ASSOC)): ?>
	          <th><?php echo $row2['nama_kriteria'] ?></th>
	        <?php endwhile; ?>
	      </tr>
	    </thead>
	    <tbody>
				<?php while ($row1 = $stmt1y->fetch(PDO::FETCH_ASSOC)): ?>
	        <tr>
	          <th><?php echo $row1['nama_alternatif'] ?></th>
	          <?php $a1= $row1['id_alternatif']; $stmt21 = $pro2->readAll(); ?>
						<?php while ($row21 = $stmt21->fetch(PDO::FETCH_ASSOC)): ?>
							<?php $b2= $row21['id_kriteria']; $stmtr = $pro->readR($a1,$b2); ?>
							<?php while ($rowr = $stmtr->fetch(PDO::FETCH_ASSOC)): ?>
	              <td>
	              	<?php
	                	echo $norx = $rowr['skor_alt_kri']*$row21['bobot_kriteria'];
										//pow($rowr['skor_alt_kri'],$bobot);
										$pro->ia = $a1;
										$pro->ik = $b2;
										$pro->nn4 = $norx;
										$pro->normalisasi1();
	              	?>
	              </td>
							<?php endwhile; ?>
	          <?php endwhile; ?>
						<td>
							<?php
							$stmthasil = $pro->readHasil1($a1);
							$hasil = $stmthasil->fetch(PDO::FETCH_ASSOC);
							echo $hasil['bbn'];
							$pro->ia = $a1;
							$pro->has1 = $hasil['bbn'];
							$pro->hasil1();
							?>
						</td>
	        </tr>
				<?php endwhile; ?>
				<tr>
					<th>Jumlah</th>
					<?php while ($rowx2 = $stmtx2y->fetch(PDO::FETCH_ASSOC)): ?>
	          <td>
							<?php
								$stmtx3y = $pro->readMax($rowx2['id_kriteria']);
								$rowx3 = $stmtx3y->fetch(PDO::FETCH_ASSOC);
								echo number_format($rowx3['mnr1'], 5, '.', ',');
							?>
						</td>
		      <?php endwhile; ?>
					<td>
						<?php
							$stmtx4y = $pro->readMax2();
							$rowx4 = $stmtx4y->fetch(PDO::FETCH_ASSOC);
							echo number_format($rowx4['mnr2'], 5, '.', ',');
						?>
					</td>
				</tr>
	    </tbody>
	  </table>
	</div>
</div>
<?php include_once('includes/footer.inc.php'); ?>
