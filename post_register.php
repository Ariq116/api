<?php
include "koneksimysql.php";
header('Content-Type: application/json');

$email = isset($_POST['email']) ? mysqli_real_escape_string($conn, $_POST['email']) : '';
$nama = isset($_POST['nama']) ? mysqli_real_escape_string($conn, $_POST['nama']) : '';
$password = isset($_POST['password']) ? mysqli_real_escape_string($conn, $_POST['password']) : '';

$getstatus = 0;  // Status cek user sudah ada atau belum
$getresult = 0;  // Status hasil simpan
$message = "";

// Cek apakah email sudah terdaftar
$sql = "SELECT * FROM tbl_pelanggan WHERE email='$email'";
$result = mysqli_query($conn, $sql);

if (mysqli_fetch_object($result)) {
    $getstatus = 0;
    $message = "User sudah ada";
} else {
    $getstatus = 1;

    // Simpan user baru dengan password dienkripsi md5
    $insertSql = "INSERT INTO tbl_pelanggan (nama, email, password)
                  VALUES('$nama', '$email', MD5('$password'))";
    $insertResult = mysqli_query($conn, $insertSql);

    if ($insertResult) {
        $getresult = 1;
        $message = "Simpan Berhasil";
    } else {
        $message = "Simpan Gagal: " . mysqli_error($conn);
    }
}

echo json_encode(array(
    'status' => $getstatus,
    'result' => $getresult,
    'message' => $message
));
?>
