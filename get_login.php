<?php
include "koneksimysql.php";
header('Content-Type: application/json');

$email = isset($_POST['email']) ? mysqli_real_escape_string($conn, $_POST['email']) : '';
$password = isset($_POST['password']) ? mysqli_real_escape_string($conn, $_POST['password']) : '';

$getstatus = 0;
$datauser = [];

// Query untuk mendapatkan user berdasarkan email
$sql = "SELECT nama, email, status, password FROM tbl_pelanggan WHERE email = '$email'";
$result = mysqli_query($conn, $sql);

if ($result) {
    $data = mysqli_fetch_object($result);

    if ($data && md5($password) === $data->password) {
        // Login berhasil
        $getstatus = 1;

        // Update status menjadi aktif
        $updateSql = "UPDATE tbl_pelanggan SET status = 1 WHERE email = '$email'";
        mysqli_query($conn, $updateSql);

        $datauser = array(
            'nama' => $data->nama,
            'email' => $data->email,
            'status' => 1
        );
    }
}

echo json_encode(array(
    'result' => $getstatus,
    'data' => $datauser
));
?>
