-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2023 pada 13.54
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `galon`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'jimmy', '123', 'jimmy triandana\r\n'),
(2, 'riki', '123', 'riki alwi'),
(3, 'faisal', '123', 'faisal amri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ongkir`
--

CREATE TABLE `ongkir` (
  `id_ongkir` int(5) NOT NULL,
  `jarak` varchar(25) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ongkir`
--

INSERT INTO `ongkir` (`id_ongkir`, `jarak`, `tarif`) VALUES
(1, '2 KM', 3000),
(2, '5 KM', 5000),
(3, '10 KM', 10000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(100) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon_pelanggan` varchar(100) NOT NULL,
  `alamat_pelanggan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon_pelanggan`, `alamat_pelanggan`) VALUES
(2, 'jimmy@gmail.com', '123', 'jimmy', '082285620894\r\n', ''),
(6, 'ades@gmail.com', '123', 'Ades', '09876546712', 'langsa'),
(7, 'ri@gmail.com', '111', 'riki', '085831289741', 'langsa'),
(8, 'riki@gmail.com', '123', 'riki', '087652131223', 'jepang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_ongkir` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `jarak` varchar(100) NOT NULL,
  `tarif` int(11) NOT NULL,
  `alamat_pengiriman` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `id_ongkir`, `tanggal_pembelian`, `total_pembelian`, `jarak`, `tarif`, `alamat_pengiriman`) VALUES
(1, 1, 1, '2022-06-07', 1000, '', 0, ''),
(2, 2, 1, '2022-06-17', 9000, '', 0, ''),
(6, 2, 0, '2022-06-18', 15000, '', 0, ''),
(7, 2, 0, '2022-06-18', 15000, '', 0, ''),
(8, 2, 0, '2022-06-18', 15000, '', 0, ''),
(9, 2, 0, '2022-06-18', 15000, '', 0, ''),
(10, 2, 0, '2022-06-18', 15000, '', 0, ''),
(11, 2, 0, '2022-06-18', 9000, '', 0, ''),
(12, 2, 1, '2022-06-18', 12000, '', 0, ''),
(13, 2, 3, '2022-06-18', 19000, '', 0, ''),
(14, 2, 3, '2022-06-18', 19000, '', 0, ''),
(15, 2, 2, '2022-06-18', 14000, '', 0, ''),
(16, 2, 1, '2022-06-18', 14000, '', 0, ''),
(17, 2, 3, '2022-06-18', 29000, '', 0, ''),
(18, 2, 1, '2022-06-18', 23000, '', 0, ''),
(19, 2, 2, '2022-06-18', 13000, '', 0, ''),
(20, 2, 1, '2022-06-18', 3000, '', 0, ''),
(21, 2, 2, '2022-06-18', 11000, '', 0, ''),
(22, 2, 1, '2022-06-18', 19000, '', 0, ''),
(23, 2, 2, '2022-06-18', 13000, '', 0, ''),
(24, 2, 1, '2022-06-18', 12000, '', 0, ''),
(25, 2, 3, '2022-06-18', 26000, '', 0, ''),
(26, 2, 3, '2022-06-18', 35000, '10 KM', 10000, ''),
(27, 2, 3, '2022-06-18', 21000, '10 KM', 10000, 'Jalan Ahmad yani Gg.sadar no 115'),
(28, 2, 3, '2022-06-19', 26000, '10 KM', 10000, 'Paya bujok tunong no 115  kode pos 2445'),
(29, 2, 3, '2022-06-19', 13000, '10 KM', 10000, ''),
(30, 2, 2, '2022-06-19', 8000, '5 KM', 5000, 'kota langsa'),
(31, 2, 1, '2022-06-19', 6000, '2 KM', 3000, 'langsa'),
(32, 2, 2, '2022-06-19', 11000, '5 KM', 5000, 'jakarta\r\n'),
(33, 2, 2, '2022-06-19', 18000, '5 KM', 5000, 'meurande'),
(34, 2, 2, '2022-06-19', 48000, '5 KM', 5000, 'bandung'),
(35, 2, 2, '2022-06-19', 14000, '5 KM', 5000, 'bandung'),
(36, 7, 1, '2022-06-19', 6000, '2 KM', 3000, 'meurandeh tengoh'),
(37, 8, 2, '2022-06-19', 33000, '5 KM', 5000, 'lengkong '),
(38, 2, 2, '2022-06-22', 28000, '5 KM', 5000, 'Paya bujok tunong gg sadr no 115 kode pos 24415'),
(39, 2, 2, '2022-06-22', 5000, '5 KM', 5000, 'Paya bujok tunong gg sadr no 115 kode pos 24415'),
(40, 2, 1, '2022-06-22', 6000, '2 KM', 3000, ''),
(41, 2, 3, '2022-06-22', 50000, '10 KM', 10000, 'jakarta'),
(42, 2, 1, '2023-05-28', 6000, '2 KM', 3000, ''),
(43, 2, 0, '2023-05-28', 300000, '', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `berat` int(11) NOT NULL,
  `subberat` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_produk`, `jumlah`, `nama`, `harga`, `berat`, `subberat`, `subharga`) VALUES
(1, 1, 2, 1, '', 0, 0, 0, 0),
(2, 2, 1, 3, '', 0, 0, 0, 0),
(5, 1, 3, 1, '', 0, 0, 0, 0),
(6, 1, 4, 1, '', 0, 0, 0, 0),
(7, 0, 3, 2, '', 0, 0, 0, 0),
(8, 0, 5, 1, '', 0, 0, 0, 0),
(9, 15, 3, 2, '', 0, 0, 0, 0),
(10, 15, 5, 1, '', 0, 0, 0, 0),
(11, 16, 3, 1, '', 0, 0, 0, 0),
(12, 16, 5, 1, '', 0, 0, 0, 0),
(13, 16, 7, 1, '', 0, 0, 0, 0),
(14, 17, 3, 2, '', 0, 0, 0, 0),
(15, 17, 5, 1, '', 0, 0, 0, 0),
(16, 17, 13, 1, '', 0, 0, 0, 0),
(17, 18, 10, 2, '', 0, 0, 0, 0),
(18, 19, 3, 1, '', 0, 0, 0, 0),
(19, 19, 7, 1, '', 0, 0, 0, 0),
(20, 21, 3, 1, '', 0, 0, 0, 0),
(21, 21, 5, 1, '', 0, 0, 0, 0),
(22, 22, 3, 1, '', 0, 0, 0, 0),
(23, 22, 5, 1, '', 0, 0, 0, 0),
(24, 22, 10, 1, '', 0, 0, 0, 0),
(25, 23, 3, 1, '', 0, 0, 0, 0),
(26, 23, 12, 1, '', 0, 0, 0, 0),
(27, 24, 3, 1, '', 0, 0, 0, 0),
(28, 24, 5, 2, '', 0, 0, 0, 0),
(29, 25, 3, 2, 'Aqua', 3000, 1000, 2000, 6000),
(30, 25, 14, 1, 'Jaya galon', 10000, 1000, 1000, 10000),
(31, 26, 14, 1, 'Jaya galon', 10000, 1000, 1000, 10000),
(32, 26, 12, 1, 'Cleo', 5000, 1000, 1000, 5000),
(33, 26, 13, 1, 'Oasis', 10000, 1000, 1000, 10000),
(34, 27, 3, 2, 'Aqua', 3000, 1000, 2000, 6000),
(35, 27, 12, 1, 'Cleo', 5000, 1000, 1000, 5000),
(36, 28, 3, 2, 'Aqua', 3000, 1000, 2000, 6000),
(37, 28, 14, 1, 'Jaya galon', 10000, 1000, 1000, 10000),
(38, 29, 3, 1, 'Aqua', 3000, 1000, 1000, 3000),
(39, 30, 3, 1, 'Aqua', 3000, 1000, 1000, 3000),
(40, 31, 3, 1, 'Aqua', 3000, 1000, 1000, 3000),
(41, 32, 5, 2, 'Le Mineral', 3000, 1000, 2000, 6000),
(42, 33, 3, 1, 'Aqua', 3000, 1000, 1000, 3000),
(43, 33, 13, 1, 'Oasis', 10000, 1000, 1000, 10000),
(44, 34, 3, 1, 'Aqua', 3000, 1000, 1000, 3000),
(45, 34, 13, 2, 'Oasis', 10000, 1000, 2000, 20000),
(46, 34, 9, 4, 'Vit', 5000, 2000, 8000, 20000),
(47, 35, 3, 3, 'Aqua', 3000, 1000, 3000, 9000),
(48, 36, 3, 1, 'Aqua', 3000, 1000, 1000, 3000),
(49, 37, 3, 1, 'Aqua', 3000, 1000, 1000, 3000),
(50, 37, 12, 5, 'Cleo', 5000, 1000, 5000, 25000),
(51, 38, 3, 6, 'Aqua', 3000, 1000, 6000, 18000),
(52, 38, 12, 1, 'Cleo', 5000, 1000, 1000, 5000),
(53, 40, 3, 1, 'Aqua', 3000, 1000, 1000, 3000),
(54, 41, 3, 10, 'Aqua', 3000, 1000, 10000, 30000),
(55, 41, 15, 5, 'amique', 2000, 1000, 5000, 10000),
(56, 42, 3, 1, 'Aqua', 3000, 1000, 1000, 3000),
(57, 43, 3, 1, 'Aqua', 3000, 1000, 1000, 3000),
(58, 43, 5, 99, 'Le Mineral', 3000, 1000, 99000, 297000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `berat_produk` int(11) NOT NULL,
  `foto_produk` varchar(100) NOT NULL,
  `deskripsi_produk` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `berat_produk`, `foto_produk`, `deskripsi_produk`) VALUES
(3, 'Aqua', 3000, 1000, 'aqua.png', 'air minum higenis dan sehat'),
(5, 'Le Mineral', 3000, 1000, 'lemineral.png', 'air yang di peroleh dari hujan yang di tampung'),
(7, 'Club', 5000, 2000, 'tmp_phpzckjql_10049890_1528550938.png', 'Club merupakan air minum yang bagus untuk kesehatan tubuh'),
(9, 'Vit', 5000, 2000, '5b812c6c4ed8c5ffe45fe7c1ad3cc10f (1).png', 'Vit air minum yang ketika di minum menjadi lebih vit'),
(10, 'Nestle Pure Life', 10000, 2000, '0bc2d930-d9f1-4ca5-923a-a4a313b3cedb.a9000b0f881135d08067693c05be9eb8.png', 'Nestle merupakan air minum yang sangat baik untuk pencernaan '),
(12, 'Cleo', 5000, 1000, 'cleo.png', 'Air minum'),
(13, 'Oasis', 10000, 1000, '67c80193-062f-4092-80c1-452e0a1ee715.jpg', 'air minum'),
(14, 'Jaya galon', 10000, 1000, 'galon-hero.png', 'Air yang ketika di minum menjadi jaya selalu'),
(15, 'amique', 2000, 1000, '9160893a-f3b3-47fd-8278-c7c318e0768a.jpg', 'air minum sehat');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  ADD PRIMARY KEY (`id_ongkir`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ongkir`
--
ALTER TABLE `ongkir`
  MODIFY `id_ongkir` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
