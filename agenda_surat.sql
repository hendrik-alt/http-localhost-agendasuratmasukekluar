-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Okt 2025 pada 08.19
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agenda_surat`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_User` int(11) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `login_session_key` varchar(255) DEFAULT NULL,
  `email_status` varchar(255) DEFAULT NULL,
  `password_expire_date` datetime DEFAULT '2026-01-21 00:00:00',
  `password_reset_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_User`, `Nama`, `Password`, `Email`, `login_session_key`, `email_status`, `password_expire_date`, `password_reset_key`) VALUES
(1, 'SMP Kartika VI-1 Jayapura', '$2y$10$7Q2xYOHNRQ1mcCYU4K0LjuwA4f.0riDD.sSJgnG8boL/SnpiyRrl6', 'hendrik@gmail.com', '2ebce39c8716370c0526b27de939d340', NULL, '2026-01-21 16:26:07', NULL),
(2, 'user', '$2y$10$fO2mPPMk2VedFnSoR3gKfOwSahkV5GtU4g3nSOGdw5vgXLvLul7Wy', 'mega@gmail.com', NULL, NULL, '2026-01-21 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `No_Agenda` int(11) NOT NULL,
  `Tanggal_Surat` date NOT NULL,
  `Tujuan_Surat` varchar(255) NOT NULL,
  `No_Surat` varchar(255) NOT NULL,
  `Perihal` varchar(255) NOT NULL,
  `File_Surat` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_keluar`
--

INSERT INTO `surat_keluar` (`No_Agenda`, `Tanggal_Surat`, `Tujuan_Surat`, `No_Surat`, `Perihal`, `File_Surat`) VALUES
(1, '2025-10-01', 'yayasan', '1/23/4', 'keuangan', 'http://localhost/appsuratmasukkeluar/uploads/files/l8h5j7ykvsrtewq.pdf'),
(2, '2025-10-06', 'yayasan', '123233', 'turam', 'http://localhost/appsuratmasukkeluar/uploads/files/8apms6tqb_5d1k4.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `No_Agenda` int(11) NOT NULL,
  `Nomor_Surat` varchar(255) NOT NULL,
  `Tanggal_Surat` date NOT NULL,
  `Tanggal_Terima` datetime NOT NULL,
  `Asal_Surat` varchar(255) NOT NULL,
  `Perihal` varchar(255) NOT NULL,
  `File_Surat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `surat_masuk`
--

INSERT INTO `surat_masuk` (`No_Agenda`, `Nomor_Surat`, `Tanggal_Surat`, `Tanggal_Terima`, `Asal_Surat`, `Perihal`, `File_Surat`) VALUES
(1, '35343435', '2025-10-04', '2025-10-08 12:00:00', 'kartika', 'turam', 'http://localhost/appsuratmasukkeluar/uploads/files/h69_kbfr3wyzpm7.pdf');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_User`);

--
-- Indeks untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`No_Agenda`);

--
-- Indeks untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`No_Agenda`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_User` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `No_Agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `No_Agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
