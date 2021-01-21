-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21 Jan 2021 pada 16.47
-- Versi Server: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tgr_admin`
--

CREATE TABLE `tgr_admin` (
  `nama` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tgr_admin`
--

INSERT INTO `tgr_admin` (`nama`, `password`) VALUES
('Azra', '25d55ad283aa400af464c76d713c07ad');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tgr_buku`
--

CREATE TABLE `tgr_buku` (
  `no` varchar(225) NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun_terbit` int(10) NOT NULL,
  `asal` varchar(200) NOT NULL,
  `klasifikasi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tgr_buku`
--

INSERT INTO `tgr_buku` (`no`, `tanggal`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `asal`, `klasifikasi`) VALUES
('1', '21/01/2021', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', 2005, 'Indonesia', 'Novel yang penuh inspirasi'),
('2', '21/01/2021', 'Pergi', 'Tere Liye', 'Tere Liye', 2018, 'Indonesia', 'Novel Best Seller'),
('3', '21/01/2021', 'Cinta Tak Terbalas', 'Azra de Knok', 'Anbu Corporation', 2021, 'Indonesia', 'ini cocok buat yang baru patah hati');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tgr_buku_tamu`
--

CREATE TABLE `tgr_buku_tamu` (
  `id` bigint(20) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `keperluan` varchar(200) NOT NULL,
  `tanggal` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tgr_buku_tamu`
--

INSERT INTO `tgr_buku_tamu` (`id`, `nama`, `kelas`, `keperluan`, `tanggal`) VALUES
(2, 'adam', '12 A', 'Pinjam', '21/01/2021'),
(3, 'jalal', '12 A', 'Pinjam', '21/01/2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tgr_peminjaman`
--

CREATE TABLE `tgr_peminjaman` (
  `id` int(225) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `kelas` varchar(10) NOT NULL,
  `no_buku` varchar(20) NOT NULL,
  `tanggal_pinjam` varchar(50) NOT NULL,
  `tanggal_kembali` varchar(50) NOT NULL,
  `kembali` varchar(50) NOT NULL,
  `status` int(5) NOT NULL,
  `l` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tgr_peminjaman`
--

INSERT INTO `tgr_peminjaman` (`id`, `nama`, `kelas`, `no_buku`, `tanggal_pinjam`, `tanggal_kembali`, `kembali`, `status`, `l`) VALUES
(5, 'jalal', '12 A', '3', '21/01/2021', '28/01/2021', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tgr_admin`
--
ALTER TABLE `tgr_admin`
  ADD PRIMARY KEY (`nama`);

--
-- Indexes for table `tgr_buku`
--
ALTER TABLE `tgr_buku`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tgr_buku_tamu`
--
ALTER TABLE `tgr_buku_tamu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tgr_peminjaman`
--
ALTER TABLE `tgr_peminjaman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tgr_buku_tamu`
--
ALTER TABLE `tgr_buku_tamu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tgr_peminjaman`
--
ALTER TABLE `tgr_peminjaman`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
