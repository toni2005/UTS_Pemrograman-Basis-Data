-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 Nov 2023 pada 18.03
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` char(11) NOT NULL,
  `nm_dosen` varchar(100) DEFAULT NULL,
  `NIY` varchar(20) DEFAULT NULL,
  `NIDN` int(10) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `prodi` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nm_dosen`, `NIY`, `NIDN`, `alamat`, `no_hp`, `prodi`) VALUES
('1', 'DANANG MAHENDRA, M.Kom.', '486121415180', 614128602, 'Getas Pejaten Rt.4 Rw.2 no 50 Jati Kudus', '85727772079', 'Sistem Informasi'),
('2', 'HERU SAPUTRO, M.Kom', '483011017237', 610018302, 'Ds. Piji Rt.1 Rw.3 Dawe Kudus', '85226105156', 'Sistem Informasi'),
('3', 'Dr. AGUS SUBHAN AKBAR, S.Kom, M.Kom.', '476081815193', 618087603, 'Perum Megawon Indah Jl. Kapas RT 04 RW 04 Megawon Jati', '8122879476', 'Sistem Informasi'),
('4', 'AAN WIDIYONO, S.Pd., M.Pd.', '490100319259', 603109002, 'DK.GODANG, RT.4, RW.10, DS.GEMBONG, KEC.GEMBONG, KAB.PATI', '85712553775', 'PGSD'),
('5', 'MUHAMMAD ALIE MUZAKKI, S.Pd., M.Pd.', '487061922283', 619068704, 'Guyangan Rt 03 Rw 06 Bangsri Jepara', '82220651634', 'PGSD'),
('6', 'ANITA AFRIANINGSIH, S.Pd., M.Pd.', '489042517228', 625048902, 'Sadang Rt 03 Rw 02 Jekulo Kudus', '85740559636', 'PG-PAUD'),
('7', 'DINA AMALIA, S.Pd, M.Pd.', '495091122286', 611099501, 'Desa Undaan kidul Rt 04 Rw 05 Kec. Undaan Kab. Kudus', '82110231718', 'PG-PAUD'),
('8', 'SITI ALIYAH, S.E., M.Si.', '188110112086', 601118802, 'Menganti RT 13 RW 03 kedung jepara', '85727501748', 'Akuntansi'),
('9', 'HAYU DIAN YULISTIANTI, S.Pd, M.Pd.', '489010715181', 607018902, 'Desa Brantak Sekarjati Rt 05 Rw 01 Welahan Jepara', '85640241686', 'Pendidikan Bahasa Inggris');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` varchar(11) NOT NULL,
  `NIM` varchar(11) DEFAULT NULL,
  `nama_mahasiswa` varchar(50) DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `thn_masuk` int(4) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `NIM`, `nama_mahasiswa`, `jenis_kelamin`, `thn_masuk`, `alamat`) VALUES
('1', '19125000034', 'LUKISAMPATA AWANDA', 'L', 2019, 'MURYOLOBO RT.1 RW.2 JEPARA'),
('2', '22125000043', 'INTAN GALUH CAHYANINGTYAS', 'P', 2022, 'BAWU RT.3 RW.1 TAHUNAN JEPARA'),
('3', '22125000046', 'TONI ANDRIHARTONO', 'L', 2022, 'DS. UNDAAN TENGAH RT.5 RW.3 UNDAAN KUDUS'),
('4', '22125000048', 'MANSYUR ROKHIM', 'L', 2022, 'BUMIHARJO KELING JEPARA'),
('5', '22125000044', 'EVA MUGIYATI', 'P', 2022, 'KALIREJO UNDAAN KUDUS'),
('6', '21125000040', 'NATASYA PUTRI', 'P', 2021, 'JEPARA'),
('7', '21123000058', 'TIARA ZAHIRA', 'P', 2021, 'MENGANTI RT.1 RW.6 JEPARA'),
('8', '23124000137', 'REZA DWI MAHENDRA', 'L', 2023, 'KALIWUNGU RT.10 RW.5 KUDUS'),
('9', '23112000265', 'AHMAD FAJRIAN ARIADI', 'L', 2023, 'BLIMBINGREJO RT.2. RW.2 NALUMSARI JEPARA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_matkul` char(11) NOT NULL,
  `kode_matkul` varchar(6) DEFAULT NULL,
  `kurikulum` int(4) DEFAULT NULL,
  `nama_matkul` varchar(50) DEFAULT NULL,
  `SKS` int(1) DEFAULT NULL,
  `semester` int(2) DEFAULT NULL,
  `kelas` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_matkul`, `kode_matkul`, `kurikulum`, `nama_matkul`, `SKS`, `semester`, `kelas`) VALUES
('1', '21SIF1', 2021, 'Dasar Infrastruktur Teknologi Informasi', 3, 1, 'M'),
('2', '21SIF2', 2021, 'Dasar Sistem Informasi', 2, 1, 'M'),
('3', '21SIF3', 2021, 'Matematika Diskrit', 3, 1, 'M'),
('4', '21UN00', 2022, 'Pancasila', 2, 2, 'D'),
('5', '21SIF1', 2022, 'Data Science For Business', 2, 2, 'D'),
('6', '21UN00', 2022, 'Bahasa Inggris', 2, 2, 'D'),
('7', '21SIF3', 2023, 'Pemrograman Basis Data', 3, 3, 'AC'),
('8', '21SIF3', 2023, 'Pemrograman Terstruktur', 3, 3, 'AC'),
('9', '21UN10', 2023, 'Aswaja', 2, 3, 'UFH07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_matkul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
