-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 27, 2025 at 09:13 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `produk`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(20) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telp` char(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` char(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `telp`, `email`) VALUES
('A12.2020.0001', 'Dimas', '08566888233', 'dimas@gmail.com'),
('A12.2020.0002', 'Sania Fransiska', '0865546623', 'sania_f@gmail.com'),
('A22.2010.00001', 'Damar Sulistiyono', '0856672723', 'DamarSulis@gmail.com'),
('A22.2010.00002', 'Satria Nugraha', '0853287334', 'Satrio@yahoo.com'),
('A22.2010.00003', 'Nia Prameswari', '0856783349', 'nia@gmail.com'),
('A22.2010.00004', 'Wikan Cahyadi', '0828877493', 'W2010@gmail.com'),
('A22.2010.00005', 'Darul Alhadi', '-', '-'),
('A22.2010.00006', 'Amin Pambudi', '024897743', 'AmPa@yahoo.com'),
('A22.2010.00007', 'Sukmajaya Narakati', '0856887722', 'Sukma2010@gmail.com'),
('A22.2010.00008', 'Linda Oktaviani', '0812239248', 'lilinokta@gmail.com'),
('A22.2010.00009', 'Kinasih Tunggadewi', '0822667744', 'nasih@yahoo.com'),
('A22.2010.00010', 'Jamal Hendrayana', '0812233778', 'jamalhendra@gmail.co'),
('A22.2023.02984', 'Anggoro Wicaksono', '085780181206', 'anggorowicaksono@gma');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_general_ci,
  `telp` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kodepos` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provinsi` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kota` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `metode_pembayaran` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `subtotal` int DEFAULT NULL,
  `ongkir` int DEFAULT NULL,
  `estimasi` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `total` int DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `email`, `nama`, `alamat`, `telp`, `kodepos`, `provinsi`, `kota`, `metode_pembayaran`, `subtotal`, `ongkir`, `estimasi`, `total`, `tanggal`) VALUES
(1, 'daniel@gmail.com', 'Daniel', 'jalan mawaR', '08555656321', '50712', 'Jawa Tengah', 'Demak', 'Transfer', 2899000, 60000, '4-5', 2959000, '2025-06-26 01:59:13'),
(2, 'daniel@gmail.com', 'Daniel', 'jalan mawaR', '08555656321', '50712', 'Bali', 'Badung', 'COD', 3999000, 85000, '6-7', 4084000, '2025-06-26 02:06:51'),
(3, 'daniel@gmail.com', 'Daniel', 'jalan mawaR', '08555656321', '50712', 'Bali', 'Badung', 'Transfer', 1999000, 85000, '6-7', 2084000, '2025-06-26 02:49:08'),
(4, 'daniel@gmail.com', 'Daniel', 'jalan mawaR', '08555656321', '50712', 'Bali', 'Denpasar', 'Transfer', 1499000, 70000, '5-6', 1569000, '2025-06-26 03:06:54'),
(5, 'daniel@gmail.com', 'Daniel', 'jalan mawaR', '08555656321', '50712', 'Jawa Timur', 'Blitar', 'COD', 1799000, 65000, '5-6', 1864000, '2025-06-27 06:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_id` int DEFAULT NULL,
  `id_produk` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama_produk` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `harga` int DEFAULT NULL,
  `jumlah` int DEFAULT NULL,
  `subtotal` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`order_id`, `id_produk`, `nama_produk`, `harga`, `jumlah`, `subtotal`) VALUES
(1, '', 'Air Jordan Low Light Smoke Grey', 2899000, 1, 2899000),
(2, '', 'Air Jordan 1 Low True Blue', 2499000, 1, 2499000),
(2, '', 'Air Jordan 1 Retro High OG White Cement', 1500000, 1, 1500000),
(3, '', 'Nike Dunk Low Goldenrod', 1999000, 1, 1999000),
(4, 'P005', 'Nike Dunk High 1985 Barely Rose Denim', 1499000, 1, 1499000),
(5, 'P020', 'Nike V2K Run Wolf Grey Navy', 1799000, 1, 1799000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id` int NOT NULL,
  `nama` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kota` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provinsi` char(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kodepos` char(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telp` char(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `email` char(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id`, `nama`, `alamat`, `kota`, `provinsi`, `kodepos`, `telp`, `status`, `email`, `password`, `foto`) VALUES
(1, 'Anggoro Wicaksono', 'pucang santoso', 'demak', 'jawa tengah', '50172', '085780181206', 1, 'anggoro@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(2, 'Fajar', NULL, NULL, NULL, NULL, NULL, 1, 'fajar@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', ''),
(3, 'rizqi', NULL, NULL, NULL, NULL, NULL, 1, 'rizqi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(4, 'arda', 'donoharjo', 'jepara', 'jawa tengah', '50133', '08772635781', 1, 'arda@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(5, 'indra', 'null', 'null', 'null', 'null', 'null', 1, 'indra@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(6, 'ilham', NULL, NULL, NULL, NULL, NULL, 1, 'ilham@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(7, 'candra', 'null', 'null', 'null', 'null', 'null', 1, 'candra@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(8, 'febby', NULL, NULL, NULL, NULL, NULL, 1, 'febby@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(11, 'Dani', 'Jl. Nakula ', 'Semarang', 'Jawa Tengah', '50172', '085780181206', 1, 'dani@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(12, 'Dewa Ganteng', 'poncol', 'semarang', 'jawa tengah', '50172', '08194998438', 1, 'dewa123@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(13, 'Daniel', 'jalan mawaR', 'mranggen', 'jawa tengah', '50712', '08555656321', 1, 'daniel@gmail.com', '202cb962ac59075b964b07152d234b70', '1750953667_profile_1750953656321.jpg'),
(14, 'fifi', 'null', 'null', 'null', 'null', 'null', 1, 'fifi@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(15, 'adam', NULL, NULL, NULL, NULL, NULL, 1, 'adam@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(16, 'rara', NULL, NULL, NULL, NULL, NULL, NULL, 'rara@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(17, 'upin', NULL, NULL, NULL, NULL, NULL, NULL, 'upin@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(18, 'abdul', NULL, NULL, NULL, NULL, NULL, NULL, 'abdul@gmail.com', '202cb962ac59075b964b07152d234b70', NULL),
(19, 'fufu', NULL, NULL, NULL, NULL, NULL, 1, 'fufu@gmail.com', '202cb962ac59075b964b07152d234b70', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `kode` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `merk` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategori` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `satuan` char(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hargabeli` double DEFAULT NULL,
  `diskonbeli` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `hargajual` double DEFAULT NULL,
  `diskonjual` double DEFAULT NULL,
  `stok` int DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` longtext COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`kode`, `merk`, `kategori`, `satuan`, `hargabeli`, `diskonbeli`, `hargapokok`, `hargajual`, `diskonjual`, `stok`, `foto`, `deskripsi`) VALUES
('P001', 'Logitech G502', 'Mouse Gaming', 'Unit', 800000, 20000, 820000, 900000, 50000, 10, 'mouse1.png', 'Mouse gaming dengan 11 tombol dan sensor HERO'),
('P002', 'Razer BlackWidow', 'Keyboard Mechanical', 'Unit', 1500000, 50000, 1550000, 1700000, 75000, 8, 'keyboard1.png', 'Keyboard mechanical dengan switch Razer Green'),
('P003', 'HyperX Cloud II', 'Headphone Gaming', 'Unit', 1200000, 30000, 1230000, 1350000, 60000, 7, 'headphone1.png', 'Headset gaming dengan suara 7.1 surround'),
('P004', 'SteelSeries Rival 3', 'Mouse Gaming', 'Unit', 500000, 10000, 510000, 600000, 30000, 12, 'mouse2.png', 'Mouse gaming ringan dengan RGB dan sensor presisi'),
('P005', 'Corsair K70 RGB', 'Keyboard Mechanical', 'Unit', 1800000, 60000, 1860000, 2000000, 80000, 5, 'keyboard2.png', 'Keyboard dengan switch Cherry MX Red dan RGB');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_produk`
--

CREATE TABLE `tbl_produk` (
  `id_produk` char(10) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(200) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategori` varchar(30) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hargajual` double DEFAULT NULL,
  `stok` int DEFAULT NULL,
  `deskripsi` longtext COLLATE utf8mb4_general_ci,
  `foto` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jumlah_pengunjung` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_produk`
--

INSERT INTO `tbl_produk` (`id_produk`, `nama`, `kategori`, `hargajual`, `stok`, `deskripsi`, `foto`, `jumlah_pengunjung`) VALUES
('P001', 'Air Jordan Low Light Smoke Grey', 'Streetwear Sneakers', 2899000, 5, 'Warna Utama: Light Smoke Grey / White / Black\r\nMaterial Upper: Kombinasi bahan leather (kulit sintetis) dan tekstil\r\nOutsole: Rubber dengan pola traksi khas Jordan 1\r\nMidsole: Foam ringan dengan bantalan Nike Air di tumit\r\n', 'jordan low light grey smoke.png', 4),
('P002', 'Air Jordan 1 Low True Blue', 'Streetwear Sneakers', 2499000, 5, 'Colorway: True Blue / Cement Grey / White\r\nMaterial Upper: Leather (kulit sintetis premium)\r\nMidsole: Phylon foam dengan unit Nike Air di bagian tumit untuk bantalan ringan	Outsole: Rubber outsole dengan pola traksi khas Jordan 1\r\n', 'Jordan 1 Low True Blue.png', 2),
('P003', 'Air Jordan 1 Retro High OG White Cement', 'Sneakers', 1500000, 3, 'Colorway: Tech Grey / White / Black\r\nMaterial upper: Leather, overlay bermotif elephant print\r\nMidsole: White foam dengan bantalan Nike Air di tumit\r\nOutsole: Solid rubber outsole warna abu-abu mud\r\n', 'Jordan 1 Retro High OG White Cement.png', 0),
('P004', 'Air Jordan 1 Low Paris', 'Streetwear Sneakers', 2699000, 10, 'Colorway: Tech Grey / White / Black\r\nMaterial upper: Leather, overlay bermotif elephant print\r\nMidsole: White foam dengan bantalan Nike Air di tumit\r\nOutsole: Solid rubber outsole warna abu-abu muda\r\n', 'Jordan 1 Low Paris.png', 0),
('P005', 'Nike Dunk High 1985 Barely Rose Denim', 'Streetwear Sneakers', 1499000, 6, 'Colorway: Barely Rose / Coconut Milk / Denim\r\nMaterial Upper: Kombinasi bahan denim canvas dan leather synthetic\r\nWarna utama pink muda (barely rose) dengan aksen beige kekuningan (coconut milk)\r\nMidsole: Foam klasik berwarna off-white vintage\r\nOutsole: Rubber outsole dengan motif klasik Dunk\r\n', 'Nike Dunk High 1985 Barely Rose Denim.png', 0),
('P006', 'Jordan 1 Retro High Element Gore-Tex Black Particle Grey', 'Sneakers', 2799000, 1, 'Colorway: Black / Chile Red / Particle Grey / Sail\r\nMaterial Upper: Kombinasi bahan GORE-TEX waterproof fabric, nubuck, dan leather\r\nMidsole: Foam ringan dengan Nike Air unit di bagian tumit\r\nOutsole: Rubber outsole dengan pola traksi khas AJ1, dua warna (hitam & abu)\r\n\r\n\r\n', 'Jordan 1 Retro High Element Gore-Tex Black Particle Grey.png', 0),
('P007', 'New Balance 530 Ivory', 'Sneakers', 1850000, 0, 'Colorway: Ivory / Cream / Silver\r\nMaterial Upper: Kombinasi bahan mesh breathable dan synthetic leather overlay\r\nMidsole: Teknologi ABZORB cushioning untuk kenyamanan maksimal, Ringan dan empuk, cocok untuk pemakaian seharian\r\nOutsole: Rubber outsole dengan pola grip klasik NB\r\n\r\n', 'New Balance 530 Ivory.png', 0),
('P008', 'Nike Dunk Low Cacao Wow', 'Sneakers', 1999000, 7, 'Colorway: Cacao Wow / Sail / Brown\r\nMaterial Upper: Kulit premium dengan finish halus, kombinasi warna cokelat tua (Cacao Wow) dan putih gading (Sail)\r\nMidsole: Midsole berwarna putih (Sail), bantalan foam empuk untuk kenyamanan dan dukungan kaki sehari-hari\r\n\r\n', 'Nike Dunk Low Cacao Wow.png', 0),
('P009', 'Nike Dunk Low Goldenrod', 'Sneakers', 1999000, 3, 'Colorway: Black / Goldenrod (University Gold)\r\nMaterial Upper: Bahan leather (kulit sintetis) berkualitas, upper berwarna dasar kuning terang (goldenrod) dengan overlay hitam\r\nMidsole: Midsole putih klasik, dilengkapi bantalan foam yang nyaman untuk aktivitas sehari-hari\r\nOutsole: Outsole karet hitam dengan traksi khas Dunk, tahan lama dan cocok untuk pemakaian indoor maupun outdoor\r\n', 'Nike Dunk Low Goldenrod.png', 0),
('P010', 'Jordan 1 Low White Light Bordeuax (GS)', 'Sneakers', 2399000, 10, 'Colorway: White / Light Bordeaux\r\nMaterial Upper: Upper berbahan leather (kulit sintetis) yang halus dan tahan lama, warna dasar putih dengan overlay berwarna Light Bordeaux (merah anggur muda), lidah berbahan mesh ringan dan breathable\r\nMidsole: Midsole putih dengan cushioning responsif\r\nOutsole: Karet berwarna Bordeaux\r\n\r\n', 'Jordan 1 Low White Light Bordeuax (GS).png', 0),
('P011', 'Nike Air Dunk Jumbo Medium Olive', 'Sneakers', 2299000, 1, 'Colorway: Medium Olive / Sequoia / Sail / Black\r\nMaterial Upper:\r\nberbahan mesh tebal dan kulit sintetis, warna dominan olive/hijau tentara dengan aksen hitam dan putih, detail jahitan exposed dan Swoosh oversized memberikan kesan rugged dan modern\r\nMidsole: Midsole berwarna sail (off-white)\r\nOutsole: Outsole karet tahan lama dengan pola cengkeraman khas Dunk\r\n\r\n', 'Nike Air Dunk Jumbo Medium Olive.png', 0),
('P012', 'New Balance 530 White Silver Navy', 'Sneakers', 1899000, 2, 'Colorway: White / Silver / Navy\r\nMaterial Upper: Kombinasi bahan mesh putih breathable dan synthetic leather overlay, detail aksen warna silver metalik dan navy di logo “N”, heel, dan lining, tampilan bersih dan sporty dengan nuansa retro running\r\nMidsole: Teknologi ABZORB cushioning yang empuk dan ringan, menyerap guncangan dengan baik untuk kenyamanan sepanjang hari\r\nOutsole: karet dengan pola grip klasik ala running shoes 2000-an, stabil, tahan lama, dan cocok untuk pemakaian kasual maupun aktif ringan\r\n\r\n', 'New Balance 530 White Silver Navy.png', 0),
('P013', 'New Balance 327 Moonbeam Shadow Grey', 'Sneakers', 1499000, 11, 'Colorway: Moonbeam / Shadow Grey\r\nMaterial Upper: terbuat dari kombinasi bahan suede premium dan mesh ringan, warna dasar “Moonbeam” (beige/cream lembut) dengan aksen abu-abu gelap “Shadow Grey”\r\nMidsole: Midsole EVA yang ringan dan nyaman, memberikan bantalan yang cukup untuk aktivitas harian tanpa terasa bulky\r\nOutsole: Karet bergaya lugged (bertekstur) yang terinspirasi dari trail running vintage, menyatu hingga ke tumit untuk tampilan unik dan grip ekstra\r\n\r\n', 'New Balance 327 Moonbeam Shadow Grey.png', 0),
('P014', 'Jordan 1 Low Purple Mocha', 'Sneakers', 2199000, 3, 'Colorway: Purple / Mocha / Sail / Black\r\nMaterial Upper: Upper berbahan kombinasi kulit sintetis dan suede, warna dasar ungu (purple) dengan aksen cokelat kopi (mocha) dan hitam, lidah dan lining berbahan mesh untuk sirkulasi udara yang baik\r\nMidsole: Midsole warna sail (off-white) yang empuk dan responsif\r\nOutsole: karet berwarna mocha dengan pattern grip klasik AJ1\r\n\r\n', 'Jordan 1 Low Purple Mocha.png', 0),
('P015', 'Jordan 1 Low SE Industrial Blue', 'Sneakers', 1500000, 2, 'Colorway: White / Industrial Blue / Black\r\nMaterial Upper: berbahan kombinasi canvas dan suede, warna dasar putih dengan overlay biru tua (Industrial Blue) dan aksen hitam\r\nMidsole: Midsole berwarna putih klasik\r\nOutsole: karet berwarna biru tua dengan pola traksi khas Air Jordan 1\r\n\r\n\r\n', 'Jordan 1 Low SE Industrial Blue.png', 0),
('P016', 'Dunk Low Panda Black White Vintage', 'Sneakers', 1899000, 8, 'Colorway: Black / White / Sail (Vintage Finish)\r\nMaterial Upper: Upper berbahan leather (kulit sintetis) berkualitas tinggi, warna dasar putih dengan overlay hitam klasik ala “Panda”\r\nMidsole: Midsole berwarna sail (cream/vintage putih) untuk nuansa retro\r\nOutsole: Outsole karet hitam dengan pola traksi khas Nike Dunk\r\n\r\n', 'Dunk Low Panda Black White Vintage.png', 0),
('P017', 'Nike Dunk Low Industrial Blue Sashiko', 'Sneakers', 2599000, 12, '•	Colorway: Industrial Blue / White\r\n•	Material Upper: Upper berbahan canvas dengan detail bordir ala Sashiko (seni jahit tradisional Jepang), warna dominan biru tua (Industrial Blue) dengan aksen putih kontras, tekstur kain dan pola jahitan unik menambah nuansa heritage dan premium\r\n•	Midsole: Putih bersih\r\n•	Outsole: Outsole karet berwarna biru dengan pola grip klasik Nike Dunk\r\n\r\n', 'Nike Dunk Low Industrial Blue Sashiko.png', 0),
('P018', 'New Balance 550 White Classic Green', 'Sneakers', 1899000, 1, 'Colorway: White / Classic Green\r\nMaterial Upper: berbahan kombinasi leather (kulit sintetis) dan mesh, warna dasar putih bersih dengan aksen hijau klasik (Classic Green), detail perforasi di sisi sepatu untuk sirkulasi udara\r\nMidsole: Midsole EVA berwarna putih dengan bantalan yang stabil dan nyaman\r\nOutsole: karet berwarna hijau dan abu-abu dengan grip khas sepatu basket vintage\r\n\r\n', 'New Balance 550 White Classic Green.png', 0),
('P019', 'Nike V2K Run Velvet Brown White', 'Sneakers', 1799000, 4, 'Colorway: Velvet Brown / White / Sail\r\nMaterial Upper: berbahan kombinasi mesh breathable dan synthetic overlay, warna dominan cokelat tua (Velvet Brown) dengan aksen putih dan krem (sail), detail layering dan garis dinamis memberi kesan sporty & futuristik\r\nMidsole: Midsole EVA ringan dengan desain bergelombang khas seri V2K\r\nOutsole: Outsole karet dengan pola traksi khas running shoes, fleksibel dan tahan lama, cocok untuk pemakaian kasual maupun aktif ringan\r\n\r\n', 'Nike V2K Run Velvet Brown White.png', 0),
('P020', 'Nike V2K Run Wolf Grey Navy', 'Sneakers', 1799000, 8, 'Colorway: Wolf Grey / Navy / Metallic Silver / White\r\nMaterial Upper: Upper berbahan kombinasi mesh ringan dan synthetic overlays, warna dasar abu-abu terang (Wolf Grey) dengan aksen biru navy dan silver\r\nMidsole: Midsole EVA dengan bentuk bergelombang yang khas\r\nOutsole: Outsole karet berwarna abu-abu gelap dengan pola traksi bergaya running shoes\r\n\r\n', 'Nike V2K Run Wolf Grey Navy.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_paket`
--

CREATE TABLE `tb_paket` (
  `no_paket` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `kota_tujuan` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provinsi_tujuan` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `biaya` double DEFAULT NULL,
  `berat` int DEFAULT NULL,
  `kategori` int DEFAULT NULL,
  `total_bayar` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_paket`
--

INSERT INTO `tb_paket` (`no_paket`, `kota_tujuan`, `provinsi_tujuan`, `biaya`, `berat`, `kategori`, `total_bayar`) VALUES
('A01', 'Semarang', 'Jawa Tengah', 7000, 30, 0, 210000),
('A02', 'Surakarta', 'Jawa Tengah', 9000, 30, 0, 540000),
('A03', 'Surabaya', 'Jawa Timur', 12000, 10, 0, 240000),
('A04', 'Ngawi', 'Jawa Timur', 5000, 10, 0, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int NOT NULL,
  `nama_penjual` char(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `telp` char(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategori_sampah` char(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `berat` float DEFAULT NULL,
  `total_harga` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `nama_penjual`, `telp`, `kategori_sampah`, `harga`, `berat`, `total_harga`) VALUES
(1, 'Fajar', '085780181206', '0', 1000, 5, 5000),
(5, 'Anggoro', '085556332214', 'Aluminium', 7000, 5, 35000),
(7, 'Anggoro123', '056332558', 'Botol Plastik', 1500, 7, 10500);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `username` char(20) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `email` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`username`, `password`, `status`, `email`) VALUES
('user1', '12345', 1, 'user1@gmail.com'),
('user2', '12345', 0, 'user2@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`),
  ADD KEY `nama_2` (`nama`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tbl_produk`
--
ALTER TABLE `tbl_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_paket`
--
ALTER TABLE `tb_paket`
  ADD PRIMARY KEY (`no_paket`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
