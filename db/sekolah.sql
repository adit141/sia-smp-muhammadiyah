/*
SQLyog Community v12.5.0 (64 bit)
MySQL - 5.5.32 : Database - sekolah
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sekolah` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `sekolah`;

/*Table structure for table `absen` */

DROP TABLE IF EXISTS `absen`;

CREATE TABLE `absen` (
  `id_absen` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_absen` date NOT NULL,
  `semester` smallint(2) NOT NULL,
  `alasan` varchar(1) NOT NULL,
  `keterangan` varchar(35) NOT NULL,
  `id_tempati` int(11) NOT NULL,
  PRIMARY KEY (`id_absen`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `absen` */

insert  into `absen`(`id_absen`,`tgl_absen`,`semester`,`alasan`,`keterangan`,`id_tempati`) values 
(8,'2015-05-02',1,'i','Acara Keluarga',16),
(9,'2013-11-06',1,'i','ijin acara keluarga',17);

/*Table structure for table `ajar` */

DROP TABLE IF EXISTS `ajar`;

CREATE TABLE `ajar` (
  `id_ajar` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelajaran` varchar(3) NOT NULL,
  `id_guru` smallint(3) NOT NULL,
  `id_thn_ajaran` varchar(3) NOT NULL,
  PRIMARY KEY (`id_ajar`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `ajar` */

insert  into `ajar`(`id_ajar`,`id_pelajaran`,`id_guru`,`id_thn_ajaran`) values 
(23,'P01',2,'T01'),
(25,'P02',2,'T01'),
(26,'P01',2,'T02'),
(27,'P02',2,'T02');

/*Table structure for table `detail_jadwal` */

DROP TABLE IF EXISTS `detail_jadwal`;

CREATE TABLE `detail_jadwal` (
  `id_jadwal` varchar(32) NOT NULL,
  `hari` varchar(6) NOT NULL,
  `jam` varchar(5) NOT NULL,
  PRIMARY KEY (`id_jadwal`,`hari`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detail_jadwal` */

insert  into `detail_jadwal`(`id_jadwal`,`hari`,`jam`) values 
('012e3e144e639a2dd1cdffc52a31d2a6','sabtu','07:00'),
('042cf5ee573ad95c8ed96fa78c318b0e','senin','07:00'),
('11abbc0cf091043af882b45e19db6c27','senin','06:00'),
('195b5ba46c7f0276fff2f4706c2f360e','jumat','11:00'),
('195b5ba46c7f0276fff2f4706c2f360e','kamis','10:00'),
('195b5ba46c7f0276fff2f4706c2f360e','rabu','09:00'),
('1c4bfc2aaaddffef51147b04cc93e0f7','kamis','11:00'),
('1c4bfc2aaaddffef51147b04cc93e0f7','rabu','08:00'),
('1f684420d0d52f47c0194bc36853fdbf','jumat','12:00'),
('1f684420d0d52f47c0194bc36853fdbf','kamis','11:00'),
('1f684420d0d52f47c0194bc36853fdbf','sabtu','10:00'),
('23eacf6e2b766100c48752cc0c07c69b','kamis','80:00'),
('23eacf6e2b766100c48752cc0c07c69b','selasa','09:00'),
('2a0e6106149fe18aae559c45ccce11a2','jumat','07:00'),
('2a0e6106149fe18aae559c45ccce11a2','kamis','08:00'),
('2a0e6106149fe18aae559c45ccce11a2','senin','07:00'),
('2cbcde34d66c055ee0176e8a8d657e8d','selasa','08:00'),
('2e8a26dcd003cff57f655da05c475b77','rabu','08:00'),
('2e8a26dcd003cff57f655da05c475b77','senin','08:00'),
('317c8b6f38dc7b29d8c161c8582ad02c','selasa','07:00'),
('317c8b6f38dc7b29d8c161c8582ad02c','senin','08:00'),
('41642554a309b5d9af426d90b51093ac','senin','06:00'),
('5dc2a4dce7527544afb896fa03d593cd','rabu','10:00'),
('5dc2a4dce7527544afb896fa03d593cd','selasa','21:00'),
('5dc2a4dce7527544afb896fa03d593cd','senin','20:00'),
('6159cb0c4521a0a3c912c78900827d6c','rabu','08:00'),
('6159cb0c4521a0a3c912c78900827d6c','senin','20:11'),
('696b60fa616a9f619efaaad6c7da968c','senin','10:00'),
('7071ae962ba7a7b3cd329c6a1a491bad','jumat','06:00'),
('7071ae962ba7a7b3cd329c6a1a491bad','rabu','08:00'),
('797b65cbd544759a55998a96026f7fff','kamis','10:00'),
('797b65cbd544759a55998a96026f7fff','rabu','09:00'),
('797b65cbd544759a55998a96026f7fff','senin','07:00'),
('7ab541466239a413e49243121bf59caf','minggu','12:00'),
('8957a6fc41ae4b77b1fde46f82a13178','senin','09:00'),
('a030c0abce012b4ef08cffe8b23976ed','rabu','09:00'),
('a2c5533bf57aee9e8d82ae2256d0e283','selasa','7:00'),
('b55a71dd1b6c5098433133d83dd9d616','kamis','08:00'),
('b55a71dd1b6c5098433133d83dd9d616','senin','11:00'),
('c333fbd3a7557fa48587a782b4ab707b','jumat','12:00'),
('c333fbd3a7557fa48587a782b4ab707b','senin','01:00'),
('cd5701ae7e4323a85682fa5495d2818e','kamis','07:00'),
('cd5701ae7e4323a85682fa5495d2818e','minggu','08:00'),
('cd5701ae7e4323a85682fa5495d2818e','senin','09:00'),
('d20de8001580f7d3aacff34af56e47d3','jumat','08:00'),
('d20de8001580f7d3aacff34af56e47d3','selasa','09:00'),
('e3798deb1c0d4c488f898411748b0aea','rabu','12:00'),
('e3798deb1c0d4c488f898411748b0aea','selasa','11:00'),
('e3798deb1c0d4c488f898411748b0aea','senin','10:00'),
('e68f49741da3fb24ed5e93a084faa574','senin','7:00');

/*Table structure for table `ekskul` */

DROP TABLE IF EXISTS `ekskul`;

CREATE TABLE `ekskul` (
  `id_ekskul` varchar(3) NOT NULL,
  `nm_ekskul` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ekskul` */

insert  into `ekskul`(`id_ekskul`,`nm_ekskul`) values 
('X01','PRAMUKA');

/*Table structure for table `guru` */

DROP TABLE IF EXISTS `guru`;

CREATE TABLE `guru` (
  `id_guru` smallint(3) NOT NULL,
  `nip` bigint(18) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `golongan` varchar(10) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `pendidikan_terakhir` varchar(10) NOT NULL,
  `email` varchar(35) NOT NULL,
  `telpon` varchar(35) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `id_user` varchar(10) NOT NULL,
  PRIMARY KEY (`id_guru`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `guru` */

insert  into `guru`(`id_guru`,`nip`,`nama`,`alamat`,`tempat_lahir`,`tgl_lahir`,`jenis_kelamin`,`agama`,`golongan`,`jabatan`,`pendidikan_terakhir`,`email`,`telpon`,`tgl_masuk`,`id_user`) values 
(0,0,'','','','0000-00-00','','','','','','','','0000-00-00',''),
(1,197403162007012011,'SITI NURHAENI, S.Ag.','Jl. Kembang Gula no 10 Tangerang','Tangerang','1960-02-03','1','islam','II/c','Wali Kelas','D3','siti.nurhaeni@gmail.com','085711111321','2010-02-01','U000000004'),
(2,196806162007012024,'SITI SAADAH, S. Pd','Jl. Thamrin no 90 Bintaro','Bandung','1968-06-16','2','islam','III/a','Guru Bidang Studi','praktisi','siti.saadah@yahoo.com','0215567890','2000-02-01',''),
(3,4212391111,'PAMELA ANISA LILHAWA, S.Si','Jalan mawar 5','Tangerang','1987-09-06','1','islam','II/b','Wali Kelas','S2','pamela.nisa@gmail.com','081123123456','2012-05-01','U000000003'),
(4,9999999999,'kepsek','jl   llll','malang','1982-05-11','2','islam','III/a','Kepala Sekolah','S3','kepsek@gmail.com','08793672374243','2010-12-30','U000000008');

/*Table structure for table `jadwal` */

DROP TABLE IF EXISTS `jadwal`;

CREATE TABLE `jadwal` (
  `id_kelas` varchar(4) NOT NULL,
  `semester` smallint(2) NOT NULL,
  `id_jadwal` varchar(32) NOT NULL,
  `id_ajar` int(11) NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jadwal` */

insert  into `jadwal`(`id_kelas`,`semester`,`id_jadwal`,`id_ajar`) values 
('KL01',1,'042cf5ee573ad95c8ed96fa78c318b0e',23),
('KL01',1,'696b60fa616a9f619efaaad6c7da968c',25),
('KL01',2,'a2c5533bf57aee9e8d82ae2256d0e283',23),
('KL01',1,'e68f49741da3fb24ed5e93a084faa574',26);

/*Table structure for table `jenis_nilai` */

DROP TABLE IF EXISTS `jenis_nilai`;

CREATE TABLE `jenis_nilai` (
  `id_jenis_nilai` varchar(3) NOT NULL,
  `des_jenis_nilai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jenis_nilai` */

insert  into `jenis_nilai`(`id_jenis_nilai`,`des_jenis_nilai`) values 
('J01','Tugas1'),
('J02','Tugas2'),
('J03','Tugas3'),
('J04','ulangan harian 1'),
('J05','ulangan harian 2'),
('J06','uts'),
('J07','uas'),
('J08','ulangan harian 3');

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `id_kelas` varchar(4) NOT NULL,
  `nm_kelas` varchar(35) NOT NULL,
  `kapasitas` smallint(2) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kelas` */

insert  into `kelas`(`id_kelas`,`nm_kelas`,`kapasitas`) values 
('KL01','Kelas 1A',45),
('KL02','Kelas 2A',45),
('KL03','Kelas 3A',45),
('KL04','Kelas 1B',45),
('KL05','Kelas 2B',45),
('KL06','Kelas 3B',45);

/*Table structure for table `kepribadian` */

DROP TABLE IF EXISTS `kepribadian`;

CREATE TABLE `kepribadian` (
  `id_kepribadian` varchar(3) NOT NULL,
  `deskripsi` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kepribadian` */

insert  into `kepribadian`(`id_kepribadian`,`deskripsi`) values 
('S01','Sikap'),
('S02','Tanggung Jawab'),
('S03','Kejujuran');

/*Table structure for table `nilai` */

DROP TABLE IF EXISTS `nilai`;

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_jadwal` int(11) NOT NULL,
  `id_jenis_nilai` varchar(3) NOT NULL,
  `id_tempati` int(11) NOT NULL,
  `nilai` int(3) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `nilai` */

insert  into `nilai`(`id_nilai`,`id_jadwal`,`id_jenis_nilai`,`id_tempati`,`nilai`,`keterangan`) values 
(12,42,'J01',16,90,''),
(14,42,'J06',16,83,''),
(15,42,'J07',16,85,''),
(16,696,'J01',16,65,'tolong belajar lebih giat'),
(17,696,'J01',17,85,''),
(21,696,'J07',16,78,''),
(22,42,'J02',16,77,''),
(23,42,'J03',16,65,''),
(24,42,'J04',16,78,''),
(25,42,'J05',16,89,''),
(26,42,'J08',16,73,''),
(28,42,'J02',17,72,''),
(29,42,'J03',17,72,''),
(30,696,'J02',17,62,''),
(31,42,'J06',17,1,''),
(32,42,'J07',17,100,''),
(33,696,'J06',17,45,''),
(34,696,'J07',17,57,''),
(35,696,'J02',16,81,''),
(36,696,'J03',16,70,''),
(37,696,'J04',16,65,''),
(38,696,'J05',16,100,''),
(39,696,'J06',16,71,''),
(40,0,'J01',18,86,''),
(41,0,'J04',18,65,''),
(42,0,'J07',18,74,'');

/*Table structure for table `nilai_ekskul` */

DROP TABLE IF EXISTS `nilai_ekskul`;

CREATE TABLE `nilai_ekskul` (
  `id_nilaiekskul` int(11) NOT NULL AUTO_INCREMENT,
  `id_ekskul` varchar(3) NOT NULL,
  `semester` smallint(1) NOT NULL,
  `nilai` int(3) NOT NULL,
  `id_tempati` int(11) NOT NULL,
  PRIMARY KEY (`id_nilaiekskul`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `nilai_ekskul` */

insert  into `nilai_ekskul`(`id_nilaiekskul`,`id_ekskul`,`semester`,`nilai`,`id_tempati`) values 
(7,'X01',1,90,16),
(8,'X01',1,84,17);

/*Table structure for table `nilai_kepribadian` */

DROP TABLE IF EXISTS `nilai_kepribadian`;

CREATE TABLE `nilai_kepribadian` (
  `id_nilaikepribadian` int(11) NOT NULL AUTO_INCREMENT,
  `id_kepribadian` varchar(3) NOT NULL,
  `semester` smallint(2) NOT NULL,
  `nilai` int(3) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `id_tempati` int(11) NOT NULL,
  PRIMARY KEY (`id_nilaikepribadian`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `nilai_kepribadian` */

insert  into `nilai_kepribadian`(`id_nilaikepribadian`,`id_kepribadian`,`semester`,`nilai`,`deskripsi`,`id_tempati`) values 
(8,'S01',1,85,'Sudah baik',16),
(9,'S02',1,75,'',16),
(10,'S01',2,90,'',16),
(11,'S02',2,95,'',16),
(12,'S01',1,90,'',18),
(13,'S02',1,85,'',18),
(14,'S01',1,70,'sering menjahili teman',17),
(15,'S02',1,90,'',17),
(16,'S03',1,90,'',17);

/*Table structure for table `pelajaran` */

DROP TABLE IF EXISTS `pelajaran`;

CREATE TABLE `pelajaran` (
  `id_pelajaran` varchar(3) NOT NULL,
  `deskripsi` varchar(35) NOT NULL,
  `kkm` smallint(2) NOT NULL,
  PRIMARY KEY (`id_pelajaran`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pelajaran` */

insert  into `pelajaran`(`id_pelajaran`,`deskripsi`,`kkm`) values 
('P01','Matematika Kls 1',70),
('P02','PKn Kls 1',65),
('P03','Agama Kls 1',65);

/*Table structure for table `pengumuman` */

DROP TABLE IF EXISTS `pengumuman`;

CREATE TABLE `pengumuman` (
  `id_pengumuman` varchar(5) NOT NULL,
  `tgl_input` date NOT NULL,
  `waktu_input` varchar(5) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `isi` text NOT NULL,
  `id_thn_ajaran` varchar(3) NOT NULL,
  `judul` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pengumuman` */

insert  into `pengumuman`(`id_pengumuman`,`tgl_input`,`waktu_input`,`id_user`,`isi`,`id_thn_ajaran`,`judul`) values 
('M0001','2015-05-18','','U000000001','<p>asdasdasdsad</p>','T01','zcz'),
('M0002','2013-11-29','','U000000001','<p>Sehubungan dengan Ujian Nasional kelas 6.</p>\r\n<p>Maka untuk murid kelas 1 s/d 5 diliburkan pada:</p>\r\n<p>Tanggal : 15 Juni 2015 s/d 21 Juni 2015</p>\r\n<p>&nbsp;</p>\r\n<p>Terima kasih</p>','T01','Libur Ujian Nasional Kelas 6');

/*Table structure for table `siswa` */

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE `siswa` (
  `nis` varchar(10) NOT NULL,
  `nis_nasional` varchar(20) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `jenis_kelamin` smallint(1) NOT NULL,
  `tempat_lahir` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `tahun_masuk` smallint(4) NOT NULL,
  `tahun_keluar` smallint(4) NOT NULL,
  `alasan_keluar` varchar(50) NOT NULL,
  `anak_ke` smallint(2) NOT NULL,
  `nama_bapak` varchar(35) NOT NULL,
  `nama_ibu` varchar(35) NOT NULL,
  `pekerjaan_bapak` varchar(35) NOT NULL,
  `pekerjaan_ibu` varchar(35) NOT NULL,
  `pendidikan_bapak` varchar(20) NOT NULL,
  `pendidikan_ibu` varchar(20) NOT NULL,
  `alamat_bapak` varchar(50) NOT NULL,
  `alamat_ibu` varchar(50) NOT NULL,
  `email_ortu` varchar(35) NOT NULL,
  `telp_bapak` varchar(35) NOT NULL,
  `telp_ibu` varchar(35) NOT NULL,
  `nama_wali` varchar(35) NOT NULL,
  `alamat_wali` varchar(50) NOT NULL,
  `telp_wali` varchar(35) NOT NULL,
  `hubungan_wali` varchar(27) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `siswa` */

insert  into `siswa`(`nis`,`nis_nasional`,`nama`,`jenis_kelamin`,`tempat_lahir`,`tanggal_lahir`,`agama`,`alamat`,`tahun_masuk`,`tahun_keluar`,`alasan_keluar`,`anak_ke`,`nama_bapak`,`nama_ibu`,`pekerjaan_bapak`,`pekerjaan_ibu`,`pendidikan_bapak`,`pendidikan_ibu`,`alamat_bapak`,`alamat_ibu`,`email_ortu`,`telp_bapak`,`telp_ibu`,`nama_wali`,`alamat_wali`,`telp_wali`,`hubungan_wali`,`id_user`) values 
('0100111009','0042296410','Dania Kartika Putri',2,'Tangerang','2005-04-12','islam','Jl. Masjid Darussalam Gang Nurul Ikhlas Jakarta',2012,0,'',1,'Samsudin','Nurhayanti','wiraswasta','ibu rumah tangga','S1','S1','Tangerang','tangerang','sindi.arista@gmail.com','02155567323','02155567323','Nurhayanti','tangerang','02155567323','Tante','U000000002'),
('1112223334','1112223331','Herman Suparman',1,'Tangerang','2008-05-06','islam','Jl. Mahoni Jakarta Raya',2011,0,'',1,'Herman','Herma','swasta','','SD','SD','Jl. Mahoni Jakarta Raya','Jl. Mahoni Jakarta Raya','ortuherman@gmail.com','','','','','','','U000000006'),
('999222882','1112223334','Indah dwi ',2,'Bogor','2008-05-13','islam','Jl bentoel no 90 G RT 5 RW 3 Bintaro',2014,0,'',1,'sulis','perti','swasta','ibu RT','SMA','SMA','Jl bentoel no 90 G RT 5 RW 3 Bintaro','Jl bentoel no 90 G RT 5 RW 3 Bintaro','ortuindah.dwi@gmail.com','087761123456','087761123456','','','','','U000000005');

/*Table structure for table `tahun_ajaran` */

DROP TABLE IF EXISTS `tahun_ajaran`;

CREATE TABLE `tahun_ajaran` (
  `id_thn_ajaran` varchar(3) NOT NULL,
  `thn_ajaran` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tahun_ajaran` */

insert  into `tahun_ajaran`(`id_thn_ajaran`,`thn_ajaran`) values 
('T01','2010-2011'),
('T02','2011-2012');

/*Table structure for table `tempati` */

DROP TABLE IF EXISTS `tempati`;

CREATE TABLE `tempati` (
  `id_tempati` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(4) NOT NULL,
  `nis` varchar(10) NOT NULL,
  `id_thn_ajaran` varchar(3) NOT NULL,
  `no_absen` smallint(2) NOT NULL,
  PRIMARY KEY (`id_tempati`,`id_kelas`,`nis`,`id_thn_ajaran`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `tempati` */

insert  into `tempati`(`id_tempati`,`id_kelas`,`nis`,`id_thn_ajaran`,`no_absen`) values 
(16,'KL01','0100111009','T01',1),
(17,'KL01','999222882','T01',2),
(18,'KL01','0100111009','T02',1);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id_user` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` smallint(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id_user`,`username`,`password`,`level`) values 
('U000000001','admin','21232f297a57a5a743894a0e4a801fc3',0);

/*Table structure for table `walikelas` */

DROP TABLE IF EXISTS `walikelas`;

CREATE TABLE `walikelas` (
  `id_kelas` varchar(4) NOT NULL,
  `id_guru` smallint(3) NOT NULL,
  `id_thn_ajaran` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `walikelas` */

insert  into `walikelas`(`id_kelas`,`id_guru`,`id_thn_ajaran`) values 
('KL02',2,'T01'),
('KL02',3,'T01'),
('KL01',1,'T01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
