-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jan 2023 pada 02.51
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sispak`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kesimpulan`
--

CREATE TABLE `tb_kesimpulan` (
  `kode_kesimpulan` int(11) NOT NULL,
  `solusi` varchar(50) NOT NULL,
  `fakta` varchar(100) NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kesimpulan`
--

INSERT INTO `tb_kesimpulan` (`kode_kesimpulan`, `solusi`, `fakta`, `oleh`, `status`) VALUES
(1, 'Influenza', 'Mengalami demam', 'pakar', 'setuju'),
(2, 'Influenza', 'Mengalami batuk', 'pakar', 'setuju'),
(3, 'Influenza', 'Merasa nyeri tenggorokan', 'pakar', 'setuju'),
(4, 'Influenza', 'Mengalami hidung berlendir', 'pakar', 'setuju'),
(5, 'Influenza', 'Merasa hidung tersumbat', 'pakar', 'setuju'),
(6, 'Influenza', 'Merasa sakit kepala', 'pakar', 'setuju'),
(7, 'Influenza', 'Merasa mudah lelah', 'pakar', 'setuju'),
(8, 'Influenza', 'Mengalami diare', 'pakar', 'setuju'),
(9, 'Influenza', 'Merasa mual dan muntah', 'pakar', 'setuju'),
(10, 'Covid-19', 'Mengalami demam', 'pakar', 'setuju'),
(11, 'Covid-19', 'Mengalami batuk', 'pakar', 'setuju'),
(12, 'Covid-19', 'Merasa nyeri tenggorokan', 'pakar', 'setuju'),
(13, 'Covid-19', 'Mengalami sakit kepala', 'pakar', 'setuju'),
(14, 'Covid-19', 'Mengalami diare', 'pakar', 'setuju'),
(15, 'Covid-19', 'Merasa kehilangan indera perasa', 'pakar', 'setuju'),
(16, 'Covid-19', 'Mengalami ruam pada kulit', 'pakar', 'setuju'),
(17, 'Covid-19', 'Mengalami mata merah', 'pakar', 'setuju'),
(18, 'Covid-19', 'Merasa sesak nafas', 'pakar', 'setuju'),
(19, 'Covid-19', 'Merasa kesulitan bergerak', 'pakar', 'setuju'),
(20, 'Covid-19', 'Merasa nyeri dada', 'pakar', 'setuju');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pertanyaan`
--

CREATE TABLE `tb_pertanyaan` (
  `kode_pertanyaan` varchar(50) NOT NULL,
  `isi_pertanyaan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pertanyaan`
--

INSERT INTO `tb_pertanyaan` (`kode_pertanyaan`, `isi_pertanyaan`) VALUES
('m1', 'Apakah anda merasa demam ?'),
('m10', 'Apakah anda merasa kehilangan indera perasa ?'),
('m11', 'Apakah anda mengalami ruam pada kulit ?'),
('m12', 'Apakah mata anda merah? ?'),
('m13', 'Apakah anda merasa sesak nafas ?'),
('m14', 'Apakah anda merasa kesulitan bergerak ?'),
('m15', 'Apakah anda merasa nyeri dada?'),
('m2', 'Apakah anda batuk?'),
('m3', 'Apakah anda merasa nyeri tenggorokan ?'),
('m4', 'Apakah anda merasa hidung berlendir ?'),
('m5', 'Apakah anda merasa hidung tersumbat?'),
('m6', 'Apakah anda merasa sakit kepala ?'),
('m7', 'Apakah anda merasa mudah lelah ?'),
('m8', 'Apakah anda mengalami diare ?'),
('m9', 'Apakah anda merasa mual dan muntah ?');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_solusi`
--

CREATE TABLE `tb_solusi` (
  `kode_solusi` varchar(50) NOT NULL,
  `isi_solusi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_solusi`
--

INSERT INTO `tb_solusi` (`kode_solusi`, `isi_solusi`) VALUES
('S1', 'Influenza'),
('S11', 'x-1'),
('S2', 'Covid-19');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_kesimpulan`
--
ALTER TABLE `tb_kesimpulan`
  ADD PRIMARY KEY (`kode_kesimpulan`);

--
-- Indeks untuk tabel `tb_pertanyaan`
--
ALTER TABLE `tb_pertanyaan`
  ADD PRIMARY KEY (`kode_pertanyaan`);

--
-- Indeks untuk tabel `tb_solusi`
--
ALTER TABLE `tb_solusi`
  ADD PRIMARY KEY (`kode_solusi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kesimpulan`
--
ALTER TABLE `tb_kesimpulan`
  MODIFY `kode_kesimpulan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
