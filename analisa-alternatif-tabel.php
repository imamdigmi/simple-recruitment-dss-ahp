<?php
include_once('includes/header.inc.php');

include_once('includes/skor.inc.php');
$pro = new Skor($db);
$altkriteria = isset($_POST['kriteria']) ? $_POST['kriteria'] : $_GET['kriteria'];
$stmt2 = $pro->readAll2();
$stmt3 = $pro->readAll2();

if(isset($altkriteria)){
	$pro->readKri($altkriteria);
	$count = $pro->countAll();

	if(isset($_POST['subankr'])){
		$pro->insert($_POST['A11'],$_POST['nl1'],$_POST['A21'],$altkriteria) ? '' : $pro->update($_POST['A11'],$_POST['nl1'],$_POST['A21'],$altkriteria);
		$pro->insert($_POST['A12'],$_POST['nl2'],$_POST['A32'],$altkriteria) ? '' : $pro->update($_POST['A12'],$_POST['nl2'],$_POST['A32'],$altkriteria);
		$pro->insert($_POST['A13'],$_POST['nl3'],$_POST['A43'],$altkriteria) ? '' : $pro->update($_POST['A13'],$_POST['nl3'],$_POST['A43'],$altkriteria);
		$pro->insert($_POST['A14'],$_POST['nl4'],$_POST['A54'],$altkriteria) ? '' : $pro->update($_POST['A14'],$_POST['nl4'],$_POST['A54'],$altkriteria);
		$pro->insert($_POST['A25'],$_POST['nl5'],$_POST['A35'],$altkriteria) ? '' : $pro->update($_POST['A25'],$_POST['nl5'],$_POST['A35'],$altkriteria);
		$pro->insert($_POST['A26'],$_POST['nl6'],$_POST['A46'],$altkriteria) ? '' : $pro->update($_POST['A26'],$_POST['nl6'],$_POST['A46'],$altkriteria);
		$pro->insert($_POST['A27'],$_POST['nl7'],$_POST['A57'],$altkriteria) ? '' : $pro->update($_POST['A27'],$_POST['nl7'],$_POST['A57'],$altkriteria);
		$pro->insert($_POST['A38'],$_POST['nl8'],$_POST['A48'],$altkriteria) ? '' : $pro->update($_POST['A38'],$_POST['nl8'],$_POST['A48'],$altkriteria);
		$pro->insert($_POST['A39'],$_POST['nl9'],$_POST['A59'],$altkriteria) ? '' : $pro->update($_POST['A39'],$_POST['nl9'],$_POST['A59'],$altkriteria);
		$pro->insert($_POST['A410'],$_POST['nl10'],$_POST['A510'],$altkriteria) ? '' : $pro->update($_POST['A410'],$_POST['nl10'],$_POST['A510'],$altkriteria);

		$pro->insert($_POST['A21'],1/$_POST['nl1'],$_POST['A11'],$altkriteria) ? '' : $pro->update($_POST['A21'],1/$_POST['nl1'],$_POST['A11'],$altkriteria);
		$pro->insert($_POST['A32'],1/$_POST['nl2'],$_POST['A12'],$altkriteria) ? '' : $pro->update($_POST['A32'],1/$_POST['nl2'],$_POST['A12'],$altkriteria);
		$pro->insert($_POST['A43'],1/$_POST['nl3'],$_POST['A13'],$altkriteria) ? '' : $pro->update($_POST['A43'],1/$_POST['nl3'],$_POST['A13'],$altkriteria);
		$pro->insert($_POST['A54'],1/$_POST['nl4'],$_POST['A14'],$altkriteria) ? '' : $pro->update($_POST['A54'],1/$_POST['nl4'],$_POST['A14'],$altkriteria);
		$pro->insert($_POST['A35'],1/$_POST['nl5'],$_POST['A25'],$altkriteria) ? '' : $pro->update($_POST['A35'],1/$_POST['nl5'],$_POST['A25'],$altkriteria);
		$pro->insert($_POST['A46'],1/$_POST['nl6'],$_POST['A26'],$altkriteria) ? '' : $pro->update($_POST['A46'],1/$_POST['nl6'],$_POST['A26'],$altkriteria);
		$pro->insert($_POST['A57'],1/$_POST['nl7'],$_POST['A27'],$altkriteria) ? '' : $pro->update($_POST['A57'],1/$_POST['nl7'],$_POST['A27'],$altkriteria);
		$pro->insert($_POST['A48'],1/$_POST['nl8'],$_POST['A38'],$altkriteria) ? '' : $pro->update($_POST['A48'],1/$_POST['nl8'],$_POST['A38'],$altkriteria);
		$pro->insert($_POST['A59'],1/$_POST['nl9'],$_POST['A39'],$altkriteria) ? '' : $pro->update($_POST['A59'],1/$_POST['nl9'],$_POST['A39'],$altkriteria);
		$pro->insert($_POST['A510'],1/$_POST['nl10'],$_POST['A410'],$altkriteria) ? '' : $pro->update($_POST['A510'],1/$_POST['nl10'],$_POST['A410'],$altkriteria);
	}

	if(isset($_POST['hapus'])){
		$pro->delete();
	}
	?>
	<div class="row">
		<div class="col-xs-12 col-sm-12 col-md-12">
			<ol class="breadcrumb">
			  <li><a href="index.php">Beranda</a></li>
			  <li><a href="analisa-alternatif.php">Analisa Alternatif</a></li>
			  <li class="active">Tabel Analisa Alternatif</li>
			</ol>
			<div class="row">
				<div class="col-md-6 text-left">
					<strong style="font-size:18pt;"><span class="fa fa-table"></span> Alternatif Menurut Kriteria</strong>
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
						<th><?php echo $pro->kri ?></th>
						<?php while ($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)): ?>
							<th><?php echo $row2['nama'] ?></th>
						<?php endwhile; ?>
					</tr>
        </thead>
				<tbody>
				<?php while ($row3 = $stmt3->fetch(PDO::FETCH_ASSOC)): ?>
					<tr>
						<th style="vertical-align:middle;"><?php echo $row3['nama'] ?></th>
						<?php $stmt4 = $pro->readAll2(); while ($row4 = $stmt4->fetch(PDO::FETCH_ASSOC)): ?>
							<td style="vertical-align:middle;">
							<?php
							if($row3['id_alternatif']==$row4['id_alternatif']){
								echo '1';
								if($pro->insert($row3['id_alternatif'],'1',$row4['id_alternatif'],$altkriteria)){
									// ...
								} else{
									$pro->update($row3['id_alternatif'],'1',$row4['id_alternatif'],$altkriteria);
								}
							} else {
								$pro->readAll1($row3['id_alternatif'],$row4['id_alternatif'],$altkriteria);
								echo number_format($pro->kp, 3, '.', ',');
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
						<?php $stmt5 = $pro->readAll2(); while ($row5 = $stmt5->fetch(PDO::FETCH_ASSOC)): ?>
						<th>
							<?php
								$pro->readSum1($row5['id_alternatif'],$altkriteria);
								echo number_format($pro->nak, 3, '.', ',');
								if($pro->insert3($row5['id_alternatif'],$altkriteria,$pro->nak)){
									// ...
								} else{
									$pro->insert5($pro->nak,$row5['id_alternatif'],$altkriteria);
								}
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
	          <?php $stmt2x = $pro->readAll2(); $stmt3x = $pro->readAll2(); while ($row2x = $stmt2x->fetch(PDO::FETCH_ASSOC)): ?>
		          <th><?php echo $row2x['nama'] ?></th>
	          <?php endwhile; ?>
	          <th>Skor</th>
		      </tr>
	      </thead>
	      <tbody>
				<?php while ($row3x = $stmt3x->fetch(PDO::FETCH_ASSOC)): ?>
	        <tr>
	          <th style="vertical-align:middle;"><?php echo $row3x['nama'] ?></th>
	          <?php $stmt4x = $pro->readAll2(); while ($row4x = $stmt4x->fetch(PDO::FETCH_ASSOC)): ?>
	            <td style="vertical-align:middle;">
	            	<?php
	                $pro->readAll3($row4x['id_alternatif'],$altkriteria);
	                $jakx = $pro->jak;
		            	if($row3x['id_alternatif']==$row4x['id_alternatif']){
		            		$hs1 = 1/$jakx;
		            		$pro->insert2($hs1,$row3x['id_alternatif'],$row4x['id_alternatif'],$altkriteria);
		            		echo number_format($hs1, 3, '.', ',');
		            	} else{
		            		$pro->readAll1($row3x['id_alternatif'],$row4x['id_alternatif'],$altkriteria);
	                  $kpx = $pro->kp;
		            		$jmk = $kpx/$jakx;
		            		$pro->insert2($jmk,$row3x['id_alternatif'],$row4x['id_alternatif'],$altkriteria);
		            		echo number_format($jmk, 3, '.', ',');
		            	}
	            	?>
	            </td>
	          <?php endwhile; ?>
						<th style="vertical-align:middle;">
							<?php
								$pro->readAvg($row3x['id_alternatif']);
								$bbt = $pro->hak;
								$pro->insert4($bbt,$row3x['id_alternatif'],$altkriteria);
								echo number_format($bbt, 3, '.', ',');
							?>
						</th>
	        </tr>
				<?php endwhile; ?>
	      </tbody>
	      <tfoot>
			   	<tr>
	          <th>Jumlah</th>
	          <?php $stmt5x = $pro->readAll2(); while ($row5x = $stmt5x->fetch(PDO::FETCH_ASSOC)): ?>
	          <th>
							<?php
		          	$pro->readSum2($row5x['id_alternatif'],$altkriteria);
		          	echo number_format($pro->nak, 3, '.', ',');
		          ?>
						</th>
	          <?php endwhile; ?>
	          <th>
							<?php
		          	$pro->readSum3($altkriteria);
		          	echo number_format($pro->bb, 3, '.', ',');
		          ?>
						</th>
			     </tr>
	      </tfoot>
		  </table>
		</div>
	</div>
<?php } else {
  header('location: analisa-alternatif.php');
}
include_once('includes/footer.inc.php');
?>
