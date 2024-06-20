-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2024 pada 10.31
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_154b`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` varchar(6) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username_admin` varchar(20) NOT NULL,
  `password_admin` varchar(255) NOT NULL,
  `akses_level` enum('1','2','3') NOT NULL,
  `is_delete_admin` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `username_admin`, `password_admin`, `akses_level`, `is_delete_admin`, `created_at`, `updated_at`) VALUES
('adm000', 'developer', 'developer', '$2y$10$BtHHWFXmLuhnP79ievN58O8EivCDmojcmNDivaVhmIlBQNSiqr9Ku', '1', '0', '2024-03-22 09:18:20', '2024-03-22 09:18:20'),
('ADM001', 'awikwok', 'wik', '$2y$10$N.UxsAGUCxQt.4hhfikq8.iIdbCZxJM9bU4iODuAunx5RHkDA1/Oa', '3', '0', '2024-05-31 08:24:43', '2024-05-31 09:12:08'),
('ADM002', 'cihuy', 'huy', '$2y$10$gRm8npxGOx/Ro89DD2v7BeDMBnNAr3f0oQXTCKbfkksc4Le50UFnW', '2', '0', '2024-05-31 08:30:33', '2024-05-31 09:12:43'),
('ADM003', 'hehei', 'bruh', '$2y$10$lv7iG46.7QbCpzsDS.5nmuH5DhiGhqQj/KOaLgYdD3zPrapDXEiBm', '3', '0', '2024-05-31 08:48:49', '2024-05-31 09:20:28'),
('ADM004', 'bruakak', 'keueu', '$2y$10$lmc76fnLjIz9pgf9ZsHd5eGrjgOn6s8QTFJ9dFtckchcksv2uLKEi', '2', '0', '2024-05-31 08:56:43', '2024-05-31 09:12:21'),
('ADM005', 'manuk', 'nuk', '$2y$10$Oxz6jCoDkK7FZn5voXjLdedecDXezuBgBZJddwDgAZ9EHkI.KI5LG', '2', '0', '2024-05-31 09:00:50', '2024-05-31 09:13:15'),
('ADM006', 'bukan saya', '15220415', '$2y$10$ed1CpYiUXQBKGjalW3oiQu4t9z./3wfkJKLGQ2ceFKUlOiWnQCyg6', '3', '0', '2024-05-31 09:20:50', '2024-05-31 09:21:02'),
('ADM007', 'ryo', 'ryovlrt', '$2y$10$BtHHWFXmLuhnP79ievN58O8EivCDmojcmNDivaVhmIlBQNSiqr9Ku', '2', '0', '2024-06-20 07:52:05', '2024-06-20 07:52:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_anggota`
--

CREATE TABLE `tbl_anggota` (
  `id_anggota` varchar(6) NOT NULL,
  `nama_anggota` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password_anggota` varchar(50) NOT NULL,
  `is_delete_anggota` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`id_anggota`, `nama_anggota`, `jenis_kelamin`, `no_tlp`, `alamat`, `email`, `password_anggota`, `is_delete_anggota`, `created_at`, `updated_at`) VALUES
('ANG001', 'Ramadhoni', 'L', '087721888891', 'Puri 2', 'ramdhon1.ssss@gmail.com', 'maulana24', '0', '2024-06-20 07:53:22', '2024-06-20 07:53:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `id_buku` varchar(6) NOT NULL,
  `judul_buku` varchar(200) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `jumlah_eksemplar` int(3) NOT NULL,
  `id_kategori` varchar(6) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `id_rak` varchar(6) NOT NULL,
  `cover_buku` varchar(30) NOT NULL,
  `e_book` varchar(30) NOT NULL,
  `is_delete_buku` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_buku`
--

INSERT INTO `tbl_buku` (`id_buku`, `judul_buku`, `pengarang`, `penerbit`, `tahun`, `jumlah_eksemplar`, `id_kategori`, `keterangan`, `id_rak`, `cover_buku`, `e_book`, `is_delete_buku`, `created_at`, `updated_at`) VALUES
('BUK001', 'Kanjut Mas Rusdi', 'Mas Rusdi', 'Gramedia', '2024', 2, 'KAT002', 'Kisah seorang mas rusdi', 'RAK001', 'bg windah.jpg', 'Chara Building.pdf', '0', '2024-06-20 07:57:35', '2024-06-20 07:58:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` varchar(6) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `is_delete_kategori` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`, `is_delete_kategori`, `created_at`, `updated_at`) VALUES
('KAT001', 'Kanjut', '0', '2024-06-20 07:56:15', '2024-06-20 07:56:19'),
('KAT002', 'Kanjut', '0', '2024-06-20 07:56:26', '2024-06-20 07:56:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rak`
--

CREATE TABLE `tbl_rak` (
  `id_rak` varchar(6) NOT NULL,
  `nama_rak` varchar(50) NOT NULL,
  `is_delete_rak` enum('0','1') NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_rak`
--

INSERT INTO `tbl_rak` (`id_rak`, `nama_rak`, `is_delete_rak`, `created_at`, `updated_at`) VALUES
('RAK001', 'Kanjut', '0', '2024-06-20 07:56:37', '2024-06-20 07:56:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `id_katagori` (`id_kategori`,`id_rak`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `tbl_rak`
--
ALTER TABLE `tbl_rak`
  ADD PRIMARY KEY (`id_rak`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
