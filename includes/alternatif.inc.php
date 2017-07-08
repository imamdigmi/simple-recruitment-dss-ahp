<?php
class Alternatif {
	private $conn;
	private $table_name = "data_alternatif";

	public $id;
	public $nik;
	public $nama;
	public $tempat_lahir;
	public $tanggal_lahir;
	public $kelamin;
	public $alamat;
	public $jabatan;
	public $tanggal_masuk;
	public $pendidikan;
	public $hasil_akhir;
	public $skor_alternatif;

	public function __construct($db) {
		$this->conn = $db;
	}

	function insert() {
		$query = "INSERT INTO {$this->table_name} VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NULL)";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);
		$stmt->bindParam(2, $this->nik);
		$stmt->bindParam(3, $this->nama);
		$stmt->bindParam(4, $this->tempat_lahir);
		$stmt->bindParam(5, $this->tanggal_lahir);
		$stmt->bindParam(6, $this->kelamin);
		$stmt->bindParam(7, $this->alamat);
		$stmt->bindParam(8, $this->jabatan);
		$stmt->bindParam(9, $this->tanggal_masuk);
		$stmt->bindParam(10, $this->pendidikan);

		if ($stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}

	function readAll() {
		$query = "SELECT * FROM {$this->table_name} ORDER BY id_alternatif ASC";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();

		return $stmt;
	}

	function countAll(){
		$query = "SELECT * FROM {$this->table_name} ORDER BY id_alternatif ASC";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();

		return $stmt->rowCount();
	}

	function readOne(){
		$query = "SELECT * FROM {$this->table_name} WHERE id_alternatif=? LIMIT 0,1";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);
		$stmt->execute();
		$row = $stmt->fetch(PDO::FETCH_ASSOC);

		$this->id = $row["id_alternatif"];
		$this->nik = $row["nik"];
		$this->nama = $row["nama"];
		$this->tempat_lahir = $row["tempat_lahir"];
		$this->tanggal_lahir = $row["tanggal_lahir"];
		$this->kelamin = $row["kelamin"];
		$this->alamat = $row["alamat"];
		$this->jabatan = $row["jabatan"];
		$this->tanggal_masuk = $row["tanggal_masuk"];
		$this->pendidikan = $row["pendidikan"];
		$this->hasil_akhir = $row["hasil_akhir"];
		// $this->skor_alternatif = $row['skor_alternatif'];
	}

	function getNewID() {
		$query = "SELECT id_alternatif FROM {$this->table_name} ORDER BY id_alternatif DESC LIMIT 1";
		$stmt = $this->conn->prepare($query);
		$stmt->execute();
		$row = $stmt->fetch(PDO::FETCH_ASSOC);
		$pcs = explode("A", $row['id_alternatif']);
		$result = "A".($pcs[1]+1);
		return $result;
	}

	// update the product
	function update() {
		$query = "UPDATE {$this->table_name}
				SET
					nik = :nik,
					nama = :nama,
					tempat_lahir = :tempat_lahir,
					tanggal_lahir = :tanggal_lahir,
					kelamin = :kelamin,
					alamat = :alamat,
					jabatan = :jabatan,
					tanggal_masuk = :tanggal_masuk,
					pendidikan = :pendidikan
				WHERE
					id_alternatif = :id";
		$stmt = $this->conn->prepare($query);

		$stmt->bindParam(':nik', $this->nik);
		$stmt->bindParam(':nama', $this->nama);
		$stmt->bindParam(':tempat_lahir', $this->tempat_lahir);
		$stmt->bindParam(':tanggal_lahir', $this->tanggal_lahir);
		$stmt->bindParam(':kelamin', $this->kelamin);
		$stmt->bindParam(':alamat', $this->alamat);
		$stmt->bindParam(':jabatan', $this->jabatan);
		$stmt->bindParam(':tanggal_masuk', $this->tanggal_masuk);
		$stmt->bindParam(':pendidikan', $this->pendidikan);
		$stmt->bindParam(':id', $this->id);

		// execute the query
		if ($stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}

	// delete the product
	function delete() {
		$query = "DELETE FROM {$this->table_name} WHERE id_alternatif = ?";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);
		if ($result = $stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}

	function hapusell($ax) {
		$query = "DELETE FROM {$this->table_name} WHERE id_alternatif in $ax";
		$stmt = $this->conn->prepare($query);
		if ($result = $stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}
}
