<?php
class Alternatif {
	private $conn;
	private $table_name = "data_alternatif";

	public $id;
	public $nim;
	public $nama;
	public $tempat_lahir;
	public $tanggal_lahir;
	public $kelamin;
	public $alamat;
	public $no_hp;
	public $hasil_akhir;
	public $skor_alternatif;

	public function __construct($db) {
		$this->conn = $db;
	}

	function insert() {
		$query = "INSERT INTO {$this->table_name} VALUES(?, ?, ?, ?, ?, ?, ?, ?, NULL)";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);
		$stmt->bindParam(2, $this->nim);
		$stmt->bindParam(3, $this->nama);
		$stmt->bindParam(4, $this->tempat_lahir);
		$stmt->bindParam(5, $this->tanggal_lahir);
		$stmt->bindParam(6, $this->kelamin);
		$stmt->bindParam(7, $this->alamat);
		$stmt->bindParam(8, $this->no_hp);

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

	function readByRank() {
		// "SELECT nim, nama, hasil_akhir, @curRank := @curRank + 1 AS rank FROM {$this->table_name} a, (SELECT @curRank := 0) r ORDER BY rank";
		$query = "SELECT * FROM {$this->table_name} ORDER BY hasil_akhir DESC";
		$stmt = $this->conn->prepare($query);
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
		$this->nim = $row["nim"];
		$this->nama = $row["nama"];
		$this->tempat_lahir = $row["tempat_lahir"];
		$this->tanggal_lahir = $row["tanggal_lahir"];
		$this->kelamin = $row["kelamin"];
		$this->alamat = $row["alamat"];
		$this->no_hp = $row["no_hp"];
		// $this->skor_alternatif = $row['skor_alternatif'];
	}

	function readSatu($a) {
		$query = "SELECT * FROM {$this->table_name} WHERE id_alternatif='$a' LIMIT 0,1";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();

		return $stmt;
	}

	function getNewID() {
		$query = "SELECT id_alternatif FROM {$this->table_name} ORDER BY id_alternatif DESC LIMIT 1";
		$stmt = $this->conn->prepare($query);
		$stmt->execute();
		if ($stmt->rowCount()) {
			$row = $stmt->fetch(PDO::FETCH_ASSOC);
			$pcs = explode("A", $row['id_alternatif']);
			$result = "A".($pcs[1]+1);
		} else {
			$result = "A1";
		}
		return $result;
	}

	// update the product
	function update() {
		$query = "UPDATE {$this->table_name}
				SET
					nim = :nim,
					nama = :nama,
					tempat_lahir = :tempat_lahir,
					tanggal_lahir = :tanggal_lahir,
					kelamin = :kelamin,
					alamat = :alamat,
					no_hp = :no_hp
				WHERE
					id_alternatif = :id";
		$stmt = $this->conn->prepare($query);

		$stmt->bindParam(':nim', $this->nim);
		$stmt->bindParam(':nama', $this->nama);
		$stmt->bindParam(':tempat_lahir', $this->tempat_lahir);
		$stmt->bindParam(':tanggal_lahir', $this->tanggal_lahir);
		$stmt->bindParam(':kelamin', $this->kelamin);
		$stmt->bindParam(':alamat', $this->alamat);
		$stmt->bindParam(':no_hp', $this->no_hp);
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
