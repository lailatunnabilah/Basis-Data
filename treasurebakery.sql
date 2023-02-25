-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2023 pada 07.45
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `treasurebakery`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, 'Lailatun Nabilah ', 'admin', '202cb962ac59075b964b07152d234b70', '+6288217746684', 'lailatunnabilah1987@gmail.com', 'Desa Karngasem Dusun Krajan, RT001/RW001, Kec. Wonorejo Kab. Pasuruan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(1, 'Macaroon'),
(2, 'Donat'),
(5, 'Cupcake'),
(7, 'Korean Cake'),
(8, 'Birthday Cake');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(9, 1, 'Red Velvet Macaroon ', 10000, '<p>- Dengan rasa red velvet</p>\r\n\r\n<p>-&nbsp;Vanilla cream</p>\r\n', 'produk1673167610.jpg', 1, '2023-01-08 08:46:50'),
(10, 1, 'Chocolate Macarons', 10000, '<p>- Dengan rasa coklat</p>\r\n', 'produk1673014550.jpg', 1, '2023-01-06 14:15:50'),
(11, 2, 'Red Velvet Donuts', 15000, '<p>- Dengan rasa red velvet</p>\r\n\r\n<p>- Topping kepingan</p>\r\n\r\n<p>&nbsp; biskuit red velvet</p>\r\n', 'produk1673014711.jpg', 1, '2023-01-06 14:18:31'),
(13, 2, 'Oreo Donuts', 15000, '<p>- Dengan rasa oreo</p>\r\n\r\n<p>- Topping kepingan</p>\r\n\r\n<p>&nbsp; &nbsp;biskuit oreo</p>\r\n', 'produk1673015170.jpg', 1, '2023-01-06 14:26:10'),
(15, 5, 'Cheese Cupcakes', 10000, '<p>- Dengan rasa keju</p>\r\n\r\n<p>- Topping krim keju</p>\r\n\r\n<p>&nbsp; &nbsp;parutan keju</p>\r\n', 'produk1673017088.jpg', 1, '2023-01-06 14:58:08'),
(16, 5, 'Caramel Vanilla Cupcakes', 10000, '<p>- Dengan rasa vanila</p>\r\n\r\n<p>- Topping caramel</p>\r\n\r\n<p>- Remahan brownis</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1673017209.jpg', 1, '2023-01-06 15:00:09'),
(19, 7, 'Ice Bear Korean Cake', 50000, '<p>- Dengan rasa vanila</p>\r\n\r\n<p>- Character Custom</p>\r\n\r\n<p>- Topping sprinkcle</p>\r\n\r\n<p>- Dengan white cream</p>\r\n\r\n<p>- Terdapat 2 layer</p>\r\n\r\n<p>- Ukuran diameter 15 cm</p>\r\n', 'produk1673017740.jpg', 1, '2023-01-06 15:09:00'),
(20, 7, 'TREASURE Korean Cake', 50000, '<p>- Dengan rasa vanila</p>\r\n\r\n<p>- Kpop Idols custom</p>\r\n\r\n<p>- Topping sprinkcle</p>\r\n\r\n<p>- Dengan white cream</p>\r\n\r\n<p>- Terdapat 2 layer</p>\r\n\r\n<p>- Ukuran diameter 15 cm</p>\r\n', 'produk1673017808.jpg', 1, '2023-01-06 15:10:08'),
(21, 8, 'Chocolate Tart', 250000, '<p>- Dengan rasa coklat</p>\r\n\r\n<p>- Topping meses</p>\r\n\r\n<p>- Dengan triplee coklat</p>\r\n\r\n<p>- Terdapat 3 layer</p>\r\n\r\n<p>- Dengan cream cokelat</p>\r\n\r\n<p>- Ukuran diameter 30 cm</p>\r\n', 'produk1673017976.jpg', 1, '2023-01-06 15:12:56'),
(23, 8, 'Oreo Birthday Cake', 250000, '<p>- Dengan rasa cokelat</p>\r\n\r\n<p>&nbsp; &nbsp;dan oreo</p>\r\n\r\n<p>- Topping lelehan cokelat</p>\r\n\r\n<p>- Dengan biskuit oreo</p>\r\n\r\n<p>- Remahan biskuit oreo</p>\r\n\r\n<p>- Terdapat 3 layer</p>\r\n\r\n<p>- Dengan white cream</p>\r\n\r\n<p>- Ukuran diameter 30 cm</p>\r\n', 'produk1673018328.jpg', 1, '2023-01-06 15:18:48'),
(25, 8, 'Black Forest Cake', 350000, '<p>- Dengan rasa dark chocolate</p>\r\n\r\n<p>- Topping kepingan coklat</p>\r\n\r\n<p>- Dengan buah ceri</p>\r\n\r\n<p>- Terdapat 4 layer</p>\r\n\r\n<p>- Dengan cream cheese</p>\r\n\r\n<p>- Ukuran diameter 30cm</p>\r\n', 'produk1673110408.jpg', 1, '2023-01-06 15:25:09'),
(28, 8, 'Chocolate Fruit Cake', 400000, '<p>- Dengan rasa cokelat</p>\r\n\r\n<p>- Topping bar cokelat</p>\r\n\r\n<p>- Dengan Cokelat putih</p>\r\n\r\n<p>- Taburan buah berry</p>\r\n\r\n<p>- Dengan 3 layer</p>\r\n\r\n<p>- Diameter 30cm&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp;</p>\r\n', 'produk1673158817.jpg', 1, '2023-01-08 06:20:17');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
