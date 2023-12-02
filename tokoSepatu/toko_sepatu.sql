-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 01:27 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_sepatu`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_detail_pembelian`
--

CREATE TABLE `tabel_detail_pembelian` (
  `id_detail_pembelian` int(3) NOT NULL,
  `id_pembelian` int(3) NOT NULL,
  `id_sepatu` int(3) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `harga_satuan` int(10) NOT NULL,
  `subtotal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_detail_pembelian`
--

INSERT INTO `tabel_detail_pembelian` (`id_detail_pembelian`, `id_pembelian`, `id_sepatu`, `jumlah`, `harga_satuan`, `subtotal`) VALUES
(3, 1, 1, 111, 111, 111),
(5, 1, 1, 11, 11, 11),
(6, 3, 33, 33, 33, 33);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_detail_transaksi`
--

CREATE TABLE `tabel_detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_sepatu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_satuan` int(10) NOT NULL,
  `subtotal` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_detail_transaksi`
--

INSERT INTO `tabel_detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_sepatu`, `jumlah`, `harga_satuan`, `subtotal`) VALUES
(3, 11, 11, 11, 11, 11),
(4, 1, 2, 2, 1111, 1111);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_karyawan`
--

CREATE TABLE `tabel_karyawan` (
  `id` int(11) NOT NULL,
  `nama_karyawan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_telepon` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jabatan` varchar(10) NOT NULL,
  `gaji` int(10) NOT NULL,
  `tanggal_bergabung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_karyawan`
--

INSERT INTO `tabel_karyawan` (`id`, `nama_karyawan`, `alamat`, `no_telepon`, `email`, `jabatan`, `gaji`, `tanggal_bergabung`) VALUES
(3, 'Ilham', 'Wengga', 90827112, '@mail', 'Karyawan', 1500000, '2023-11-27'),
(4, 'Ary', 'Banjarmasin', 82189112, 'ary@gmail.com', 'co', 50000000, '2023-11-29');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pelanggan`
--

CREATE TABLE `tabel_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor_telepon` int(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `tanggal_bergabung` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pelanggan`
--

INSERT INTO `tabel_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `nomor_telepon`, `email`, `tanggal_bergabung`) VALUES
(843, 'ubah', 'ubah', 212123, '212', '2023-11-13'),
(844, 'daaw', 'Banjarmasin', 8727192, 'a@email.com', '2023-11-27'),
(846, 'Ahmad', 'Banjarbaru', 31231, 'bjb@gmail.com', '2023-12-21'),
(847, 'Ary', 'Banjarmasin', 72917291, 'ary@gmail.com', '2023-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pembelian`
--

CREATE TABLE `tabel_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `total_harga_pembelian` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pembelian`
--

INSERT INTO `tabel_pembelian` (`id_pembelian`, `tanggal_pembelian`, `id_supplier`, `total_harga_pembelian`) VALUES
(4, '2023-12-01', 1, 13),
(6, '2023-12-01', 2, 2121);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_sepatu`
--

CREATE TABLE `tabel_sepatu` (
  `id_sepatu` int(11) NOT NULL,
  `nama_sepatu` varchar(50) NOT NULL,
  `merek` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` varchar(50) NOT NULL,
  `ukuran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_sepatu`
--

INSERT INTO `tabel_sepatu` (`id_sepatu`, `nama_sepatu`, `merek`, `kategori`, `harga`, `stok`, `deskripsi`, `ukuran`) VALUES
(2, 'Cowok impor', 'adidas', 'impor', 1000000, 5, 'Bagus ', 21),
(4, 'Cewek impor', 'nike', 'impor', 1000000, 4, 'bagus dan trendi', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_supplier`
--

CREATE TABLE `tabel_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `nomor_telepon` int(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nama_kontak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_supplier`
--

INSERT INTO `tabel_supplier` (`id_supplier`, `nama_supplier`, `alamat`, `nomor_telepon`, `email`, `nama_kontak`) VALUES
(1, 'asa', 'Bjb', 8091, 'asa@example.com', 'saaa'),
(2, 'ubah', 'ubah', 3131021, 'ubah', 'ubah'),
(3, 'Ary', 'Banjarmasin', 872718291, 'em@example.com', 'ryy');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `total_harga` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`id_transaksi`, `tanggal_transaksi`, `id_pelanggan`, `total_harga`) VALUES
(10, '2023-12-26', 843, '67979'),
(12, '2023-12-01', 846, '1212');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`id`, `username`, `password`) VALUES
(2, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_detail_pembelian`
--
ALTER TABLE `tabel_detail_pembelian`
  ADD PRIMARY KEY (`id_detail_pembelian`);

--
-- Indexes for table `tabel_detail_transaksi`
--
ALTER TABLE `tabel_detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indexes for table `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabel_pelanggan`
--
ALTER TABLE `tabel_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tabel_pembelian`
--
ALTER TABLE `tabel_pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_supplier` (`id_supplier`);

--
-- Indexes for table `tabel_sepatu`
--
ALTER TABLE `tabel_sepatu`
  ADD PRIMARY KEY (`id_sepatu`);

--
-- Indexes for table `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_detail_pembelian`
--
ALTER TABLE `tabel_detail_pembelian`
  MODIFY `id_detail_pembelian` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tabel_detail_transaksi`
--
ALTER TABLE `tabel_detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tabel_karyawan`
--
ALTER TABLE `tabel_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tabel_pelanggan`
--
ALTER TABLE `tabel_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=848;

--
-- AUTO_INCREMENT for table `tabel_pembelian`
--
ALTER TABLE `tabel_pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tabel_sepatu`
--
ALTER TABLE `tabel_sepatu`
  MODIFY `id_sepatu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tabel_supplier`
--
ALTER TABLE `tabel_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tabel_pembelian`
--
ALTER TABLE `tabel_pembelian`
  ADD CONSTRAINT `tabel_pembelian_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `tabel_supplier` (`id_supplier`);

--
-- Constraints for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD CONSTRAINT `fk_pelanggan` FOREIGN KEY (`id_pelanggan`) REFERENCES `tabel_pelanggan` (`id_pelanggan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
