-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Nov 2022 pada 11.31
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atala`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `kodehasil` int(11) NOT NULL,
  `na` double NOT NULL,
  `kodeproyek` char(9) NOT NULL,
  `kodepengguna` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `indikator`
--

CREATE TABLE `indikator` (
  `kodeindikator` char(9) NOT NULL,
  `indikator` varchar(54) NOT NULL,
  `nilai` int(11) NOT NULL,
  `kodekriteria` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `indikator`
--

INSERT INTO `indikator` (`kodeindikator`, `indikator`, `nilai`, `kodekriteria`) VALUES
('IDK000001', 'Indikator Kriteria 1a', 1, 'KRPRY0001'),
('IDK000002', 'Indikator Kriteria 1b', 2, 'KRPRY0001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `email` varchar(99) NOT NULL,
  `telepon` char(14) NOT NULL,
  `alamat` text NOT NULL,
  `tentang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `kodekriteria` char(9) NOT NULL,
  `kriteria` varchar(27) NOT NULL,
  `kategori` enum('Cost','Benefit') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`kodekriteria`, `kriteria`, `kategori`) VALUES
('KRPRY0001', 'Kriteria 1', 'Cost'),
('KRPRY0002', 'Kriteria 2', 'Benefit'),
('KRPRY0003', 'Kriteria 3', 'Cost'),
('KRPRY0004', 'Kriteria 4', 'Cost'),
('KRPRY0005', 'Kriteria 5', 'Benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `kodenilai` int(11) NOT NULL,
  `nilai` int(11) NOT NULL,
  `kodeindikator` char(9) NOT NULL,
  `kodekriteria` char(9) NOT NULL,
  `kodeproyek` char(9) NOT NULL,
  `kodepengguna` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `kodepengguna` char(9) NOT NULL,
  `nama` varchar(63) NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(45) NOT NULL,
  `provinsi` varchar(27) NOT NULL,
  `telepon` char(14) NOT NULL,
  `username` varchar(99) NOT NULL,
  `password` char(32) NOT NULL,
  `level` enum('admin','supplier') NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`kodepengguna`, `nama`, `alamat`, `kota`, `provinsi`, `telepon`, `username`, `password`, `level`, `status`) VALUES
('SUP000001', 'Nama Supplier 1', 'alamat lengkap supplier', 'Pekalongan', 'Jawa Tengah', '08123456789', 'nama994', 'e10adc3949ba59abbe56e057f20f883e', 'supplier', '1'),
('SUP000002', 'Nama Supplier 2', 'alamat lengkap supplier', 'Pekalongan', 'Jawa Tengah', '08123456789', 'nama622', 'e10adc3949ba59abbe56e057f20f883e', 'supplier', '1'),
('SUP000003', 'Nama Supplier 3', 'alamat lengkap supplier', 'Batang', 'Jawa Tengah', '08123456789', 'nama460', 'e10adc3949ba59abbe56e057f20f883e', 'supplier', '1'),
('USER00000', 'Administrator', 'Bandar, Kec. Bandar, Kabupaten Batang, Jawa Tengah 51254', 'Pekalongan', 'Jawa Tengah', '(0285) 689001', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `proyek`
--

CREATE TABLE `proyek` (
  `kodeproyek` char(9) NOT NULL,
  `proyek` varchar(99) NOT NULL,
  `deskripsi` text NOT NULL,
  `biaya` int(11) NOT NULL,
  `status` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `proyek`
--

INSERT INTO `proyek` (`kodeproyek`, `proyek`, `deskripsi`, `biaya`, `status`) VALUES
('P16115522', 'Proyek 3', 'contoh deskripsi proyek', 1245470000, '1'),
('P16117522', 'Proyek 2', 'contoh deskripsi proyek', 345000000, '1'),
('P16119022', 'Proyek 1', 'contoh deskripsi proyek', 150000000, '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `register`
--

CREATE TABLE `register` (
  `koderegister` int(11) NOT NULL,
  `waktu` datetime NOT NULL,
  `kodesupplier` char(9) NOT NULL,
  `kodeproyek` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `skema`
--

CREATE TABLE `skema` (
  `kodeskema` int(11) NOT NULL,
  `bobot` int(11) NOT NULL,
  `kodekriteria` char(9) NOT NULL,
  `kodeproyek` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `skema`
--

INSERT INTO `skema` (`kodeskema`, `bobot`, `kodekriteria`, `kodeproyek`) VALUES
(2, 25, 'KRPRY0001', 'P16117522'),
(3, 10, 'KRPRY0003', 'P16117522'),
(4, 5, 'KRPRY0002', 'P16117522'),
(5, 5, 'KRPRY0004', 'P16117522'),
(6, 10, 'KRPRY0001', 'P16115522'),
(7, 10, 'KRPRY0002', 'P16115522'),
(8, 25, 'KRPRY0004', 'P16115522');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`kodehasil`);

--
-- Indeks untuk tabel `indikator`
--
ALTER TABLE `indikator`
  ADD PRIMARY KEY (`kodeindikator`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`kodekriteria`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`kodenilai`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`kodepengguna`);

--
-- Indeks untuk tabel `proyek`
--
ALTER TABLE `proyek`
  ADD PRIMARY KEY (`kodeproyek`);

--
-- Indeks untuk tabel `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`koderegister`);

--
-- Indeks untuk tabel `skema`
--
ALTER TABLE `skema`
  ADD PRIMARY KEY (`kodeskema`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `kodehasil` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `kodenilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `register`
--
ALTER TABLE `register`
  MODIFY `koderegister` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `skema`
--
ALTER TABLE `skema`
  MODIFY `kodeskema` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
