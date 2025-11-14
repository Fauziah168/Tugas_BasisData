-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Nov 2025 pada 05.35
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
-- Database: `penyewaan_alat_fotografi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kamera_lensa`
--

CREATE TABLE `kamera_lensa` (
  `id_alat` int(11) NOT NULL,
  `nama_alat` varchar(100) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `harga_sewa` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `kondisi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kamera_lensa`
--

INSERT INTO `kamera_lensa` (`id_alat`, `nama_alat`, `jenis`, `harga_sewa`, `stok`, `kondisi`) VALUES
(1, 'Canon EOS 80D', 'DSLR', 120000, 3, 'Baik'),
(2, 'Canon EOS 700D', 'DSLR', 90000, 2, 'Baik'),
(3, 'Sony A7III', 'Mirrorless', 180000, 2, 'Baik'),
(4, 'Sony A6400', 'Mirrorless', 150000, 1, 'Normal'),
(5, 'Fujifilm XT30', 'Mirrorless', 140000, 2, 'Baik'),
(6, 'Fujifilm XA5', 'Mirrorless', 90000, 3, 'Baik'),
(7, 'Nikon D5600', 'DSLR', 110000, 2, 'Normal'),
(8, 'Canon 50mm f/1.8', 'Lensa Fix', 60000, 4, 'Baik'),
(9, 'Sigma 30mm f/1.4', 'Lensa Fix', 70000, 3, 'Baik'),
(10, 'Tamron 17-50mm f/2.8', 'Lensa Zoom', 80000, 2, 'Baik'),
(11, 'Sony 35mm f/1.8', 'Lensa Fix', 90000, 3, 'Baik'),
(12, 'Tripod Takara Eco-173A', 'Aksesoris', 30000, 4, 'Baik'),
(13, 'Monopod Yunteng VCT-288', 'Aksesoris', 25000, 4, 'Baik'),
(14, 'Gimbal Zhiyun Crane M2', 'Aksesoris', 80000, 1, 'Normal'),
(15, 'LED Godox SL-60W', 'Lighting', 90000, 2, 'Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_pinjam` int(11) NOT NULL,
  `id_penyewa` int(11) DEFAULT NULL,
  `id_alat` int(11) DEFAULT NULL,
  `tgl_pinjam` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_pinjam`, `id_penyewa`, `id_alat`, `tgl_pinjam`, `tgl_kembali`, `total_bayar`) VALUES
(1, 1, 3, '2025-01-02', '2025-01-04', 360000),
(2, 4, 12, '2025-01-03', '2025-01-03', 30000),
(3, 2, 1, '2025-01-05', '2025-01-06', 120000),
(4, 5, 10, '2025-01-06', '2025-01-08', 160000),
(5, 8, 7, '2025-01-08', '2025-01-09', 110000),
(6, 3, 14, '2025-01-10', '2025-01-11', 80000),
(7, 10, 5, '2025-01-12', '2025-01-14', 280000),
(8, 6, 4, '2025-01-13', '2025-01-14', 150000),
(9, 7, 9, '2025-01-15', '2025-01-16', 70000),
(10, 11, 2, '2025-01-16', '2025-01-17', 90000),
(11, 14, 6, '2025-01-17', '2025-01-19', 180000),
(12, 9, 11, '2025-01-18', '2025-01-18', 90000),
(13, 13, 8, '2025-01-19', '2025-01-21', 120000),
(14, 15, 15, '2025-01-21', '2025-01-22', 90000),
(15, 12, 3, '2025-01-22', '2025-01-24', 360000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penyewa`
--

CREATE TABLE `penyewa` (
  `id_penyewa` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `ktp` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penyewa`
--

INSERT INTO `penyewa` (`id_penyewa`, `nama`, `no_hp`, `alamat`, `ktp`) VALUES
(1, 'Andi Wijaya', '081234111001', 'Jakarta Selatan', '3201019900001'),
(2, 'Budi Putra', '081234111002', 'Bekasi', '3201029900002'),
(3, 'Rizky Alfarizi', '081234111003', 'Jakarta Timur', '3201039900003'),
(4, 'Siti Rahma', '081234111004', 'Depok', '3201049900004'),
(5, 'Laila Azzahra', '081234111005', 'Tangerang', '3201059900005'),
(6, 'Putri Amelia', '081234111006', 'Bogor', '3201069900006'),
(7, 'Aldi Saputra', '081234111007', 'Bandung', '3201079900007'),
(8, 'Citra Wulandari', '081234111008', 'Karawang', '3201089900008'),
(9, 'Farhan Nugraha', '081234111009', 'Tasikmalaya', '3201099900009'),
(10, 'Naufal Ramadhan', '081234111010', 'Jakarta Barat', '3201109900010'),
(11, 'Wawan Prasetyo', '081234111011', 'Jakarta Pusat', '3201119900011'),
(12, 'Maulana Rizki', '081234111012', 'Bogor', '3201129900012'),
(13, 'Dinda Ayu', '081234111013', 'Bekasi', '3201139900013'),
(14, 'Rara Salsabila', '081234111014', 'Depok', '3201149900014'),
(15, 'Kevin Pratama', '081234111015', 'Tangerang Selatan', '3201159900015');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kamera_lensa`
--
ALTER TABLE `kamera_lensa`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_penyewa` (`id_penyewa`),
  ADD KEY `id_alat` (`id_alat`);

--
-- Indeks untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kamera_lensa`
--
ALTER TABLE `kamera_lensa`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `penyewa`
--
ALTER TABLE `penyewa`
  MODIFY `id_penyewa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_penyewa`) REFERENCES `penyewa` (`id_penyewa`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_alat`) REFERENCES `kamera_lensa` (`id_alat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
