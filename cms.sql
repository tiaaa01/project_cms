-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2024 pada 02.24
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `craousel`
--

CREATE TABLE `craousel` (
  `id_craousel` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `craousel`
--

INSERT INTO `craousel` (`id_craousel`, `judul`, `foto`) VALUES
(7, 'aya', '2024am1216054057.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(13, 'kesehatan'),
(14, 'ilmiah'),
(15, 'pendidikan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `judul_website` varchar(200) NOT NULL,
  `profil_website` text NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `facbook` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_wa` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `instagram`, `facbook`, `email`, `alamat`, `no_wa`) VALUES
(2, 'Web CMS tiya', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `judul` varchar(60) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(30) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`) VALUES
(39, 'cara menjaga kesehatan', 'Agar terhindar dari berbagai macam penyakit, ada banyak cara menjaga kesehatan tubuh yang bisa dilakukan. Dengan menerapkan cara-cara tersebut, kualitas hidup yang sehat dapat terjaga.\r\n\r\nSebenarnya menerapkan berbagai cara menjaga kesehatan tubuh bukanlah hal yang sulit. Hanya saja, Anda harus konsisten dalam melakukannya. Hal ini perlu dibiasakan, mulai dari hal kecil seperti istirahat dengan cukup dan olahraga secara teratur.', '2024am1216075310.jpg', 'cara-menjaga-kesehatan', '13', '2024-12-16', 'tiara'),
(41, 'dampak tumbuh tanpa peran ayah', 'Ia menekankan bahwa penting untuk kedua orang tua bisa menjadi tempat curhat bagi anak. Mengedepankan komunikasi dengan anak menurutnya menjadi hal yang penting untuk meningkatkan hubungan orang tua dan anak, yang mungkin selama ini kurang diperhatikan.\r\nSelain itu, anak akan kehilangan kepercayaan diri atau menjadi sulit percaya. Anak akan memiliki pandangan berbeda kepada laki-laki dan hal tersebut dapat mempengaruhi kondisi sosialnya ketika beranjak dewasa.\r\n', '2024am1216080552.jpg', 'dampak-tumbuh-tanpa-peran-ayah', '13', '2024-12-16', 'tiara'),
(42, 'Inovasi Sistem Sekolah untuk Membentuk Generasi Indonesia', 'Di dalam pendidikan Indonesia sangat membutuhkan sentuhan materi sekolah yang dipadukan dengan pendidikan karakter dan juga budi luhur.\r\n\r\nDengan dipadukannya pendidikan karakter dalam materi pelajaran maka asas negara akan penuh dengan kearifan.\r\n\r\nHal ini karena benih-benih yang sudah tertanam dalam karakter bangsa adalah kondisi bangsanya yang penuh kearifan serta religiusitas masyarakatnya sangat tinggi.\r\n\r\nDengan adanya benih-benih karakter yang baik, inilah  secara tidak langsung membuktikan telah adanya benih karakter yang tertanam pada diri individu masyarakat Indonesia, begitu pula dengan siswa-siswi Indonesia.\r\n\r\nInilah yang menjadi ciri khas siswa Indonesia dengan siswa dari bangsa lainnya. Wawasan intelektual yang dipadukan dengan budi pekerti seharusnya dapat menjadi modal tambah bagi para pelajar Indonesia untuk lebih unggul.', '2024am1216080947.jpg', 'Inovasi-Sistem-Sekolah-untuk-Membentuk-Generasi-Indonesia', '14', '2024-12-16', 'tiara'),
(43, 'pengaruh globalisasi bagi kehidupan', 'Di dalam pendidikan Indonesia sangat membutuhkan sentuhan materi sekolah yang dipadukan dengan pendidikan karakter dan juga budi luhur.\r\n\r\nDengan dipadukannya pendidikan karakter dalam materi pelajaran maka asas negara akan penuh dengan kearifan.\r\n\r\nHal ini karena benih-benih yang sudah tertanam dalam karakter bangsa adalah kondisi bangsanya yang penuh kearifan serta religiusitas masyarakatnya sangat tinggi.\r\n\r\nDengan adanya benih-benih karakter yang baik, inilah  secara tidak langsung membuktikan telah adanya benih karakter yang tertanam pada diri individu masyarakat Indonesia, begitu pula dengan siswa-siswi Indonesia.\r\n\r\nInilah yang menjadi ciri khas siswa Indonesia dengan siswa dari bangsa lainnya. Wawasan intelektual yang dipadukan dengan budi pekerti seharusnya dapat menjadi modal tambah bagi para pelajar Indonesia untuk lebih unggul.', '2024am1216083500.jpg', 'pengaruh-globalisasi-bagi-kehidupan', '14', '2024-12-16', 'tiara'),
(44, 'benarkah minum teh sambil makan bisa picu anemia ', 'Hal ini dikarenakan di dalam teh terdapat kandungan zat tanin yang bisa mencegah penyerapan zat besi. Zat tanin tersebut nantinya akan \'berkompetisi\' dengan zat besi \"Jadi dia akan berkompetisi dengan zat besi, harusnya zat besi yang masuk itu diikat kemudian jadi hemoglobin.Tapi karena ada zat tanin, sehingga zat besi yang masuk lewat asupan akan diikat dengan tanin,\" katanya dikutip dari 20detik, Senin (16/12/2024). Imbasnya, zat besi yang sering diikat oleh zat tanin yang ada di dalam teh, akan membuat hemoglobin seseorang semakin rendah yang bisa memicu anemia', '2024am1216101022.jpg', 'benarkah-minum-teh-sambil-makan-bisa-picu-anemia-', '13', '2024-12-16', 'tiara'),
(45, 'Bagaimana Menghasilkan Uang Bagi Para Pelajar', 'Pelajar harusnya jeli terhadap apa yang sekarang ada didepan mata mereka, mereka bisa menghasilkan uang tambahan untuk jajan mereka dengan berbagai peluang disosial media, seperti jualan online telah banyak sekali tersedia laman yang dapat kita gunakan untuk berjualan.\r\n\r\nYang bisa memasak hanya dengan modal foto hasil masakan mereka bisa menjualnya secara online dan yang lebih berpeluang lagi berjualan kuota internet karena para pelajar sangat membutuhkan kuota, dan masih banyak lagi yang bisa diterapkan untuk membangun usaha dengan modal smartphone', '2024am1217052140.jpg', 'Bagaimana-Menghasilkan-Uang-Bagi-Para-Pelajar', '14', '2024-12-17', 'tiara'),
(46, 'Pentingnya Pendidikan bagi Masa Depan ', 'hendaknya kita mulai menyadari betapa pentingnya pendidikan tersebut bagi kelangsungan masa depan kita. Dan kita sebagai manusia terpelajar hendaknya mau memahami betul hal tersebut. Adapun pengertian, fungsi, dan macam-macam pendidikan itu sendiri.', '2024am1217053856.jpg', 'Pentingnya-Pendidikan-bagi-Masa-Depan-', '15', '2024-12-17', 'tiara'),
(48, 'bagaimana nasib sistem dipendidikan indonesia?', 'Sebenarnya, Indonesia bukanlah negara yang kekurangan motivasi untuk belajar. Mulai dari pahlawan bangsa yang berasal dari Sabang hingga Merauke, semuanya memiliki semangat tinggi dalam meraih dan mengenyam pendidikan setinggi-tingginya. Namun, mengapa peringkat pendidikan (dan hal-hal yang berkaitan dengan itu) kita berada dalam kondisi yang memprihatinkan dan menyedihkan?', '2024am1217054505.jpg', 'bagaimana-nasib-sistem-dipendidikan-indonesia?', '15', '2024-12-17', 'tiara'),
(49, 'Dampak Pandemi pada Pendidikan', 'Dampak pandemi pada berbagai tingkatan pendidikan, dari prasekolah hingga perguruan tinggi, sangat beragam. Penutupan sekolah dan transisi ke pembelajaran daring telah menimbulkan tantangan bagi siswa, guru, dan institusi pendidikan. Namun, pandemi juga telah mempercepat adopsi teknologi dan inovasi dalam pendidikan, membuka peluang untuk meningkatkan sistem pendidikan di masa depan.', '2024am1217054929.jpg', 'Dampak-Pandemi-pada-Pendidikan', '15', '2024-12-17', 'tiara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `level`) VALUES
(19, 'eka', '79ee82b17dfb837b1be94a6827fa395a', 'eka', 'Admin'),
(20, 'tiara', '4600bb8b66b6a2af771fbb0566732196', 'tiara', 'Admin'),
(21, 'sasa', 'f45731e3d39a1b2330bbf93e9b3de59e', 'sasa', 'Kontributor'),
(22, 'tia', '202cb962ac59075b964b07152d234b70', 'tia', 'kontributor'),
(23, 'tiara2', '81dc9bdb52d04dc20036dbd8313ed055', 'tiara2', 'kontributor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `craousel`
--
ALTER TABLE `craousel`
  ADD PRIMARY KEY (`id_craousel`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `craousel`
--
ALTER TABLE `craousel`
  MODIFY `id_craousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
