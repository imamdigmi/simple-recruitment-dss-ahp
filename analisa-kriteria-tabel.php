<?php
include_once 'header.php';
include_once 'includes/bobot.inc.php';
$pro = new Bobot($db);
$stmt2 = $pro->readAll2();
$stmt3 = $pro->readAll2();
$count = $pro->countAll();
if(isset($_POST['subankr'])){
	
	$pro->insert($_POST['C11'],$_POST['nl1'],$_POST['C21'])?'':$pro->update($_POST['C11'],$_POST['nl1'],$_POST['C21']);
	$pro->insert($_POST['C12'],$_POST['nl2'],$_POST['C32'])?'':$pro->update($_POST['C12'],$_POST['nl2'],$_POST['C32']);
	$pro->insert($_POST['C13'],$_POST['nl3'],$_POST['C43'])?'':$pro->update($_POST['C13'],$_POST['nl3'],$_POST['C43']);
	$pro->insert($_POST['C14'],$_POST['nl4'],$_POST['C54'])?'':$pro->update($_POST['C14'],$_POST['nl4'],$_POST['C54']);
	$pro->insert($_POST['C25'],$_POST['nl5'],$_POST['C35'])?'':$pro->update($_POST['C25'],$_POST['nl5'],$_POST['C35']);
	$pro->insert($_POST['C26'],$_POST['nl6'],$_POST['C46'])?'':$pro->update($_POST['C26'],$_POST['nl6'],$_POST['C46']);
	$pro->insert($_POST['C27'],$_POST['nl7'],$_POST['C57'])?'':$pro->update($_POST['C27'],$_POST['nl7'],$_POST['C57']);
	$pro->insert($_POST['C38'],$_POST['nl8'],$_POST['C48'])?'':$pro->update($_POST['C38'],$_POST['nl8'],$_POST['C48']);
	$pro->insert($_POST['C39'],$_POST['nl9'],$_POST['C59'])?'':$pro->update($_POST['C39'],$_POST['nl9'],$_POST['C59']);
	$pro->insert($_POST['C410'],$_POST['nl10'],$_POST['C510'])?'':$pro->update($_POST['C410'],$_POST['nl10'],$_POST['C510']);
		
	$pro->insert($_POST['C21'],1/$_POST['nl1'],$_POST['C11'])?'':$pro->update($_POST['C21'],1/$_POST['nl1'],$_POST['C11']);
	$pro->insert($_POST['C32'],1/$_POST['nl2'],$_POST['C12'])?'':$pro->update($_POST['C32'],1/$_POST['nl2'],$_POST['C12']);
	$pro->insert($_POST['C43'],1/$_POST['nl3'],$_POST['C13'])?'':$pro->update($_POST['C43'],1/$_POST['nl3'],$_POST['C13']);
	$pro->insert($_POST['C54'],1/$_POST['nl4'],$_POST['C14'])?'':$pro->update($_POST['C54'],1/$_POST['nl4'],$_POST['C14']);
	$pro->insert($_POST['C35'],1/$_POST['nl5'],$_POST['C25'])?'':$pro->update($_POST['C35'],1/$_POST['nl5'],$_POST['C25']);
	$pro->insert($_POST['C46'],1/$_POST['nl6'],$_POST['C26'])?'':$pro->update($_POST['C46'],1/$_POST['nl6'],$_POST['C26']);
	$pro->insert($_POST['C57'],1/$_POST['nl7'],$_POST['C27'])?'':$pro->update($_POST['C57'],1/$_POST['nl7'],$_POST['C27']);
	$pro->insert($_POST['C48'],1/$_POST['nl8'],$_POST['C38'])?'':$pro->update($_POST['C48'],1/$_POST['nl8'],$_POST['C38']);
	$pro->insert($_POST['C59'],1/$_POST['nl9'],$_POST['C39'])?'':$pro->update($_POST['C59'],1/$_POST['nl9'],$_POST['C39']);
	$pro->insert($_POST['C510'],1/$_POST['nl10'],$_POST['C410'])?'':$pro->update($_POST['C510'],1/$_POST['nl10'],$_POST['C410']);
	
}
if(isset($_POST['hapus'])){
	$pro->delete();
}
?>
<div class="row">
<!--	<div class="col-xs-12 col-sm-12 col-md-2">
		  	<?php
//			include_once 'sidebar.php';
			?>
	</div>-->
	<div class="col-xs-12 col-sm-12 col-md-12">
	<ol class="breadcrumb">
	  <li><a href="index.php"><span class="fa fa-home"></span> Beranda</a></li>
	  <li><a href="analisa-kriteria.php"><span class="fa fa-bomb"></span> Analisa Kriteria</a></li>
	  <li class="active"><span class="fa fa-table"></span> Tabel Analisa Kriteria</li>
	</ol>
<form method="post">
	<div class="row">
		<div class="col-md-6 text-left">
			<strong style="font-size:18pt;"><span class="fa fa-table"></span> Perbandingan Kriteria</strong>
		</div>
		<div class="col-md-6 text-right">
            <button name="hapus" class="btn btn-danger">Hapus Semua Data</button>
		</div>
	</div>
	<br/>

	<table width="100%" class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>Antar Kriteria</th>
                <?php
				while ($row2 = $stmt2->fetch(PDO::FETCH_ASSOC)){
				?>
                <th><?php echo $row2['nama_kriteria'] ?></th>
                <?php
				}
				?>
            </tr>
        </thead>

        <tbody>
<?php
while ($row3 = $stmt3->fetch(PDO::FETCH_ASSOC)){
?>
            <tr>
                <th style="vertical-align:middle;"><?php echo $row3['nama_kriteria'] ?></th>
                <?php          
				$stmt4 = $pro->readAll2();
				while ($row4 = $stmt4->fetch(PDO::FETCH_ASSOC)){
				?>
                <td style="vertical-align:middle;">
                	<?php 
                	if($row3['id_kriteria']==$row4['id_kriteria']){
                		echo '1';
                		if($pro->insert($row3['id_kriteria'],'1',$row4['id_kriteria'])){

					  	} else{
					  		$pro->update($row3['id_kriteria'],'1',$row4['id_kriteria']);
					  	}
                	} else{
                		$pro->readAll1($row3['id_kriteria'],$row4['id_kriteria']);
                		echo number_format($pro->kp, 3, '.', ',');
                	}
                	?>
                </td>
                <?php
				}
				?>
            </tr>
<?php
}
?>
        </tbody>
        <tfoot>
         	<tr>
                <th>Jumlah</th>
                <?php
                $stmt5 = $pro->readAll2();
				while ($row5 = $stmt5->fetch(PDO::FETCH_ASSOC)){
				?>
                <th><?php 
                	$pro->readSum1($row5['id_kriteria']);
                	echo number_format($pro->nak, 3, '.', ',');
                	$pro->insert3($pro->nak,$row5['id_kriteria']);
                ?></th>
                <?php
				}
				?>
            </tr>
        </tfoot>

    </table>
</form>

	<table width="100%" class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>Perbandingan</th>
                <?php
                $stmt2x = $pro->readAll2();
				$stmt3x = $pro->readAll2();
				while ($row2x = $stmt2x->fetch(PDO::FETCH_ASSOC)){
				?>
                <th><?php echo $row2x['nama_kriteria'] ?></th>
                <?php
				}
				?>
                <th>Bobot</th>
            </tr>
        </thead>

        <tbody>
<?php
while ($row3x = $stmt3x->fetch(PDO::FETCH_ASSOC)){
?>
            <tr>
                <th style="vertical-align:middle;"><?php echo $row3x['nama_kriteria'] ?></th>
                <?php          
				$stmt4x = $pro->readAll2();
				while ($row4x = $stmt4x->fetch(PDO::FETCH_ASSOC)){
				?>
                <td style="vertical-align:middle;">
                	<?php 
                	if($row3x['id_kriteria']==$row4x['id_kriteria']){
                		$hs1 = 1/$row4x['jumlah_kriteria'];
                		$pro->insert2($hs1,$row3x['id_kriteria'],$row4x['id_kriteria']);
                		echo number_format($hs1, 3, '.', ',');
                	} else{
                		$pro->readAll1($row3x['id_kriteria'],$row4x['id_kriteria']);
                		$jmk = $pro->kp/$row4x['jumlah_kriteria'];
                		$pro->insert2($jmk,$row3x['id_kriteria'],$row4x['id_kriteria']);
                		echo number_format($jmk, 3, '.', ',');
                	}
                	?>
                </td>
                <?php
				}
				?>
				<th style="vertical-align:middle;"><?php 
					$pro->readAvg($row3x['id_kriteria']); 
					$bbt = $pro->hak;
					$pro->insert4($bbt,$row3x['id_kriteria']);
					echo number_format($bbt, 3, '.', ',');
				?></th>
            </tr>
<?php
}
?>
        </tbody>
        <tfoot>
         	<tr>
                <th>Jumlah</th>
                <?php
                $stmt5x = $pro->readAll2();
				while ($row5x = $stmt5x->fetch(PDO::FETCH_ASSOC)){
				?>
                <th><?php 
                	$pro->readSum2($row5x['id_kriteria']);
                	echo number_format($pro->nak, 3, '.', ',');
                ?></th>
                <?php
				}
				?>
                <th><?php 
                	$pro->readSum3();
                	echo number_format($pro->bb, 3, '.', ',');
                ?></th>
            </tr>
        </tfoot>

    </table>
</div>
</div>			
<?php
include_once 'footer.php';
?>