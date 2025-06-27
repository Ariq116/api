<?php
include "koneksimysql.php";
header('Content-Type: application/json');

// Ambil data dari POST
$email = mysqli_real_escape_string($conn, $_POST['email']);
$nama = mysqli_real_escape_string($conn, $_POST['nama']);
$alamat = mysqli_real_escape_string($conn, $_POST['alamat']);
$kota = mysqli_real_escape_string($conn, $_POST['kota']);
$provinsi = mysqli_real_escape_string($conn, $_POST['provinsi']);
$telp = mysqli_real_escape_string($conn, $_POST['telp']);
$kodepos = mysqli_real_escape_string($conn, $_POST['kodepos']);

$getresult = 0;
$message = "";

// Handle upload foto jika ada
$fotoFileName = null;
if (isset($_FILES['foto']) && $_FILES['foto']['error'] === UPLOAD_ERR_OK) {
    $target_dir = "Image_Profile/";
    $fotoFileName = time() . "_" . basename($_FILES["foto"]["name"]); // Hindari duplikat nama file
    $target_file = $target_dir . $fotoFileName;

    if (move_uploaded_file($_FILES["foto"]["tmp_name"], $target_file)) {
        $message .= "Upload foto berhasil. ";
    } else {
        $message .= "Upload foto gagal. ";
        $fotoFileName = null;
    }
}

// Query update dengan kondisi apakah foto dikirim atau tidak
$sql = "UPDATE tbl_pelanggan SET 
    nama = '$nama',
    alamat = '$alamat',
    kota = '$kota',
    provinsi = '$provinsi',
    telp = '$telp',
    kodepos = '$kodepos'";

if ($fotoFileName) {
    $sql .= ", foto = '$fotoFileName'";
}

$sql .= " WHERE email = '$email'";

// Eksekusi query
$hasil = mysqli_query($conn, $sql);

if ($hasil) {
    $getresult = 1;
    $message .= "Simpan berhasil.";
} else {
    $getresult = 0;
    $message .= "Simpan gagal: " . mysqli_error($conn);
}

// Kembalikan response JSON (termasuk nama file jika ada)
$response = array(
    'result' => $getresult,
    'message' => $message,
);

if ($fotoFileName) {
    $response['foto'] = $fotoFileName;
}

// Tutup koneksi dan kirim response
mysqli_close($conn);
echo json_encode($response);
