<?php
class Bobot{
	
	private $conn;
	private $table_name = "ahp_analisa_kriteria";
	
	public $kp;
	public $nak;
	public $hak;
	public $kk;
	public $bb;
	
	public function __construct($db){
		$this->conn = $db;
	}
	
	function insert($a,$b,$c){
		
		$query = "insert into ".$this->table_name." values('$a','$b','','$c')";
		$stmt = $this->conn->prepare($query);
		
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
		
	}

	function insert2($a,$b,$c){
		
		$query = "update ".$this->table_name." set hasil_analisa_kriteria = '$a' where kriteria_pertama = '$b' and kriteria_kedua = '$c'";
		$stmt = $this->conn->prepare($query);
		
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
		
	}

	function insert3($a, $b){
		
		$query = "update ahp_data_kriteria set jumlah_kriteria='$a' where id_kriteria='$b'";
		$stmt = $this->conn->prepare($query);
		
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
		
	}
	
	function insert4($a, $b){
		
		$query = "update ahp_data_kriteria set bobot_kriteria='$a' where id_kriteria='$b'";
		$stmt = $this->conn->prepare($query);
		
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
		
	}
	
	function readAll(){

		$query = "SELECT * FROM ahp_data_kriteria";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		return $stmt;
	}

	function readAll1($a, $b){

		$query = "SELECT * FROM ".$this->table_name." where kriteria_pertama = '$a' and kriteria_kedua = '$b' LIMIT 0,1";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		$this->kp = $row['nilai_analisa_kriteria'];
	}

	function readAll2(){

		$query = "SELECT * FROM ahp_data_kriteria";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		return $stmt;
	}

	function countAll(){

		$query = "SELECT * FROM ahp_data_kriteria";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		return $stmt->rowCount();
	}

	function readSum1($a){

		$query = "SELECT sum(nilai_analisa_kriteria) as jumkr FROM ".$this->table_name." where kriteria_kedua = '$a'";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		$this->nak = $row['jumkr'];
	}
	
	function readSum2($a){

		$query = "SELECT sum(hasil_analisa_kriteria) as jumkr2 FROM ".$this->table_name." where kriteria_kedua = '$a'";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		$this->nak = $row['jumkr2'];
	}
	
	function readSum3(){

		$query = "SELECT sum(bobot_kriteria) as bbkr FROM ahp_data_kriteria";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		$this->bb = $row['bbkr'];
	}
	
	function readAvg($a){

		$query = "SELECT avg(hasil_analisa_kriteria) as avgkr FROM ".$this->table_name." where kriteria_pertama = '$a'";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		
		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		$this->hak = $row['avgkr'];
	}
	
	// update the product
	function update($a,$b,$c){

		$query = "UPDATE  ".$this->table_name."  SET nilai_analisa_kriteria = '$b' WHERE kriteria_pertama = '$a' and kriteria_kedua = '$c'";

		$stmt = $this->conn->prepare($query);
		// execute the query
		if($stmt->execute()){
			return true;
		}else{
			return false;
		}
	}
	
	// delete the product
	function delete(){
	
		$query = "DELETE FROM " . $this->table_name;
		
		$stmt = $this->conn->prepare($query);

		if($result = $stmt->execute()){
			return true;
		}else{
			return false;
		}
	}
}
?>