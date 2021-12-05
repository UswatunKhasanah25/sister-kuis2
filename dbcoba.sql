-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2021 at 07:42 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbcoba`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idamin` int(11) NOT NULL,
  `nm_admin` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idamin`, `nm_admin`, `username`, `password`) VALUES
(1, 'Admin', 'jwd', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tbanggota`
--

CREATE TABLE `tbanggota` (
  `idanggota` varchar(5) CHARACTER SET latin1 NOT NULL,
  `nama` varchar(30) CHARACTER SET latin1 NOT NULL,
  `jeniskelamin` varchar(10) CHARACTER SET latin1 NOT NULL,
  `alamat` varchar(40) CHARACTER SET latin1 NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 NOT NULL,
  `foto` varchar(35) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbanggota`
--

INSERT INTO `tbanggota` (`idanggota`, `nama`, `jeniskelamin`, `alamat`, `status`, `foto`) VALUES
('AG01', 'Agus Siswanto', 'Pria', 'Jl. Semangka', 'Tidak Meminjam', '-'),
('AG02', 'Ajeng Putri', 'Wanita', 'Jl. Anggrek No 45', 'Tidak Meminjam', '-'),
('AG03', 'Budi Saputra', 'Pria', 'Jl. Kalianggis No.98 Jakarta Utara', 'Tidak Meminjam', 'AG003.png'),
('AG04', 'Uswatun Khasanah', 'Wanita', 'JL. Anggrek', 'Tidak Meminjam', 'AG04.jpg'),
('AG05', 'Yeni Ayu', 'Wanita', 'Jl. Kenanga', 'Tidak Meminjam', '-'),
('AG06', 'Yuni', 'Wanita', 'Jl. Melati', 'Tidak Meminjam', '-'),
('AG07', 'Zabrin', 'Pria', 'Jl. Gajah', 'Tidak Meminjam', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbbuku`
--

CREATE TABLE `tbbuku` (
  `idbuku` varchar(5) CHARACTER SET latin1 NOT NULL,
  `judul` varchar(30) CHARACTER SET latin1 NOT NULL,
  `pengarang` varchar(20) CHARACTER SET latin1 NOT NULL,
  `penerbit` varchar(20) CHARACTER SET latin1 NOT NULL,
  `tahun` varchar(5) CHARACTER SET latin1 NOT NULL,
  `cover` varchar(35) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbbuku`
--

INSERT INTO `tbbuku` (`idbuku`, `judul`, `pengarang`, `penerbit`, `tahun`, `cover`) VALUES
('B01', 'Rindu', 'Tere Liye', 'Tere Liye', '2018', 'B01.png'),
('B02', 'Saya Pamit', 'Ria Ricis', 'Loveable', '2020', 'B02.jpg'),
('B03', 'Cinta Brontosaurus', 'Raditya Dika', 'Gagas Media', '2006', 'B03.jpg'),
('B04', 'Marmut Merah Jambu', 'Raditya Dika', 'Bukune', '2010', 'B04.jpg'),
('B05', 'Laskar Pelangi', 'Andrea Hirata', 'Bentang Pustaka', '2005', 'B05.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbkembali`
--

CREATE TABLE `tbkembali` (
  `idkembali` varchar(5) CHARACTER SET latin1 NOT NULL,
  `idanggota` varchar(30) CHARACTER SET latin1 NOT NULL,
  `idbuku` varchar(30) CHARACTER SET latin1 NOT NULL,
  `pinjam` date NOT NULL,
  `waktu` date NOT NULL,
  `status` varchar(30) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbkembali`
--

INSERT INTO `tbkembali` (`idkembali`, `idanggota`, `idbuku`, `pinjam`, `waktu`, `status`) VALUES
('K01', 'AG02', 'B01', '2021-09-02', '2021-09-11', 'Terlambat'),
('K02', 'AG01', 'B02', '2021-09-03', '2021-09-10', 'TidakTerlambat'),
('K03', 'AG03', 'B03', '2021-09-04', '2021-09-15', 'TidakTerlambat'),
('K04', 'AG07', 'B04', '2021-09-08', '2021-09-18', 'Terlambat'),
('K05', 'AG04', 'B05', '2021-09-05', '2021-09-11', 'TidakTerlambat'),
('K06', 'AG06', 'B05', '2021-09-03', '2021-09-11', 'Terlambat');

-- --------------------------------------------------------

--
-- Table structure for table `tbpinjam`
--

CREATE TABLE `tbpinjam` (
  `idpinjam` varchar(5) CHARACTER SET latin1 NOT NULL,
  `idbuku` varchar(30) CHARACTER SET latin1 NOT NULL,
  `idanggota` varchar(30) CHARACTER SET latin1 NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbpinjam`
--

INSERT INTO `tbpinjam` (`idpinjam`, `idbuku`, `idanggota`, `tanggal`) VALUES
('P01', 'B01', 'AG02', '2021-09-02'),
('P02', 'B02', 'AG01', '2021-09-03'),
('P03', 'B03', 'AG03', '2021-09-04'),
('P04', 'B04', 'AG07', '2021-09-08'),
('P05', 'B05', 'AG04', '2021-09-05'),
('P06', 'B05', 'AG06', '2021-09-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idamin`);

--
-- Indexes for table `tbanggota`
--
ALTER TABLE `tbanggota`
  ADD PRIMARY KEY (`idanggota`);

--
-- Indexes for table `tbbuku`
--
ALTER TABLE `tbbuku`
  ADD PRIMARY KEY (`idbuku`);

--
-- Indexes for table `tbkembali`
--
ALTER TABLE `tbkembali`
  ADD PRIMARY KEY (`idkembali`);

--
-- Indexes for table `tbpinjam`
--
ALTER TABLE `tbpinjam`
  ADD PRIMARY KEY (`idpinjam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idamin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
