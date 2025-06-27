<?php
header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "produk";

// Buat koneksi
$conn = new mysqli($servername, $username, $password, $dbname);

// Periksa koneksi
if ($conn->connect_error) {
    die(json_encode(["error" => "Koneksi gagal: " . $conn->connect_error]));
}

// Cek apakah parameter id_produk dikirimkan
if (isset($_GET['id_produk'])) {
    $id_produk = $conn->real_escape_string($_GET['id_produk']); // Hindari SQL Injection

    // Query untuk ambil satu produk berdasarkan id_produk
    $sql = "SELECT id_produk, nama, kategori, hargajual, stok, deskripsi, jumlah_pengunjung, foto FROM tbl_produk WHERE id_produk = '$id_produk'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $product = $result->fetch_assoc();
        echo json_encode($product); // Hanya satu objek
    } else {
        echo json_encode(["message" => "Produk tidak ditemukan"]);
    }
} else {
    // Query untuk ambil semua produk
    $sql = "SELECT id_produk, nama, kategori, hargajual, stok, deskripsi, jumlah_pengunjung, foto FROM tbl_produk";
    $result = $conn->query($sql);

    $products = array();
    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $products[] = $row;
        }
    }
    echo json_encode($products); // Array of products
}

$conn->close();
?>
