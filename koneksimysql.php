<?php

define('host', 'localhost');

// Hosting
define('user', 'androidrafi');
define('password', 'Rafi123');
define('database', 'androidrafi');

// Local
// define('user', 'root');
// define('password', '');
// define('database', 'produk');

$conn = mysqli_connect(host, user, password, database);
if (!$conn) {
    echo "Koneksi Gagal : " . mysqli_connect_error();
    exit();
}
