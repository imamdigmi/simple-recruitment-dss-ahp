<?php
class User {
	private $conn;
	private $table_name = "pengguna";

	public $id;
	public $name;
	public $role;
	public $username;
	public $password;

	public function __construct($db) {
		$this->conn = $db;
	}

	function insert() {
		$query = "INSERT INTO {$this->table_name} VALUES(NULL, ?, ?, ?, ?)";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->name);
		$stmt->bindParam(2, $this->role);
		$stmt->bindParam(3, $this->username);
		$stmt->bindParam(4, $this->password);

		if ($stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}

	function readAll(){
		$query = "SELECT * FROM {$this->table_name} ORDER BY id_pengguna ASC";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		return $stmt;
	}

	// used when filling up the update product form
	function readOne(){
		$query = "SELECT * FROM {$this->table_name} WHERE id_pengguna=? LIMIT 0,1";
		$stmt = $this->conn->prepare( $query );
		$stmt->bindParam(1, $this->id);
		$stmt->execute();
		$row = $stmt->fetch(PDO::FETCH_ASSOC);
		$this->id = $row['id_pengguna'];
		$this->name = $row['nama_lengkap'];
		$this->role = $row['role'];
		$this->username = $row['username'];
		$this->password = $row['password'];
	}

	// update the product
	function update() {
		$query = "UPDATE {$this->table_name}
				SET
					nama_lengkap = :name,
					role = :role,
					username = :username,
					password = :password
				WHERE
					id_pengguna = :id";

		$stmt = $this->conn->prepare($query);

		$stmt->bindParam(':name', $this->name);
		$stmt->bindParam(':role', $this->role);
		$stmt->bindParam(':username', $this->username);
		$stmt->bindParam(':password', $this->password);
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
		$query = "DELETE FROM {$this->table_name} WHERE id_pengguna = ?";
		$stmt = $this->conn->prepare($query);
		$stmt->bindParam(1, $this->id);
		if ($result = $stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}

	function countAll(){
		$query = "SELECT * FROM {$this->table_name} ORDER BY id_pengguna ASC";
		$stmt = $this->conn->prepare( $query );
		$stmt->execute();
		return $stmt->rowCount();
	}

	function hapusell($ax) {
		$query = "DELETE FROM {$this->table_name} WHERE id_pengguna in $ax";
		$stmt = $this->conn->prepare($query);

		if ($result = $stmt->execute()) {
			return true;
		} else {
			return false;
		}
	}
}
