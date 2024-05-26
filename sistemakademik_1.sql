-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 10:40 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemakademik_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `Kode_dsn` int(6) NOT NULL,
  `NIP` varchar(18) DEFAULT NULL,
  `Prodi` int(3) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`Kode_dsn`, `NIP`, `Prodi`, `Alamat`, `Email`) VALUES
(101, '1234567890', 1, 'Jl. Contoh No. 1', 'dosen1@example.com'),
(102, '2345678901', 2, 'Jl. Contoh No. 2', 'dosen2@example.com'),
(103, '3456789012', 1, 'Jl. Contoh No. 3', 'dosen3@example.com'),
(104, '4567890123', 3, 'Jl. Contoh No. 4', 'dosen4@example.com'),
(105, '5678901234', 2, 'Jl. Contoh No. 5', 'dosen5@example.com'),
(106, '6789012345', 1, 'Jl. Contoh No. 6', 'dosen6@example.com'),
(107, '7890123456', 3, 'Jl. Contoh No. 7', 'dosen7@example.com'),
(108, '8901234567', 2, 'Jl. Contoh No. 8', 'dosen8@example.com'),
(109, '9012345678', 1, 'Jl. Contoh No. 9', 'dosen9@example.com'),
(110, '0123456789', 3, 'Jl. Contoh No. 10', 'dosen10@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `Kd_Jadwal` varchar(9) NOT NULL,
  `Hari` varchar(10) DEFAULT NULL,
  `Jam` varchar(6) DEFAULT NULL,
  `Kd_MK` varchar(9) DEFAULT NULL,
  `Kd_Dosen` int(6) DEFAULT NULL,
  `Tipe` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`Kd_Jadwal`, `Hari`, `Jam`, `Kd_MK`, `Kd_Dosen`, `Tipe`) VALUES
('J001', 'Senin', '08:00', 'MK001', 101, 'Teori'),
('J002', 'Selasa', '10:00', 'MK002', 102, 'Praktikum'),
('J003', 'Rabu', '13:00', 'MK003', 103, 'Teori'),
('J004', 'Kamis', '15:00', 'MK004', 104, 'Praktikum'),
('J005', 'Jumat', '08:00', 'MK005', 105, 'Teori'),
('J006', 'Senin', '10:00', 'MK006', 106, 'Praktikum'),
('J007', 'Selasa', '13:00', 'MK007', 107, 'Teori'),
('J008', 'Rabu', '15:00', 'MK008', 108, 'Praktikum'),
('J009', 'Kamis', '08:00', 'MK009', 109, 'Teori'),
('J010', 'Jumat', '10:00', 'MK010', 110, 'Praktikum');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` int(8) NOT NULL,
  `Nama` varchar(40) DEFAULT NULL,
  `Tmp_Lahir` varchar(30) DEFAULT NULL,
  `Tgl_Lahir` date DEFAULT NULL,
  `JP` char(1) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Tmp_Lahir`, `Tgl_Lahir`, `JP`, `Email`) VALUES
(191001, 'Mahasiswa 1', 'Jakarta', '2000-01-01', 'A', 'mahasiswa1@example.com'),
(191002, 'Mahasiswa 2', 'Bandung', '2000-02-02', 'B', 'mahasiswa2@example.com'),
(191003, 'Mahasiswa 3', 'Surabaya', '2000-03-03', 'A', 'mahasiswa3@example.com'),
(191004, 'Mahasiswa 4', 'Yogyakarta', '2000-04-04', 'B', 'mahasiswa4@example.com'),
(191005, 'Mahasiswa 5', 'Semarang', '2000-05-05', 'A', 'mahasiswa5@example.com'),
(191006, 'Mahasiswa 6', 'Medan', '2000-06-06', 'B', 'mahasiswa6@example.com'),
(191007, 'Mahasiswa 7', 'Palembang', '2000-07-07', 'A', 'mahasiswa7@example.com'),
(191008, 'Mahasiswa 8', 'Makassar', '2000-08-08', 'B', 'mahasiswa8@example.com'),
(191009, 'Mahasiswa 9', 'Malang', '2000-09-09', 'A', 'mahasiswa9@example.com'),
(191010, 'Mahasiswa 10', 'Balikpapan', '2000-10-10', 'B', 'mahasiswa10@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `Kd_MK` varchar(9) NOT NULL,
  `Nama_MK` varchar(30) DEFAULT NULL,
  `SKS` int(11) DEFAULT NULL,
  `Deskripsi` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`Kd_MK`, `Nama_MK`, `SKS`, `Deskripsi`) VALUES
('MK001', 'Matematika Dasar', 3, 'Pengantar materi matematika dasar'),
('MK002', 'Fisika Dasar', 3, 'Pengantar materi fisika dasar'),
('MK003', 'Kimia Dasar', 3, 'Pengantar materi kimia dasar'),
('MK004', 'Biologi Dasar', 3, 'Pengantar materi biologi dasar'),
('MK005', 'Bahasa Inggris', 3, 'Pengantar materi bahasa inggris'),
('MK006', 'Pemrograman Dasar', 3, 'Pengantar materi pemrograman dasar'),
('MK007', 'Struktur Data', 3, 'Pengantar materi struktur data'),
('MK008', 'Basis Data', 3, 'Pengantar materi basis data'),
('MK009', 'Sistem Operasi', 3, 'Pengantar materi sistem operasi'),
('MK010', 'Jaringan Komputer', 3, 'Pengantar materi jaringan komputer');

-- --------------------------------------------------------

--
-- Table structure for table `ruangkelas`
--

CREATE TABLE `ruangkelas` (
  `Kd_Ruang` varchar(6) NOT NULL,
  `Nama_Ruang` varchar(30) DEFAULT NULL,
  `Kd_MK` varchar(9) DEFAULT NULL,
  `Kd_Dosen` int(6) DEFAULT NULL,
  `Kapasitas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruangkelas`
--

INSERT INTO `ruangkelas` (`Kd_Ruang`, `Nama_Ruang`, `Kd_MK`, `Kd_Dosen`, `Kapasitas`) VALUES
('R001', 'A101', 'MK001', 101, 50),
('R002', 'A102', 'MK002', 102, 50),
('R003', 'A103', 'MK003', 103, 50),
('R004', 'A104', 'MK004', 104, 50),
('R005', 'A105', 'MK005', 105, 50),
('R006', 'A106', 'MK006', 106, 50),
('R007', 'A107', 'MK007', 107, 50),
('R008', 'A108', 'MK008', 108, 50),
('R009', 'A109', 'MK009', 109, 50),
('R010', 'A110', 'MK010', 110, 50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`Kode_dsn`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`Kd_Jadwal`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`Kd_MK`);

--
-- Indexes for table `ruangkelas`
--
ALTER TABLE `ruangkelas`
  ADD PRIMARY KEY (`Kd_Ruang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
