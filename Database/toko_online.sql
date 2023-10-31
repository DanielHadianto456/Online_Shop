-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2023 at 04:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian_game`
--

CREATE TABLE `detail_pembelian_game` (
  `id_detail_pembelian_game` int(11) NOT NULL,
  `id_pembelian_game` int(11) NOT NULL,
  `id_game` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pembelian_game`
--

INSERT INTO `detail_pembelian_game` (`id_detail_pembelian_game`, `id_pembelian_game`, `id_game`, `id_user`, `qty`) VALUES
(1, 1, 3, 1, 1),
(2, 2, 4, 2, 1),
(3, 3, 4, 1, 30),
(4, 4, 4, 2, 1),
(5, 5, 2, 1, 1),
(6, 6, 5, 2, 1),
(7, 7, 4, 3, 1),
(8, 8, 7, 3, 1),
(9, 9, 2, 3, 30),
(10, 10, 3, 2, 1),
(11, 10, 1, 2, 1),
(12, 11, 2, 2, 3),
(13, 11, 3, 2, 1),
(14, 12, 3, 1, 1000),
(15, 12, 6, 1, 100),
(16, 13, 3, 7, 1),
(17, 14, 2, 8, 20),
(18, 15, 3, 8, 5),
(19, 15, 5, 8, 10),
(20, 16, 3, 11, 1),
(21, 17, 5, 15, 100000),
(23, 19, 3, 16, 1),
(24, 20, 3, 17, 1),
(26, 21, 2, 16, 1),
(28, 23, 1, 16, 1),
(30, 25, 2, 16, 1),
(31, 26, 7, 16, 1),
(33, 26, 6, 16, 1),
(34, 27, 4, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id_game` int(11) NOT NULL,
  `nama_game` varchar(100) NOT NULL,
  `developer` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_release` date NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `harga` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id_game`, `nama_game`, `developer`, `deskripsi`, `foto`, `tanggal_release`, `publisher`, `harga`) VALUES
(1, 'Cities Skylines', 'Colosal Order Ldt.', 'Cities: Skylines is a modern take on the classic city simulation. The game introduces new game play elements to realize the thrill and hardships of creating and maintaining a real city whilst expanding on some well-established tropes of the city building experience.', 'cities.jpg', '2015-03-10', 'Paradox Interactive', 259999),
(2, 'DOOM Eternal', 'id Software', 'Hell’s armies have invaded Earth. Become the Slayer in an epic single-player campaign to conquer demons across dimensions and stop the final destruction of humanity. The only thing they fear... is you.', 'doom.jpg', '2020-03-20', 'Bethesda Softworks', 329999),
(3, 'Fallout 4', 'Bethesda Game Studios', 'Bethesda Game Studios, the award-winning creators of Fallout 3 and The Elder Scrolls V: Skyrim, welcome you to the world of Fallout 4 – their most ambitious game ever, and the next generation of open-world gaming.', 'fallout4.jpg', '2015-11-10', 'Bethesda Softworks', 266000),
(4, 'Call of Duty®: Modern Warfare®', 'Infinity Ward', 'Experience a visceral Campaign or assemble your team in the ultimate online playground with multiple Special Ops challenges and a mix of Multiplayer maps and modes.', 'mw19.jpg', '2019-10-25', 'Activision', 812000),
(5, 'Team Fortress 2', 'Valve', 'Nine distinct classes provide a broad range of tactical abilities and personalities. Constantly updated with new game modes, maps, equipment and, most importantly, hats!', 'tf2.jpg', '2013-10-07', 'Valve', 0),
(6, 'The Elder Scrolls V: Skyrim Special Edition', 'Bethesda Game Studios', 'Winner of more than 200 Game of the Year Awards, Skyrim Special Edition brings the epic fantasy to life in stunning detail. The Special Edition includes the critically acclaimed game and add-ons with all-new features like remastered art and effects, volumetric god rays, dynamic depth of field, screen-space reflections, and more.', 'skyrim.jpg', '2016-10-28', 'Bethesda Softworks', 329999),
(7, 'Sekiro: Shadows Die Twice', 'FromSoftware ', 'Game of the Year - The Game Awards 2019 Best Action Game of 2019 - IGN Carve your own clever path to vengeance in the award winning adventure from developer FromSoftware, creators of Bloodborne and the Dark Souls series. Take Revenge. Restore Your Honor. Kill Ingeniously.', 'sekiro.jpg', '2019-03-22', 'Activision', 729000);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_game`
--

CREATE TABLE `pembelian_game` (
  `id_pembelian_game` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_beli` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian_game`
--

INSERT INTO `pembelian_game` (`id_pembelian_game`, `id_user`, `tanggal_beli`) VALUES
(1, 1, '2023-10-16'),
(2, 2, '2023-10-16'),
(3, 1, '2023-10-16'),
(4, 2, '2023-10-16'),
(5, 1, '2023-10-16'),
(6, 2, '2023-10-16'),
(7, 3, '2023-10-16'),
(8, 3, '2023-10-16'),
(9, 3, '2023-10-16'),
(10, 2, '2023-10-16'),
(11, 2, '2023-10-16'),
(12, 1, '2023-10-16'),
(13, 7, '2023-10-16'),
(14, 8, '2023-10-16'),
(15, 8, '2023-10-16'),
(16, 11, '2023-10-17'),
(17, 15, '2023-10-18'),
(18, 16, '2023-10-19'),
(19, 16, '2023-10-19'),
(20, 17, '2023-10-19'),
(21, 16, '2023-10-19'),
(22, 16, '2023-10-19'),
(23, 16, '2023-10-19'),
(24, 16, '2023-10-19'),
(25, 16, '2023-10-19'),
(26, 16, '2023-10-19'),
(27, 16, '2023-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `penjual` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_beli`
--

CREATE TABLE `status_beli` (
  `id_status_beli` int(11) NOT NULL,
  `id_pembelian_game` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_beli`
--

INSERT INTO `status_beli` (`id_status_beli`, `id_pembelian_game`, `tanggal_pembelian`) VALUES
(1, 1, '2023-10-16'),
(2, 3, '2023-10-16'),
(3, 5, '2023-10-16'),
(4, 12, '2023-10-16'),
(5, 13, '2023-10-16'),
(6, 14, '2023-10-16'),
(7, 15, '2023-10-16'),
(8, 16, '2023-10-17'),
(9, 17, '2023-10-18'),
(13, 21, '2023-10-19'),
(14, 19, '2023-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `level` enum('pelanggan','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_pelanggan`, `tanggal_lahir`, `gender`, `alamat`, `username`, `pass`, `level`) VALUES
(1, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(2, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(3, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(5, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(7, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(8, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(9, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(10, 'brengCuy', '2023-10-06', 'L', 'Tulungagung', 'NonAdmin5', 'lol', 'pelanggan'),
(11, 'brey', '2023-10-27', 'L', 'Tulungagung', 'idk', 'idk', 'pelanggan'),
(15, 'Joko', '2023-10-20', 'L', 'Pasuruan', 'nein', '9', 'admin'),
(16, 'Daniel', '2023-10-26', 'L', 'Tulungagung', 'ADMIN', '123', 'admin'),
(17, 'Tes2', '2023-10-18', 'P', 'eee', 'tes2', '123', 'pelanggan'),
(18, 'tes3', '2023-10-18', 'L', 'ddd', 'tes3', '123', 'pelanggan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_pembelian_game`
--
ALTER TABLE `detail_pembelian_game`
  ADD PRIMARY KEY (`id_detail_pembelian_game`),
  ADD KEY `id_pembelian_game` (`id_pembelian_game`,`id_game`),
  ADD KEY `id_game` (`id_game`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id_game`);

--
-- Indexes for table `pembelian_game`
--
ALTER TABLE `pembelian_game`
  ADD PRIMARY KEY (`id_pembelian_game`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `status_beli`
--
ALTER TABLE `status_beli`
  ADD PRIMARY KEY (`id_status_beli`),
  ADD KEY `id_pembelian_game` (`id_pembelian_game`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_pembelian_game`
--
ALTER TABLE `detail_pembelian_game`
  MODIFY `id_detail_pembelian_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembelian_game`
--
ALTER TABLE `pembelian_game`
  MODIFY `id_pembelian_game` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `status_beli`
--
ALTER TABLE `status_beli`
  MODIFY `id_status_beli` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_pembelian_game`
--
ALTER TABLE `detail_pembelian_game`
  ADD CONSTRAINT `detail_pembelian_game_ibfk_1` FOREIGN KEY (`id_pembelian_game`) REFERENCES `pembelian_game` (`id_pembelian_game`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pembelian_game_ibfk_2` FOREIGN KEY (`id_game`) REFERENCES `game` (`id_game`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_pembelian_game_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `pembelian_game` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembelian_game`
--
ALTER TABLE `pembelian_game`
  ADD CONSTRAINT `pembelian_game_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `status_beli`
--
ALTER TABLE `status_beli`
  ADD CONSTRAINT `status_beli_ibfk_1` FOREIGN KEY (`id_pembelian_game`) REFERENCES `detail_pembelian_game` (`id_pembelian_game`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
