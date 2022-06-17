-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220616.7a6bd9eb57
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2022 at 07:08 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_eventic`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `telp_admin` varchar(20) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `admin_alamat` text NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_admin`, `username`, `telp_admin`, `email_admin`, `admin_alamat`, `password`) VALUES
(1, 'Admin', 'admin', '082180254563', 'admin.eventics@eventics.com', 'Jl.Pluto, Kec. Kedaton,Kota Bandar Lampung', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategory`
--

CREATE TABLE `tb_kategory` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kategory`
--

INSERT INTO `tb_kategory` (`id_category`, `name_category`) VALUES
(3, 'Marvel'),
(4, 'Disney'),
(5, 'Events Segera Di Lampung');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `id_product` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name_product` varchar(100) NOT NULL,
  `price_product` int(11) NOT NULL,
  `desc_product` text NOT NULL,
  `image_product` varchar(100) NOT NULL,
  `status_product` tinyint(1) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`id_product`, `id_category`, `name_product`, `price_product`, `desc_product`, `image_product`, `status_product`, `data_created`) VALUES
(2, 3, 'Ticket Dr Strange', 70000, '<p>abcd</p>\r\n', 'produk1655478343.jpg', 1, '2022-06-17 15:05:43'),
(3, 4, 'Frozen II', 75000, '<p><strong>Frozen</strong>&nbsp;adalah&nbsp;<strong>film</strong>&nbsp;animasi musikal dari Disney yang mengikuti formula &#39;lama&#39;. Ada istana, ada putri, ada orang tua yang meninggal, ada pangeran, ada yang jahat, ada kekuatan magical, dan ada musik!</p>\r\n', 'produk1655479695.jpg', 1, '2022-06-17 15:25:50'),
(4, 3, 'Thor Love And Thunder', 80000, '<p><strong>Film</strong>&nbsp;tersebut melihat&nbsp;<strong>Thor</strong>, putra mahkota Asgard, dibuang ke Bumi dan melepaskan kekuasaannya setelah dia menyalakan kembali sebuah perang yang tidak aktif. Sebagai saudaranya, Loki, plot untuk merebut takhta untuk dirinya sendiri,&nbsp;<strong>Thor</strong>&nbsp;harus membuktikan dirinya layak dan merebut kembali palu Mjolnir.</p>\r\n', 'produk1655480225.jpg', 1, '2022-06-17 15:37:05'),
(5, 3, 'Iron Man', 70000, '<p><strong>Iron Man</strong> itu menceritakan tentang apa?<br />\r\nImage result for deskripsi film marvel <strong>iron man</strong><br />\r\nDalam film ini, setelah Tony Stark, seorang insinyur dan industriawan terkemuka, melarikan diri dari aksi penyanderaan oleh kelompok teroris, ia membangun baju besi mekanis dan menjadi pahlawan super <strong>&quot;Iron Man&quot;</strong>.</p>\r\n', 'produk1655480578.jpg', 1, '2022-06-17 15:42:58'),
(6, 3, 'Spiderman', 85000, '<p>Serial&nbsp;<strong>Spider</strong>-<strong>Man menceritakan</strong>&nbsp;Peter Parker, siswa SMA di balik identitas&nbsp;<strong>Spider</strong>-<strong>Man</strong>, seorang remaja yang di gambarkan masih labil dan penuh obsesi, korban bully dan di selimuti kesepian karena dalam kisah origin nya, Peter Parker adalah seorang yatim piatu.&quot; sehingga pembaca muda bisa terhubung.</p>\r\n', 'produk1655480787.jpg', 1, '2022-06-17 15:46:27'),
(7, 3, 'Venom', 65000, '<p><strong>Film Venom</strong>: Let There Be Carnage ini bercerita tentang&nbsp;<strong>Venom</strong>&nbsp;yang kembali beraksi melawan pembunuh berantai. Eddie yang masih merasa kesulitan beradaptasi dengan kehidupan barunya sebagai manusia setengah alien&nbsp;<strong>Venom</strong>. Kali ini Eddie malah harus dihadapkan dengan pembunuh berantai bernama Cletus Kasady.</p>\r\n', 'produk1655480934.jpg', 1, '2022-06-17 15:48:54'),
(8, 3, 'Captain America', 70000, '<p><strong>Captain America</strong>: The First Avenger mengambil setting waktu pada tahun 1942 pada masa perang dunia II. Kala itu, diceritakan seorang pria dari Brooklyn bernama Steve Rogers memiliki mimpi untuk bergabung dengan pasukan militer Amerika Serikat untuk ikut berperang.</p>\r\n', 'produk1655481072.jpg', 1, '2022-06-17 15:51:12'),
(9, 3, 'Fantastic Four', 70000, '<p>&quot;<strong>Fantastic Four</strong>&quot; dikenal sebagai pahlawan super dari komik&nbsp;<strong>Marvel</strong>&nbsp;asli yang dibuat oleh Stan Lee dan Jack Kirby. &quot;<strong>Fantastic Four</strong>&quot; adalah bagian dari pahlawan super&nbsp;<strong>Marvel</strong>&nbsp;20th Century Fox sebelum akuisisi Disney pada tahun 2019.</p>\r\n', 'produk1655482062.jpg', 1, '2022-06-17 16:07:42'),
(10, 3, 'Hulk', 75000, '<p><strong>Film Hulk</strong>&nbsp;bertemakan tentang pahlawan super, cerita&nbsp;<strong>film</strong>&nbsp;didasarkan pada tokoh fiksi komik Marvel. Sinopsis&nbsp;<strong>Film</strong>: Bruce Banner adalah seorang ilmuwan peneliti di laboratorium Berkeley, California. Ia meneliti penggunaan nanomed dan radiasi gamma untuk menyembuhkan kanker dan penyakit lainnya.</p>\r\n', 'produk1655482149.jpg', 1, '2022-06-17 16:09:09'),
(11, 4, 'The Lion King', 45000, '<p><strong>Film The Lion King</strong>&nbsp;berkisah tentang seekor anak singa bernama Simba yang terusir dari tanah kelahirannya setelah ayahnya dibunuh pamannya demi takhta.</p>\r\n', 'produk1655482317.jpg', 1, '2022-06-17 16:11:57'),
(12, 4, 'The Little Mermaid', 50000, '<p><strong>The Little Mermaid (1989)</strong> menceritakan tentang seorang putri duyung bernama Ariel membuat tawaran agar dapat menjadi manusia dan memenangkan cinta seorang pangeran. Pada 2019, Disney mengonfirmasi pembuatan live action dari <strong>The Little Mermaid.</strong></p>\r\n', 'produk1655482580.jpeg', 1, '2022-06-17 16:16:20'),
(13, 4, 'Beauty and the Beast', 45000, '<p><strong>Film</strong>&nbsp;ini merupakan&nbsp;<strong>film</strong>&nbsp;ke-30 dalam rangkaian&nbsp;<strong>film</strong>&nbsp;animasi klasik Walt&nbsp;<strong>Disney</strong>.&nbsp;<strong>Film</strong>&nbsp;ini merupakan adaptasi dari cerita&nbsp;<strong>Beauty and the Beast</strong>, yang berkisah tentang cinta seorang gadis cantik bernama&nbsp;<strong>Belle</strong>&nbsp;dapat mengubah&nbsp;<strong>Beast</strong>&nbsp;menjadi manusia.</p>\r\n', 'produk1655482705.jpg', 1, '2022-06-17 16:18:25'),
(14, 4, ' Aladdin', 50000, '<p><strong>Aladdin</strong>&nbsp;adalah seorang pemuda miskin yang menghabiskan waktunya dengan mencuri makanan di pasar yang berada di Kota Agrabah. Suatu hari, dia bertemu Putri Jasmine, anak perempuan Sultan di negeri itu, dan jatuh cinta padanya. Putri Jasmine dipaksa menikah oleh ayahnya.</p>\r\n', 'produk1655482830.jpg', 1, '2022-06-17 16:20:30'),
(15, 4, 'Cinderella', 60000, '<p><strong>Cinderella</strong>&nbsp;adalah sebuah&nbsp;<strong>film</strong>&nbsp;animasi produksi Walt&nbsp;<strong>Disney</strong>&nbsp;dan dirilis ke teater oleh Buena Vista Pictures pada tanggal 14 Februari&nbsp;<strong>1950</strong>.&nbsp;<strong>Film</strong>&nbsp;ini disutradai oleh Clyde Geronimi, Hamilton Luske, dan Wilfred Jackson. Kisah&nbsp;<strong>film</strong>&nbsp;ini didasarkan dari cerita rakyat&nbsp;<strong>Cinderella</strong>&nbsp;oleh Charles Perrault.</p>\r\n', 'produk1655482945.jpg', 1, '2022-06-17 16:22:25'),
(16, 4, 'Pinocchio', 35000, '<p>Sinopsis&nbsp;<strong>film pinocchio</strong>&nbsp;menceritakan suatu tempat benama tuscany, hiduplah seorang tukang kayu bernama geppetto yang membuat sebuah boneka kayu bernama&nbsp;<strong>pinocchio</strong>. Geppetto membuat permohonan kepada bintang, agar&nbsp;<strong>pinocchio</strong>&nbsp;bisa menjadi seorang anak laki-laki sungguhan.</p>\r\n', 'produk1655483083.jpeg', 1, '2022-06-17 16:24:43'),
(17, 4, 'The Hunchback of Notre Dame', 45000, '<p>Kisahnya menceritakan kehidupan seorang penari Gypsi yang bernama Esmeralda dengan Claude Frollo yang berkuasa dan berhasrat memilikinya,&nbsp;Quasimodo&nbsp;seorang penjaga lonceng yang bekerja sebagai penabuh lonceng yang mengaguminya, dan Phoebus seorang tentara berpangkat kapten yang juga berharap memilikinya.</p>\r\n', 'produk1655483343.jpg', 1, '2022-06-17 16:29:03'),
(18, 5, 'Bazar Way Halim', 15000, '<p>Datanglah ke bazar Tahunan di Way Halim&nbsp;</p>\r\n', 'produk1655483550.jpg', 1, '2022-06-17 16:32:30'),
(19, 5, 'Konser Pekor', 25000, '<p>Datanglah ke Konser di&nbsp;wilayah Pekor</p>\r\n', 'produk1655483679.jpg', 1, '2022-06-17 16:34:39'),
(20, 5, 'Fashion Show Adipura', 90000, '<p>Datanglah ke Fashion Show di Tugu Adipura</p>\r\n', 'produk1655483871.jpg', 1, '2022-06-17 16:37:51'),
(21, 5, 'Pentas Seni Gor Way Handak', 60000, '<p>Datanglah ke tampilan Seni Gor Way Handak</p>\r\n', 'produk1655484072.jpg', 1, '2022-06-17 16:41:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_kategory`
--
ALTER TABLE `tb_kategory`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_category` (`id_category`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_kategory`
--
ALTER TABLE `tb_kategory`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



