-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 172.28.108.13    Database: KA_develop
-- ------------------------------------------------------
-- Server version	5.5.5-10.6.11-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DATA_KLAIM`
--

DROP TABLE IF EXISTS `DATA_KLAIM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATA_KLAIM` (
  `KODE_KLAIM` longtext DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `EXT_PEGAWAI`
--

DROP TABLE IF EXISTS `EXT_PEGAWAI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EXT_PEGAWAI` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NIK` varchar(100) DEFAULT NULL,
  `NAMA_PEGAWAI` varchar(1000) DEFAULT NULL,
  `NAMA_JOBTITLE` varchar(1000) DEFAULT NULL,
  `UNIT_KANTOR` varchar(10) DEFAULT NULL,
  `KELAS` varchar(100) DEFAULT NULL,
  `JENIS` varchar(100) DEFAULT NULL,
  `POSITION_LEVEL` int(11) DEFAULT NULL,
  `KETERANGAN` varchar(1000) DEFAULT NULL,
  `TGL_REKAM` datetime NOT NULL DEFAULT current_timestamp(),
  `PETUGAS_REKAM` varchar(100) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HCIS_JABATAN`
--

DROP TABLE IF EXISTS `HCIS_JABATAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HCIS_JABATAN` (
  `position_id` varchar(100) NOT NULL,
  `unit_kantor_induk` varchar(100) DEFAULT NULL,
  `nama_jabatan` varchar(200) DEFAULT NULL,
  `position_level_rank` varchar(100) DEFAULT NULL,
  `worklocation_code` varchar(100) DEFAULT NULL,
  `struktural` varchar(100) DEFAULT NULL,
  `position_code` varchar(100) DEFAULT NULL,
  `nama_jabatan2` varchar(200) DEFAULT NULL,
  `unit_kantor` varchar(100) DEFAULT NULL,
  `nama_kantor` varchar(100) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `position_level` varchar(100) DEFAULT NULL,
  `jobstatuscode` varchar(100) DEFAULT NULL,
  `pos_id_active` varchar(100) DEFAULT NULL,
  `position_active` varchar(100) DEFAULT NULL,
  `position_flag` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HCIS_PEGAWAI`
--

DROP TABLE IF EXISTS `HCIS_PEGAWAI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HCIS_PEGAWAI` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(20) DEFAULT NULL,
  `nik` varchar(100) DEFAULT NULL,
  `nama_jobtitle_2` varchar(200) DEFAULT NULL,
  `jabatan_definitif` varchar(1000) DEFAULT NULL,
  `unit_kantor_induk` varchar(200) DEFAULT NULL,
  `nama_jobtitle` varchar(200) DEFAULT NULL,
  `position_level_rank` varchar(100) DEFAULT NULL,
  `struktural` varchar(100) DEFAULT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `tgl_lahir` datetime DEFAULT NULL,
  `mpp` datetime DEFAULT NULL,
  `mpp_done` datetime DEFAULT NULL,
  `job_title` varchar(200) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `golongan` varchar(10) DEFAULT NULL,
  `penempatan_kembali` datetime DEFAULT NULL,
  `tmt_pengangkatan` datetime DEFAULT NULL,
  `tmt_grade_terakhir` datetime DEFAULT NULL,
  `tmt_grade_terakhir2` datetime DEFAULT NULL,
  `tmt_mutasi_terakhir` datetime DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `unit_kantor` varchar(200) DEFAULT NULL,
  `bidang` varchar(100) DEFAULT NULL,
  `status_aktif` varchar(50) DEFAULT NULL,
  `nama_unit` varchar(100) DEFAULT NULL,
  `nama_jobtitle2` varchar(200) DEFAULT NULL,
  `nama_bidang` varchar(200) DEFAULT NULL,
  `position_name` varchar(200) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `position_level` varchar(100) DEFAULT NULL,
  `jobstatuscode` varchar(50) DEFAULT NULL,
  `employment_code` varchar(50) DEFAULT NULL,
  `employment_status` varchar(50) DEFAULT NULL,
  `position_active` varchar(10) DEFAULT NULL,
  `position_flag` varchar(10) DEFAULT NULL,
  `nama_jabatan_spv` varchar(200) DEFAULT NULL,
  `nama_jabatan_utama` varchar(200) DEFAULT NULL,
  `position_id` varchar(50) DEFAULT NULL,
  `spv` varchar(50) DEFAULT NULL,
  `mgr` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nama_jobtitle_qr` varchar(200) DEFAULT NULL,
  `KODE_WILAYAH` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HCIS_PEGAWAI_NONAKTIF`
--

DROP TABLE IF EXISTS `HCIS_PEGAWAI_NONAKTIF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HCIS_PEGAWAI_NONAKTIF` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(20) DEFAULT NULL,
  `nik` varchar(100) DEFAULT NULL,
  `nama_jobtitle_2` varchar(200) DEFAULT NULL,
  `jabatan_definitif` varchar(200) DEFAULT NULL,
  `unit_kantor_induk` varchar(200) DEFAULT NULL,
  `nama_jobtitle` varchar(200) DEFAULT NULL,
  `position_level_rank` varchar(100) DEFAULT NULL,
  `struktural` varchar(100) DEFAULT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `tgl_lahir` datetime DEFAULT NULL,
  `mpp` datetime DEFAULT NULL,
  `mpp_done` datetime DEFAULT NULL,
  `job_title` varchar(200) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `golongan` varchar(10) DEFAULT NULL,
  `penempatan_kembali` datetime DEFAULT NULL,
  `tmt_pengangkatan` datetime DEFAULT NULL,
  `tmt_grade_terakhir` datetime DEFAULT NULL,
  `tmt_grade_terakhir2` datetime DEFAULT NULL,
  `tmt_mutasi_terakhir` datetime DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `unit_kantor` varchar(200) DEFAULT NULL,
  `bidang` varchar(100) DEFAULT NULL,
  `status_aktif` varchar(50) DEFAULT NULL,
  `nama_unit` varchar(100) DEFAULT NULL,
  `nama_jobtitle2` varchar(200) DEFAULT NULL,
  `nama_bidang` varchar(200) DEFAULT NULL,
  `position_name` varchar(200) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `position_level` varchar(100) DEFAULT NULL,
  `jobstatuscode` varchar(50) DEFAULT NULL,
  `employment_code` varchar(50) DEFAULT NULL,
  `employment_status` varchar(50) DEFAULT NULL,
  `position_active` varchar(10) DEFAULT NULL,
  `position_flag` varchar(10) DEFAULT NULL,
  `nama_jabatan_spv` varchar(200) DEFAULT NULL,
  `nama_jabatan_utama` varchar(200) DEFAULT NULL,
  `position_id` varchar(50) DEFAULT NULL,
  `spv` varchar(50) DEFAULT NULL,
  `mgr` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nama_jobtitle_qr` varchar(200) DEFAULT NULL,
  `KODE_WILAYAH` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HCIS_SYCN_LOG`
--

DROP TABLE IF EXISTS `HCIS_SYCN_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `HCIS_SYCN_LOG` (
  `NO` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SYCN` varchar(50) NOT NULL,
  `REQUEST_SOURCE` varchar(10) DEFAULT NULL,
  `UNIT_KANTOR` varchar(5) DEFAULT NULL,
  `JML_ROW_DELETE_PEGAWAI` int(11) DEFAULT NULL,
  `JML_ROW_DELETE_JABATAN` int(11) DEFAULT NULL,
  `JML_ROW_INSERT_PEGAWAI` int(11) DEFAULT NULL,
  `JML_ROW_INSERT_JABATAN` int(11) DEFAULT NULL,
  `ST_PROSES` varchar(5) DEFAULT NULL,
  `SYCN_START` datetime DEFAULT NULL,
  `SYCN_END` datetime DEFAULT NULL,
  `KETERANGAN` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`NO`),
  UNIQUE KEY `UNIQUE` (`ID_SYCN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_API_KEYS`
--

DROP TABLE IF EXISTS `MS_API_KEYS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_API_KEYS` (
  `KEY_ID` varchar(150) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ROLE` varchar(255) DEFAULT NULL,
  `ORIGINS` longtext DEFAULT NULL,
  `EXPIRE_DATE` datetime DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(255) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`KEY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_ARSIP_ATRIBUT`
--

DROP TABLE IF EXISTS `MS_ARSIP_ATRIBUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_ARSIP_ATRIBUT` (
  `V_KODE_JENIS_ARSIP` int(11) DEFAULT NULL,
  `KODE_JENIS_ARSIP` varchar(10) NOT NULL,
  `VERSI` int(11) NOT NULL,
  `KODE_ATRIBUT` varchar(10) NOT NULL,
  `NAMA_ATRIBUT` varchar(256) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `KETERANGAN` varchar(256) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(256) DEFAULT NULL,
  `OBJECT_TYPE` varchar(256) DEFAULT NULL,
  `OBJECT_LENGTH` varchar(256) DEFAULT NULL,
  `OBJECT_REQUIRED` varchar(1) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBS_KODE_ATRIBUT` int(10) GENERATED ALWAYS AS (substr(`KODE_ATRIBUT`,4) * 1) STORED,
  `ST_VIEW_AS_KETERANGAN` varchar(1) DEFAULT 'T',
  PRIMARY KEY (`ID`,`KODE_JENIS_ARSIP`,`VERSI`,`KODE_ATRIBUT`) USING BTREE,
  KEY `IX_KODE_JENIS_ARSIP` (`KODE_JENIS_ARSIP`),
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_01` (`ID`,`AKTIF`),
  KEY `IX_02` (`KODE_JENIS_ARSIP`,`AKTIF`),
  KEY `IX_ID` (`ID`),
  KEY `IX_KODE_ATRIBUT` (`KODE_ATRIBUT`),
  KEY `IX_03` (`AKTIF`,`KODE_JENIS_ARSIP`),
  KEY `IX_SUBS_KODE_ATRIBUT` (`SUBS_KODE_ATRIBUT`),
  KEY `IX_04` (`KODE_JENIS_ARSIP`,`AKTIF`,`NAMA_ATRIBUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_ARSIP_JENIS`
--

DROP TABLE IF EXISTS `MS_ARSIP_JENIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_ARSIP_JENIS` (
  `VERSI` int(11) NOT NULL AUTO_INCREMENT,
  `KODE_JENIS_ARSIP` varchar(100) NOT NULL,
  `NAMA_JENIS_ARSIP` varchar(256) DEFAULT NULL,
  `KETERANGAN` varchar(512) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT 'Y',
  `ID` int(10) DEFAULT NULL,
  `SUBS_KODE_JENIS_ARSIP` varchar(100) GENERATED ALWAYS AS (substr(`KODE_JENIS_ARSIP`,9) * 1) STORED,
  `WAKTU_PEMINDAHAN_ARSIP` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`VERSI`,`KODE_JENIS_ARSIP`) USING BTREE,
  KEY `IX_KODE_JENIS_ARSIP` (`KODE_JENIS_ARSIP`),
  KEY `IX_VERSI` (`VERSI`),
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_01` (`AKTIF`,`ID`),
  KEY `IX_ID` (`ID`),
  KEY `IX_02` (`ID`,`AKTIF`),
  KEY `IX_SUBS_KODE_JENIS_ARSIP` (`SUBS_KODE_JENIS_ARSIP`),
  KEY `IX_03` (`KODE_JENIS_ARSIP`,`AKTIF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_ARSIP_POINTER`
--

DROP TABLE IF EXISTS `MS_ARSIP_POINTER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_ARSIP_POINTER` (
  `VERSI` int(11) NOT NULL,
  `KODE_POINTER_ARSIP` varchar(100) NOT NULL,
  `NAMA_POINTER_ARSIP` varchar(256) DEFAULT NULL,
  `KETERANGAN` varchar(256) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT 'Y',
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`,`VERSI`,`KODE_POINTER_ARSIP`) USING BTREE,
  KEY `IX_KODE_POINTER_ARSIP` (`KODE_POINTER_ARSIP`),
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_01` (`KODE_POINTER_ARSIP`,`AKTIF`),
  KEY `IX_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_ARSIP_REF`
--

DROP TABLE IF EXISTS `MS_ARSIP_REF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_ARSIP_REF` (
  `V_KODE_JENIS_ARSIP` int(11) DEFAULT NULL,
  `KODE_JENIS_ARSIP` varchar(100) DEFAULT NULL,
  `REF_ID` longtext DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(100) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_ARSIP_USER_SIGN`
--

DROP TABLE IF EXISTS `MS_ARSIP_USER_SIGN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_ARSIP_USER_SIGN` (
  `ID_USER_SIGN` longtext NOT NULL,
  `NPK` varchar(100) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(100) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(100) DEFAULT NULL,
  `NIK` varchar(16) DEFAULT NULL,
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_USER` longtext DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `KODE_USER` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_NPK` (`NPK`),
  KEY `IX_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_JENIS_TINDAK_LANJUT`
--

DROP TABLE IF EXISTS `MS_JENIS_TINDAK_LANJUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_JENIS_TINDAK_LANJUT` (
  `VERSI` int(11) NOT NULL,
  `KODE_JENIS_TL` int(11) NOT NULL,
  `NAMA_JENIS_TL` varchar(256) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT 'Y',
  PRIMARY KEY (`KODE_JENIS_TL`,`VERSI`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_KANTOR`
--

DROP TABLE IF EXISTS `MS_KANTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_KANTOR` (
  `KODE_KANTOR` varchar(5) NOT NULL,
  `NAMA_KANTOR` varchar(200) DEFAULT NULL,
  `KODE_TIPE` varchar(1) DEFAULT NULL,
  `KODE_KANTOR_INDUK` varchar(5) DEFAULT NULL,
  `ALAMAT` varchar(1000) DEFAULT NULL,
  `FAX` varchar(100) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `TELEPON` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`KODE_KANTOR`) USING BTREE,
  KEY `MS_KANTOR_KODE_KANTOR_INDUK_IDX` (`KODE_KANTOR_INDUK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_KODE_KLASIFIKASI`
--

DROP TABLE IF EXISTS `MS_KODE_KLASIFIKASI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_KODE_KLASIFIKASI` (
  `VERSI` int(11) NOT NULL,
  `KODE_KLASIFIKASI` varchar(10) NOT NULL,
  `NAMA_KLASIFIKASI` varchar(256) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`VERSI`,`KODE_KLASIFIKASI`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_MENU`
--

DROP TABLE IF EXISTS `MS_MENU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_MENU` (
  `VERSI` int(11) NOT NULL,
  `KODE_MENU` varchar(100) NOT NULL,
  `NAMA_MENU` varchar(254) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `ST_NOTIF` varchar(1) DEFAULT 'T',
  `NOTIF_QUERY` varchar(1000) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `ICON` varchar(512) DEFAULT NULL,
  `PAGE` varchar(512) DEFAULT NULL,
  `UPPER_NAMA_MENU` varchar(254) DEFAULT NULL,
  `JENIS` varchar(45) DEFAULT NULL,
  `LEVEL` varchar(45) DEFAULT NULL,
  `KODE_GROUP` varchar(45) DEFAULT NULL,
  `KLASIFIKASI` varchar(100) DEFAULT NULL,
  `NO_URUT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_MENU_HELP`
--

DROP TABLE IF EXISTS `MS_MENU_HELP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_MENU_HELP` (
  `CONTENT_ID` varchar(100) NOT NULL,
  `CONTENT_TITLE` varchar(250) NOT NULL,
  `CONTENT` varchar(500) NOT NULL,
  `CONTENT_TYPE` int(10) NOT NULL COMMENT 'image/video/pdf',
  `CONTENT_DESC` varchar(1000) DEFAULT NULL,
  `CONTENT_STATUS` int(11) NOT NULL COMMENT 'status aktif non aktif',
  `PETUGAS_REKAM` varchar(10) NOT NULL,
  `TGL_REKAM` date NOT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_MENU_ROLE`
--

DROP TABLE IF EXISTS `MS_MENU_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_MENU_ROLE` (
  `V_KODE_MENU` int(11) NOT NULL,
  `KODE_MENU` varchar(100) NOT NULL,
  `VERSI` int(11) NOT NULL,
  `KODE_FUNGSI` varchar(45) NOT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`KODE_MENU`,`KODE_FUNGSI`,`VERSI`) USING BTREE,
  KEY `IX_ID` (`ID`),
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_KODE_MENU` (`KODE_MENU`),
  KEY `IX_KODE_FUNGSI` (`KODE_FUNGSI`),
  KEY `IX_01` (`KODE_MENU`,`KODE_FUNGSI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_MENU_UPD`
--

DROP TABLE IF EXISTS `MS_MENU_UPD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_MENU_UPD` (
  `VERSI` int(11) NOT NULL,
  `KODE_MENU` varchar(100) NOT NULL,
  `NAMA_MENU` varchar(254) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `ST_NOTIF` varchar(1) DEFAULT 'T',
  `NOTIF_QUERY` varchar(1000) DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `ICON` varchar(512) DEFAULT NULL,
  `PAGE` varchar(512) DEFAULT NULL,
  `UPPER_NAMA_MENU` varchar(254) GENERATED ALWAYS AS (ucase(`NAMA_MENU`)) STORED,
  `JENIS` varchar(45) DEFAULT NULL,
  `LEVEL` varchar(45) DEFAULT NULL,
  `KODE_GROUP` varchar(45) DEFAULT NULL,
  `KLASIFIKASI` varchar(100) DEFAULT NULL,
  `NO_URUT` int(11) DEFAULT NULL,
  PRIMARY KEY (`KODE_MENU`,`VERSI`) USING BTREE,
  KEY `IX_UPPER_NAMA_MENU` (`UPPER_NAMA_MENU`),
  KEY `IX_ID` (`ID`),
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_KODE_MENU` (`KODE_MENU`),
  KEY `IX_01` (`ID`,`AKTIF`),
  KEY `IX_02` (`KODE_MENU`,`AKTIF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_ATRIBUT`
--

DROP TABLE IF EXISTS `MS_NASKAH_ATRIBUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_ATRIBUT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `V_KODE_JENIS_NASKAH` int(11) DEFAULT NULL,
  `KODE_JENIS_NASKAH` varchar(10) DEFAULT NULL,
  `VERSI` int(11) DEFAULT NULL,
  `KODE_ATRIBUT` varchar(10) DEFAULT NULL,
  `NAMA_ATRIBUT` varchar(256) DEFAULT NULL,
  `OBJ_TYPE` varchar(256) DEFAULT NULL,
  `OBJ_FUNCTION` varchar(256) DEFAULT NULL,
  `OBJ_LENGTH_MAX` int(11) DEFAULT NULL,
  `OBJ_REQUIRED` varchar(1) DEFAULT NULL,
  `OBJ_TYPE_INPUT` varchar(256) DEFAULT NULL,
  `OBJ_LABEL` varchar(256) DEFAULT NULL,
  `OBJ_MODEL` varchar(256) DEFAULT NULL,
  `OBJ_LENGTH_MIN` int(11) DEFAULT NULL,
  `OBJ_PLACEHOLDER` varchar(45) DEFAULT NULL,
  `OBJ_FEATURED` varchar(1) DEFAULT NULL,
  `OBJ_READONLY` varchar(1) DEFAULT NULL,
  `OBJ_DISABLED` varchar(1) DEFAULT NULL,
  `OBJ_HINT` varchar(1000) DEFAULT NULL,
  `OBJ_TL` varchar(45) DEFAULT NULL,
  `OBJ_TL_SUB1` varchar(200) DEFAULT NULL,
  `OBJ_TL_REFF_SUB1` varchar(256) DEFAULT NULL,
  `OBJ_HIDDEN` varchar(10) DEFAULT 'False',
  `OBJ_VW_USER` varchar(1) DEFAULT 'Y' COMMENT 'PADA SAAT DI FORM VIEW, USER APAKAH BISA MELIHAT KOLOM INI ATAU TIDAK',
  `OBJ_VIEW_INBOX` varchar(45) DEFAULT NULL,
  `OBJ_FILTER_SELECT` varchar(256) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `KETERANGAN` varchar(256) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(256) DEFAULT NULL,
  `NAMA_ATRIBUT_ARSIP` varchar(256) DEFAULT NULL,
  `FNC_ATRIBUT_ARSIP` varchar(100) DEFAULT NULL,
  `FNC_ATRIBUT_ARSIP_JENIS` int(11) DEFAULT NULL,
  `ST_VIEW_SEKRE` varchar(1) DEFAULT NULL,
  `SUBS_KODE_ATRIBUT` int(10) GENERATED ALWAYS AS (substr(`KODE_ATRIBUT`,4) * 1) STORED,
  `NO_URUT` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `MS_NASKAH_ATRIBUT_IDX1` (`OBJ_VIEW_INBOX`,`AKTIF`) USING BTREE,
  KEY `IX_01` (`AKTIF`,`OBJ_VIEW_INBOX`,`KODE_JENIS_NASKAH`),
  KEY `IX_02` (`AKTIF`,`OBJ_VIEW_INBOX`),
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_OBJ_VIEW_INBOX` (`OBJ_VIEW_INBOX`),
  KEY `IX_03` (`ID`,`AKTIF`),
  KEY `IX_04` (`KODE_JENIS_NASKAH`,`AKTIF`),
  KEY `IX_ID` (`ID`),
  KEY `IX_KODE_ATRIBUT` (`KODE_ATRIBUT`),
  KEY `IX_SUBS_KODE_ATRIBUT` (`SUBS_KODE_ATRIBUT`),
  KEY `IX_KODE_JENIS_NASKAH` (`KODE_JENIS_NASKAH`),
  KEY `IX_05` (`KODE_JENIS_NASKAH`,`AKTIF`,`KODE_ATRIBUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_DISPOSISI_TUJUAN`
--

DROP TABLE IF EXISTS `MS_NASKAH_DISPOSISI_TUJUAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_DISPOSISI_TUJUAN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KODE_TL` varchar(10) DEFAULT NULL,
  `FILTER` longtext DEFAULT NULL,
  `FILTER_KOLOM` varchar(1000) DEFAULT NULL,
  `FILTER_ISI` varchar(1000) DEFAULT NULL,
  `METHOD` varchar(1000) DEFAULT NULL,
  `STRUKTURAL` int(11) DEFAULT NULL,
  `MSG_NOT_FOUND` longtext DEFAULT NULL,
  `ST_PPS_POS_ID` varchar(1) DEFAULT NULL,
  `KODE_JENIS_NASKAH` varchar(100) DEFAULT NULL,
  `REQ_ID` varchar(45) DEFAULT NULL,
  `REQ_JENIS` varchar(45) DEFAULT NULL,
  `JENIS_DATA` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_01` (`KODE_TL`,`ST_PPS_POS_ID`,`STRUKTURAL`,`KODE_JENIS_NASKAH`,`REQ_ID`,`REQ_JENIS`,`JENIS_DATA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_FORMDATA_EXT`
--

DROP TABLE IF EXISTS `MS_NASKAH_FORMDATA_EXT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_FORMDATA_EXT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KODE_POINTER` varchar(256) DEFAULT NULL,
  `KODE_JENIS_NASKAH` varchar(10) DEFAULT NULL,
  `ST_AKTIF` varchar(1) DEFAULT NULL,
  `FORM_DATA` longtext DEFAULT NULL,
  `X1` int(11) DEFAULT NULL,
  `Y1` int(11) DEFAULT NULL,
  `X2` int(11) DEFAULT NULL,
  `Y2` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `KODE_POINTER` (`KODE_POINTER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_INISIAL`
--

DROP TABLE IF EXISTS `MS_NASKAH_INISIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_INISIAL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSI` int(11) NOT NULL,
  `NPK` varchar(100) DEFAULT NULL,
  `KODE_KANTOR` varchar(10) DEFAULT NULL,
  `KODE_INISIAL` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `KETERANGAN` varchar(256) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`,`VERSI`) USING BTREE,
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_01` (`ID`,`AKTIF`),
  KEY `IX_02` (`NPK`,`KODE_KANTOR`),
  KEY `IX_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_JENIS`
--

DROP TABLE IF EXISTS `MS_NASKAH_JENIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_JENIS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSI` int(11) DEFAULT NULL,
  `KODE_JENIS_NASKAH` varchar(45) DEFAULT NULL,
  `NAMA_JENIS_NASKAH` varchar(45) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `KETERANGAN` longtext DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  `KODE_POINTER` varchar(45) DEFAULT 'SIDIA',
  `ROLE` longtext DEFAULT NULL,
  `NASKAH_INISIAL` varchar(45) DEFAULT NULL,
  `FONT` varchar(256) DEFAULT NULL,
  `FONT_SIZE` int(11) DEFAULT NULL,
  `KODE_JENIS_ARSIP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `MS_NASKAH_JENIS_IDX1` (`KODE_JENIS_NASKAH`,`VERSI`) USING BTREE,
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_01` (`KODE_JENIS_NASKAH`,`VERSI`,`AKTIF`),
  KEY `IX_KODE_JENIS_NASKAH` (`KODE_JENIS_NASKAH`),
  KEY `IX_VERSI` (`VERSI`),
  KEY `IX_02` (`KODE_JENIS_NASKAH`,`AKTIF`),
  KEY `IX_03` (`ID`,`AKTIF`),
  KEY `IX_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_JENIS_APROOVE_SBD`
--

DROP TABLE IF EXISTS `MS_NASKAH_JENIS_APROOVE_SBD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_JENIS_APROOVE_SBD` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KODE_JENIS_NASKAH` varchar(45) DEFAULT NULL,
  `KODE_KANTOR` varchar(100) DEFAULT NULL,
  `NPK` varchar(20) DEFAULT 'ARIAL',
  `NAMA_JABATAN` varchar(255) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_JENIS_MANDATORY`
--

DROP TABLE IF EXISTS `MS_NASKAH_JENIS_MANDATORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_JENIS_MANDATORY` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `KODE_JENIS_NASKAH` varchar(45) DEFAULT NULL,
  `KODE_ATRIBUT` varchar(45) DEFAULT 'NULL',
  `AKTIF` varchar(1) DEFAULT NULL,
  `KETERANGAN` longtext DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  `ID_SETUP` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX1` (`KODE_ATRIBUT`,`KODE_JENIS_NASKAH`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_JENIS_MANDATORY_BCK`
--

DROP TABLE IF EXISTS `MS_NASKAH_JENIS_MANDATORY_BCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_JENIS_MANDATORY_BCK` (
  `ID` int(10) unsigned NOT NULL DEFAULT 0,
  `KODE_JENIS_NASKAH` varchar(45) DEFAULT NULL,
  `KODE_ATRIBUT` varchar(45) DEFAULT 'NULL',
  `AKTIF` varchar(1) DEFAULT NULL,
  `KETERANGAN` longtext DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  `ID_SETUP` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_JENIS_SIGN`
--

DROP TABLE IF EXISTS `MS_NASKAH_JENIS_SIGN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_JENIS_SIGN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSI` int(11) DEFAULT NULL,
  `KODE_JENIS_NASKAH` varchar(45) DEFAULT NULL,
  `NO_URUT_SIGN` int(11) DEFAULT NULL,
  `AXIS_X` varchar(45) DEFAULT NULL,
  `AXIS_Y` varchar(45) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_KLASIFIKASI`
--

DROP TABLE IF EXISTS `MS_NASKAH_KLASIFIKASI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_KLASIFIKASI` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSI` int(11) NOT NULL,
  `KODE_POKOK_MASALAH` varchar(10) DEFAULT NULL,
  `POKOK_MASALAH` varchar(256) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `KETERANGAN` varchar(512) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`,`VERSI`) USING BTREE,
  KEY `IX_KODE_POKOK_MASALAH` (`KODE_POKOK_MASALAH`),
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_01` (`ID`,`AKTIF`),
  KEY `IX_02` (`AKTIF`,`KODE_POKOK_MASALAH`),
  KEY `IX_ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_KLASIFIKASI_JENIS`
--

DROP TABLE IF EXISTS `MS_NASKAH_KLASIFIKASI_JENIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_KLASIFIKASI_JENIS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSI` int(11) NOT NULL,
  `V_KODE_POKOK_MASALAH` int(11) DEFAULT NULL,
  `KODE_POKOK_MASALAH` varchar(10) DEFAULT NULL,
  `JENIS` varchar(256) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `KETERANGAN` varchar(512) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`,`VERSI`) USING BTREE,
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_01` (`AKTIF`,`KODE_POKOK_MASALAH`,`JENIS`),
  KEY `IX_02` (`ID`,`AKTIF`),
  KEY `IX_03` (`KODE_POKOK_MASALAH`,`JENIS`),
  KEY `IX_ID` (`ID`),
  KEY `IX_KODE_POKOK_MASALAH` (`KODE_POKOK_MASALAH`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_KLASIFIKASI_KODE`
--

DROP TABLE IF EXISTS `MS_NASKAH_KLASIFIKASI_KODE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_KLASIFIKASI_KODE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSI` varchar(45) NOT NULL,
  `V_KODE_POKOK_MASALAH` int(11) DEFAULT NULL,
  `KODE_POKOK_MASALAH` varchar(10) DEFAULT NULL,
  `V_JENIS` int(11) DEFAULT NULL,
  `JENIS` varchar(256) DEFAULT NULL,
  `KODE_KLASIFIKASI` varchar(100) DEFAULT NULL,
  `NAMA_KLASIFIKASI` varchar(512) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT 'Y',
  `KETERANGAN` varchar(512) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`,`VERSI`),
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_01` (`AKTIF`,`KODE_POKOK_MASALAH`,`JENIS`,`KODE_KLASIFIKASI`),
  KEY `IX_02` (`ID`,`AKTIF`),
  KEY `IX_03` (`KODE_POKOK_MASALAH`,`JENIS`,`KODE_KLASIFIKASI`),
  KEY `IX_ID` (`ID`),
  KEY `IX_KODE_POKOK_MASALAH` (`KODE_POKOK_MASALAH`),
  KEY `IX_NAMA_KLASIFIKASI` (`NAMA_KLASIFIKASI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_NOTIF_EMAIL`
--

DROP TABLE IF EXISTS `MS_NASKAH_NOTIF_EMAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_NOTIF_EMAIL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NOTIF` varchar(45) DEFAULT NULL,
  `SUBJECT` text DEFAULT NULL,
  `BODY` text DEFAULT NULL,
  `KETERANGAN` varchar(1000) DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_ID_NOTIF` (`ID_NOTIF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_PEMBUATAN_FIELD`
--

DROP TABLE IF EXISTS `MS_NASKAH_PEMBUATAN_FIELD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_PEMBUATAN_FIELD` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `KODE_KANTOR` varchar(10) DEFAULT NULL,
  `KODE_JENIS_NASKAH` varchar(100) DEFAULT NULL,
  `FILTER` longtext DEFAULT NULL,
  `OBJ_FUNCTION` varchar(1000) DEFAULT NULL,
  `MSG_NOT_FOUND` longtext DEFAULT NULL,
  `REQ_ID` varchar(45) DEFAULT NULL,
  `REQ_JENIS` varchar(45) DEFAULT NULL,
  `JENIS_DATA` varchar(256) DEFAULT NULL,
  `NAMA_ATRIBUT` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_01` (`KODE_KANTOR`,`KODE_JENIS_NASKAH`,`OBJ_FUNCTION`,`NAMA_ATRIBUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_PEMBUATAN_FIELD_BCK`
--

DROP TABLE IF EXISTS `MS_NASKAH_PEMBUATAN_FIELD_BCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_PEMBUATAN_FIELD_BCK` (
  `ID` int(11) NOT NULL DEFAULT 0,
  `KODE_KANTOR` varchar(10) DEFAULT NULL,
  `KODE_JENIS_NASKAH` varchar(100) DEFAULT NULL,
  `FILTER` longtext DEFAULT NULL,
  `OBJ_FUNCTION` varchar(1000) DEFAULT NULL,
  `MSG_NOT_FOUND` longtext DEFAULT NULL,
  `REQ_ID` varchar(45) DEFAULT NULL,
  `REQ_JENIS` varchar(45) DEFAULT NULL,
  `JENIS_DATA` varchar(256) DEFAULT NULL,
  `NAMA_ATRIBUT` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_SEKRETARIS_TEMP`
--

DROP TABLE IF EXISTS `MS_NASKAH_SEKRETARIS_TEMP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_SEKRETARIS_TEMP` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NPK` varchar(10) DEFAULT NULL,
  `NAMA_PEGAWAI` varchar(1000) DEFAULT NULL,
  `NAMA_JOBTITLE` varchar(1000) DEFAULT NULL,
  `UNIT_KANTOR` varchar(10) DEFAULT NULL,
  `TGL_MULAI` date NOT NULL,
  `TGL_AKHIR` date NOT NULL,
  `AKTIF` varchar(1) DEFAULT 'Y',
  `KODE_POINTER` varchar(45) DEFAULT 'SEKRETARISPENUGASAN',
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `TGL_AKHIR_1D` date GENERATED ALWAYS AS (`TGL_AKHIR` + interval 1 day) STORED,
  PRIMARY KEY (`ID`),
  KEY `IX_01` (`UNIT_KANTOR`,`TGL_MULAI`,`TGL_AKHIR`,`AKTIF`),
  KEY `IX_02` (`TGL_MULAI`,`TGL_AKHIR_1D`),
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_03` (`ID`,`AKTIF`),
  KEY `IX_ID` (`ID`),
  KEY `IX_UNIT_KANTOR` (`UNIT_KANTOR`),
  KEY `IX_TGL_MULAI` (`TGL_MULAI`),
  KEY `IX_TGL_AKHIR_1D` (`TGL_AKHIR_1D`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_SETUJU`
--

DROP TABLE IF EXISTS `MS_NASKAH_SETUJU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_SETUJU` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SETUJU` varchar(45) DEFAULT NULL,
  `NO_URUT` varchar(45) DEFAULT NULL,
  `METHOD` varchar(45) DEFAULT NULL,
  `FILTER` varchar(1000) DEFAULT NULL,
  `KODE_KANTOR_INDUK` varchar(3) DEFAULT NULL,
  `KETERANGAN` varchar(1000) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT current_timestamp(),
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_NASKAH_TL`
--

DROP TABLE IF EXISTS `MS_NASKAH_TL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_NASKAH_TL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `VERSI` int(11) NOT NULL,
  `KODE_TL` varchar(10) DEFAULT NULL,
  `NAMA_TL` varchar(256) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `NO_URUT_TL` int(11) DEFAULT NULL,
  `INBOX_VIEW` varchar(1) DEFAULT NULL,
  `TL_REFF` varchar(200) DEFAULT NULL,
  `SUBS_KODE_TL` varchar(10) GENERATED ALWAYS AS (substr(`KODE_TL`,3) * 1) STORED,
  PRIMARY KEY (`ID`,`VERSI`),
  KEY `IX_AKTIF` (`AKTIF`),
  KEY `IX_01` (`KODE_TL`,`AKTIF`),
  KEY `IX_KODE_TL` (`KODE_TL`),
  KEY `IX_ID` (`ID`),
  KEY `IX_SUBS_KODE_TL` (`SUBS_KODE_TL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `MS_TINDAK_LANJUT`
--

DROP TABLE IF EXISTS `MS_TINDAK_LANJUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MS_TINDAK_LANJUT` (
  `VERSI` int(11) NOT NULL,
  `KODE_TL` varchar(10) NOT NULL,
  `NAMA_TL` varchar(256) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`KODE_TL`,`VERSI`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `NEW_USERS`
--

DROP TABLE IF EXISTS `NEW_USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NEW_USERS` (
  `id` int(11) DEFAULT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `no_telpon` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PETUGAS_BB`
--

DROP TABLE IF EXISTS `PETUGAS_BB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PETUGAS_BB` (
  `ID` int(11) DEFAULT NULL,
  `NAMA` varchar(255) DEFAULT NULL,
  `UMUR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TEMP_ALIH_MEDIA_FILES`
--

DROP TABLE IF EXISTS `TEMP_ALIH_MEDIA_FILES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TEMP_ALIH_MEDIA_FILES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FILEPATH` varchar(3000) DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `ID_ARSIP` varchar(300) DEFAULT NULL,
  `ORIGINAL_FILENAME` varchar(500) DEFAULT NULL,
  `CREATED_AT` timestamp NULL DEFAULT current_timestamp(),
  `IS_TEMP` enum('Y','T') DEFAULT 'Y',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP`
--

DROP TABLE IF EXISTS `TR_ARSIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP` (
  `V_KODE_POINTER_ARSIP` int(11) DEFAULT NULL,
  `KODE_POINTER` varchar(300) DEFAULT NULL,
  `OBJECT_UATRIBUT` text DEFAULT NULL,
  `ID_ARSIP` varchar(300) NOT NULL,
  `ST_QRCODE` varchar(3) DEFAULT NULL,
  `ST_FILE` varchar(3) DEFAULT NULL,
  `TGL_PEMINDAHAN_ARSIP` date DEFAULT NULL,
  `ST_PEMINDAHAN_ARSIP` varchar(3) DEFAULT NULL,
  `ID_PEMINDAHAN_ARSIP` varchar(300) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(300) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_ARSIP`),
  KEY `IX_ID_ARSIP` (`ID_ARSIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_BULK_PROSES`
--

DROP TABLE IF EXISTS `TR_ARSIP_BULK_PROSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_BULK_PROSES` (
  `ID_PROSES` varchar(255) NOT NULL,
  `ID_NASKAH` varchar(255) NOT NULL,
  `ID_ARSIP` varchar(255) DEFAULT NULL,
  `TGL_PROSES` datetime DEFAULT NULL,
  `TGL_PROSES_SELESAI` datetime DEFAULT NULL,
  `ST_PROSES` varchar(1) DEFAULT NULL,
  `PETUGAS_PROSES` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_PROSES`,`ID_NASKAH`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_DOC`
--

DROP TABLE IF EXISTS `TR_ARSIP_DOC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_DOC` (
  `V_KODE_JENIS_ARSIP` varchar(300) DEFAULT NULL,
  `KODE_JENIS_ARSIP` varchar(300) DEFAULT NULL,
  `ID_ARSIP` varchar(300) NOT NULL,
  `NAMA_FILE` varchar(3000) DEFAULT NULL,
  `EXTENSION` varchar(60) DEFAULT NULL,
  `PATH` text DEFAULT NULL,
  `OBJECT_UATRIBUT` text DEFAULT NULL,
  `HASH_ARSIP` text DEFAULT NULL,
  `HASH_ASAL` text DEFAULT NULL,
  `ST_HASH` varchar(3) DEFAULT NULL,
  `JML_HALAMAN` int(11) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(30) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ID_ARSIP`),
  KEY `TR_ARSIP_DOC_IDX1` (`HASH_ASAL`(3072)),
  KEY `IX_KODE_JENIS_ARSIP` (`KODE_JENIS_ARSIP`),
  KEY `IX_ID_ARSIP` (`ID_ARSIP`),
  FULLTEXT KEY `FTS_AD` (`OBJECT_UATRIBUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_DOC_DETIL`
--

DROP TABLE IF EXISTS `TR_ARSIP_DOC_DETIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_DOC_DETIL` (
  `ID_ARSIP` varchar(100) NOT NULL,
  `V_KODE_ATRIBUT` int(11) DEFAULT NULL,
  `KODE_ATRIBUT` varchar(10) NOT NULL,
  `NAMA_ATRIBUT` varchar(256) DEFAULT NULL,
  `OBJECT_VALUE` longtext DEFAULT NULL,
  `OBJECT_UVALUE` longtext DEFAULT NULL,
  `OBJECT_TYPE` longtext DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  KEY `Index 3` (`OBJECT_VALUE`(100)) USING BTREE,
  KEY `IX_TGL_REKAM` (`TGL_REKAM`),
  KEY `IX_ID_ARSIP_REKAM` (`ID_ARSIP`),
  KEY `IX_01` (`TGL_REKAM`,`ID_ARSIP`),
  KEY `IX_02` (`ID_ARSIP`,`KODE_ATRIBUT`),
  KEY `IX_03` (`ID_ARSIP`,`NAMA_ATRIBUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_DOC_FILE`
--

DROP TABLE IF EXISTS `TR_ARSIP_DOC_FILE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_DOC_FILE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_ARSIP` varchar(100) NOT NULL,
  `ID_NASKAH` varchar(100) NOT NULL,
  `NAMA_FILE` varchar(1000) DEFAULT NULL,
  `EXTENSION` varchar(20) DEFAULT NULL,
  `PATH` longtext DEFAULT NULL,
  `HASH_NASKAH` longtext DEFAULT NULL,
  `HASH_ASAL` longtext DEFAULT NULL,
  `ST_HASH` varchar(1) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID` (`ID`),
  KEY `IX_ID_ARSIP` (`ID_ARSIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_LOG`
--

DROP TABLE IF EXISTS `TR_ARSIP_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_LOG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `V_KODE_POINTER_ARSIP` int(11) DEFAULT NULL,
  `KODE_POINTER` varchar(100) DEFAULT NULL,
  `ID_ARSIP` varchar(100) DEFAULT NULL,
  `ARSIP_LOG_JENIS` varchar(100) DEFAULT NULL,
  `NPK` varchar(100) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(100) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_PEMINDAHAN`
--

DROP TABLE IF EXISTS `TR_ARSIP_PEMINDAHAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_PEMINDAHAN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PEMINDAHAN` varchar(45) DEFAULT NULL,
  `ID_NASKAH_BA` varchar(45) DEFAULT NULL,
  `TGL_PEMINDAHAN` datetime DEFAULT NULL,
  `KODE_KANTOR` varchar(10) DEFAULT NULL,
  `NPK` varchar(10) DEFAULT NULL,
  `NAMA_JABATAN` longtext DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  `ST_APPROVAL` varchar(1) DEFAULT NULL,
  `TGL_APPROVAL` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_PEMINDAHAN_DTL`
--

DROP TABLE IF EXISTS `TR_ARSIP_PEMINDAHAN_DTL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_PEMINDAHAN_DTL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PEMINDAHAN` varchar(45) DEFAULT '',
  `ID_ARSIP` varchar(45) DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_PEMINDAHAN_SETUJU`
--

DROP TABLE IF EXISTS `TR_ARSIP_PEMINDAHAN_SETUJU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_PEMINDAHAN_SETUJU` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PEMINDAHAN` varchar(45) DEFAULT NULL,
  `NO_URUT` int(11) DEFAULT NULL,
  `NPK` varchar(10) DEFAULT NULL,
  `KODE_KANTOR` varchar(10) DEFAULT NULL,
  `NAMA_JABATAN` varchar(1000) DEFAULT NULL,
  `ST_APPROVAL` varchar(1) DEFAULT 'V' COMMENT 'V = STATUS VERIFIKASI\nY = DISETUJUI\nT = DITOLAK',
  `TGL_APPROVAL` datetime DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT 'Y',
  `KETERANGAN` longtext DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_PEMINJAMAN`
--

DROP TABLE IF EXISTS `TR_ARSIP_PEMINJAMAN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_PEMINJAMAN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PEMINJAMAN` varchar(45) DEFAULT NULL,
  `NPK` varchar(10) DEFAULT NULL,
  `KODE_KANTOR` varchar(10) DEFAULT NULL,
  `TGL_PEMINJAMAN` date DEFAULT NULL,
  `ST_APPROVAL` varchar(45) DEFAULT NULL,
  `TGL_APPROVAL` varchar(45) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_PEMINJAMAN_DTL`
--

DROP TABLE IF EXISTS `TR_ARSIP_PEMINJAMAN_DTL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_PEMINJAMAN_DTL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PEMINJAMAN` varchar(45) DEFAULT NULL,
  `ID_ARSIP` varchar(45) DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  `TGLUBAH` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_PEMINJAMAN_SETUJU`
--

DROP TABLE IF EXISTS `TR_ARSIP_PEMINJAMAN_SETUJU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_PEMINJAMAN_SETUJU` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PEMINJAMAN` varchar(45) DEFAULT NULL,
  `NO_URUT` int(45) DEFAULT NULL,
  `NPK` varchar(10) DEFAULT NULL,
  `NAMA_JABATAN` varchar(1000) DEFAULT NULL,
  `ST_APPROVAL` varchar(1) DEFAULT NULL,
  `TGL_APPROVAL` date DEFAULT NULL,
  `KODE_KANTOR` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT 'Y',
  `KETERANGAN` varchar(1000) DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  `ID_SETUJU` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_REF`
--

DROP TABLE IF EXISTS `TR_ARSIP_REF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_REF` (
  `V_KODE_JENIS_ARSIP` int(11) DEFAULT NULL,
  `KODE_JENIS_ARSIP` varchar(100) NOT NULL,
  `ID_ARSIP` varchar(100) NOT NULL,
  `REF_ID` longtext DEFAULT NULL,
  `REF_VALUE` longtext DEFAULT NULL,
  `REF_UVALUE` longtext DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  KEY `IX_ID_ARSIP` (`ID_ARSIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_ARSIP_SIGN_QR`
--

DROP TABLE IF EXISTS `TR_ARSIP_SIGN_QR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_ARSIP_SIGN_QR` (
  `ID_TR` longtext DEFAULT NULL,
  `ID_USER_SIGN` longtext NOT NULL,
  `NPK` varchar(100) DEFAULT NULL,
  `NAMA_JABATAN` varchar(1024) DEFAULT NULL,
  `NAMA_KANTOR` varchar(100) DEFAULT NULL,
  `QR64` longtext DEFAULT NULL,
  `TGL_SIGN` datetime DEFAULT NULL,
  `OBJECT_ID` longtext DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(1024) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH`
--

DROP TABLE IF EXISTS `TR_NASKAH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `V_KODE_JENIS_NASKAH` int(11) DEFAULT NULL,
  `KODE_JENIS_NASKAH` varchar(10) DEFAULT NULL,
  `ID_NASKAH` varchar(256) DEFAULT NULL,
  `NO_NASKAH` varchar(100) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `EXTENSION` varchar(20) DEFAULT NULL,
  `PATH` longtext DEFAULT NULL,
  `ST_DRAFT` varchar(1) DEFAULT NULL,
  `ST_SEND` varchar(1) DEFAULT NULL,
  `FORM_DATA` longtext DEFAULT NULL,
  `ATTACHMENT_DATA` longtext DEFAULT NULL,
  `TGL_NASKAH` datetime DEFAULT NULL,
  `KODE_KANTOR` varchar(10) DEFAULT NULL,
  `NPK` varchar(10) DEFAULT NULL,
  `NAMA_JABATAN` longtext DEFAULT NULL,
  `NAMA_FILE` varchar(1000) DEFAULT NULL,
  `ID_POINTER` varchar(256) DEFAULT NULL,
  `REQ_DATA_POINTER` longtext DEFAULT NULL,
  `REQ_URL_POINTER` longtext DEFAULT NULL,
  `ID_ARSIP` varchar(100) DEFAULT NULL,
  `KODE_POINTER` varchar(255) DEFAULT NULL,
  `SFDT` longtext DEFAULT NULL,
  `TGL_BATAL` datetime DEFAULT NULL,
  `PETUGAS_BATAL` varchar(10) DEFAULT NULL,
  `ST_BATAL` enum('Y','T') DEFAULT NULL,
  `ST_HAPUS` enum('Y','T') DEFAULT NULL,
  `TGL_HAPUS` datetime DEFAULT NULL,
  `KET_HAPUS` varchar(1000) DEFAULT NULL,
  `PETUGAS_HAPUS` varchar(10) DEFAULT NULL,
  `KET_BATAL` varchar(1000) DEFAULT NULL,
  `ST_MASAL` varchar(1) DEFAULT 'T',
  `ST_FILE_KONVENSIONAL` varchar(1) DEFAULT 'T',
  `NAMA_FILE_HIST1` varchar(1000) DEFAULT NULL,
  `EXTENSION_HIST1` varchar(20) DEFAULT NULL,
  `PATH_HIST1` longtext DEFAULT NULL,
  `ST_CUTOFf` enum('Y','T') DEFAULT NULL,
  `ID_CUTOFF` varchar(100) DEFAULT NULL,
  `JML_HALAMAN` int(5) DEFAULT 0,
  `TAHUN` int(4) DEFAULT NULL,
  `BULAN` int(2) DEFAULT NULL,
  `KODE_KANTOR_INDUK` varchar(3) DEFAULT NULL,
  `NO_NASKAH_MID` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_NASKAH` (`ID_NASKAH`) USING BTREE,
  KEY `TR_NASKAH_IDX2` (`ST_SEND`) USING BTREE,
  KEY `TR_NASKAH_IDX1` (`KODE_JENIS_NASKAH`,`V_KODE_JENIS_NASKAH`) USING BTREE,
  KEY `IX_01` (`ID_NASKAH`,`AKTIF`),
  KEY `IX_02` (`NPK`,`KODE_POINTER`,`ST_HAPUS`),
  KEY `IX_NPK` (`NPK`),
  KEY `IX_KODE_POINTER` (`KODE_POINTER`),
  KEY `IX_ST_HAPUS` (`ST_HAPUS`),
  KEY `IX_03` (`ST_HAPUS`,`ID_NASKAH`),
  KEY `IX_04` (`KODE_POINTER`,`ID_POINTER`,`ST_HAPUS`,`KODE_KANTOR`),
  KEY `IX_ID_POINTER` (`ID_POINTER`),
  KEY `IX_KODE_KANTOR` (`KODE_KANTOR`),
  KEY `IX_05` (`ID_NASKAH`,`NPK`),
  KEY `IX_KODE_JENIS_NASKAH` (`KODE_JENIS_NASKAH`),
  KEY `IX_06` (`KODE_POINTER`,`ID_POINTER`),
  KEY `IX_07` (`ID_NASKAH`,`ID_ARSIP`),
  KEY `IDX_TGLREKAM` (`TGL_REKAM`),
  KEY `IDX_TAHUN` (`TAHUN`),
  KEY `IDX_FORGETNOMOR` (`TAHUN`,`BULAN`,`KODE_JENIS_NASKAH`,`KODE_KANTOR`,`NO_NASKAH`),
  KEY `IDX_FORGETNOMOR2` (`TAHUN`,`BULAN`,`KODE_JENIS_NASKAH`,`KODE_KANTOR`,`NO_NASKAH`,`TGL_NASKAH`),
  KEY `ID_CUTOFF_INDEX` (`ID_CUTOFF`),
  KEY `idx_naskah_keluar` (`NPK`,`KODE_KANTOR`,`KODE_JENIS_NASKAH`,`ST_SEND`,`ID_NASKAH`,`ST_HAPUS`),
  KEY `idx_naskah_masuk_naskah` (`NPK`,`KODE_KANTOR`,`KODE_JENIS_NASKAH`,`ST_SEND`,`ID_NASKAH`,`ST_HAPUS`),
  KEY `idx_naskah_eksternal` (`KODE_POINTER`,`ID_POINTER`,`KODE_KANTOR`),
  KEY `IDX_MONITORING_NASKAH_EKSTERNAL` (`KODE_POINTER`,`ID_POINTER`,`ST_HAPUS`,`KODE_KANTOR`,`ID_NASKAH`),
  KEY `idx_naskah_kode_pointer` (`KODE_POINTER`,`ID_POINTER`,`KODE_KANTOR`,`NPK`,`KODE_JENIS_NASKAH`,`ST_SEND`,`ID_NASKAH`,`ST_HAPUS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_BCKGN_PROSES`
--

DROP TABLE IF EXISTS `TR_NASKAH_BCKGN_PROSES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_BCKGN_PROSES` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PROSES` varchar(45) DEFAULT NULL,
  `ID_NASKAH` varchar(256) DEFAULT NULL,
  `STATUS` varchar(100) DEFAULT NULL,
  `JML_PROSES` int(11) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX1` (`ID_NASKAH`,`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_CUTOFF`
--

DROP TABLE IF EXISTS `TR_NASKAH_CUTOFF`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_CUTOFF` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NASKAH_CUTOFF` varchar(256) DEFAULT NULL,
  `KODE_JENIS_NASKAH` varchar(45) DEFAULT NULL,
  `NAMA_JENIS_NASKAH` varchar(45) DEFAULT NULL,
  `DARI` varchar(100) DEFAULT NULL,
  `SAMPAI` varchar(1000) DEFAULT NULL,
  `ST_CUTOFF` enum('Y','T') DEFAULT NULL,
  `KODE_KANTOR` varchar(10) DEFAULT NULL,
  `NPK` varchar(10) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `ST_HAPUS` enum('Y','T') DEFAULT NULL,
  `TGL_HAPUS` datetime DEFAULT NULL,
  `PETUGAS_HAPUS` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_DETIL`
--

DROP TABLE IF EXISTS `TR_NASKAH_DETIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_DETIL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `V_KODE_ATRIBUT` int(11) DEFAULT NULL,
  `KODE_ATRIBUT` varchar(10) DEFAULT NULL,
  `NAMA_ATRIBUT` varchar(255) DEFAULT NULL,
  `ID_NASKAH` varchar(256) DEFAULT NULL,
  `OBJECT_VALUE` longtext DEFAULT NULL,
  `U_OBJECT_VALUE` longtext DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `TR_NASKAH_DETIL_IDX2` (`KODE_ATRIBUT`,`ID_NASKAH`),
  KEY `IX_ID_NASKAH` (`ID_NASKAH`),
  KEY `IX_KODE_ATRIBUT` (`KODE_ATRIBUT`),
  KEY `IX_01` (`ID_NASKAH`,`NAMA_ATRIBUT`),
  KEY `IX_02` (`ID_NASKAH`,`KODE_ATRIBUT`),
  KEY `IX_NAMA_ATRIBUT` (`NAMA_ATRIBUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_DISPOSISI`
--

DROP TABLE IF EXISTS `TR_NASKAH_DISPOSISI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_DISPOSISI` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NASKAH` varchar(256) DEFAULT NULL,
  `NO_URUT` int(11) DEFAULT NULL,
  `NPK_DISPOSISI` varchar(60) DEFAULT NULL,
  `NPK_TERDISPOSISI` varchar(60) DEFAULT NULL,
  `ST_PPS` varchar(1) DEFAULT NULL,
  `PPS_JABATAN` varchar(1000) DEFAULT NULL,
  `PPS_POS_ID` varchar(100) DEFAULT NULL,
  `TGL_DISPOSISI` date DEFAULT current_timestamp(),
  `KETERANGAN` longtext DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `TR_NASKAH_DISPOSISI_IDX1` (`NPK_TERDISPOSISI`(9)) USING BTREE,
  KEY `TR_NASKAH_DISPOSISI_IDX2` (`ID_NASKAH`,`ST_PPS`,`NPK_DISPOSISI`(9),`NPK_TERDISPOSISI`(9)) USING BTREE,
  KEY `IX_ID_NASKAH` (`ID_NASKAH`),
  KEY `IX_ST_PPS` (`ST_PPS`),
  KEY `IX_01` (`NPK_TERDISPOSISI`,`ID_NASKAH`,`NPK_DISPOSISI`,`ST_PPS`),
  KEY `IX_02` (`ID_NASKAH`,`NO_URUT`,`NPK_DISPOSISI`,`NPK_TERDISPOSISI`),
  KEY `IX_03` (`ID_NASKAH`,`NO_URUT`,`NPK_DISPOSISI`),
  KEY `IX_04` (`ID_NASKAH`,`NPK_DISPOSISI`,`NPK_TERDISPOSISI`,`NO_URUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_KONSEPTOR`
--

DROP TABLE IF EXISTS `TR_NASKAH_KONSEPTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_KONSEPTOR` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NASKAH` varchar(256) DEFAULT NULL,
  `NO_URUT` int(11) DEFAULT NULL,
  `NPK` varchar(100) DEFAULT NULL,
  `ST_APPROVAL` varchar(1) DEFAULT NULL,
  `TGL_APPROVAL` date DEFAULT NULL,
  `TGL_REKAM` date DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `ST_PPS` varchar(1) DEFAULT NULL,
  `PPS_JABATAN` varchar(1000) DEFAULT NULL,
  `PPS_POS_ID` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `IX_01` (`ID_NASKAH`,`NPK`),
  KEY `IX_02` (`ID_NASKAH`,`NO_URUT`,`NPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_LOG`
--

DROP TABLE IF EXISTS `TR_NASKAH_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_LOG` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NASKAH` varchar(256) DEFAULT '',
  `NO_URUT` int(11) DEFAULT NULL,
  `KODE_TL` varchar(10) DEFAULT NULL,
  `ST_LOG` varchar(1) DEFAULT NULL,
  `TGL_LOG` datetime DEFAULT NULL,
  `KETERANGAN` longtext DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `IX_ID_NASKAH` (`ID_NASKAH`),
  KEY `IX_01` (`ID_NASKAH`,`NO_URUT`,`KODE_TL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_MASAL`
--

DROP TABLE IF EXISTS `TR_NASKAH_MASAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_MASAL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NASKAH` varchar(256) DEFAULT NULL,
  `ID_NASKAH_DETIL` varchar(256) DEFAULT NULL,
  `TGL_NASKAH` datetime DEFAULT NULL,
  `NO_NASKAH` varchar(100) DEFAULT NULL,
  `NAMA_FILE` varchar(1000) DEFAULT NULL,
  `EXTENSION` varchar(20) DEFAULT NULL,
  `PATH` longtext DEFAULT NULL,
  `TUJUAN` varchar(1000) DEFAULT NULL,
  `FORM_DATA` longtext DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `NO_NASKAH_MID` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `TR_NASKAH_MASAL_ID_NASKAH_IDX` (`ID_NASKAH`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_NOTIF_EMAIL`
--

DROP TABLE IF EXISTS `TR_NASKAH_NOTIF_EMAIL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_NOTIF_EMAIL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NOTIF` varchar(45) DEFAULT NULL,
  `ID_NASKAH` varchar(45) DEFAULT NULL,
  `EMAIL_PENGIRIM` text DEFAULT NULL,
  `NPK_PENERIMA` text DEFAULT NULL,
  `SUBJECT_VALUE` text DEFAULT NULL,
  `BODY_VALUE` longtext DEFAULT NULL,
  `EMAIL_PENERIMA` longtext DEFAULT NULL,
  `ST_SUKSES` varchar(1) DEFAULT NULL,
  `LOG` text DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_NOTIF_FCM`
--

DROP TABLE IF EXISTS `TR_NASKAH_NOTIF_FCM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_NOTIF_FCM` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NPK` varchar(10) DEFAULT '',
  `TOKEN` varchar(255) DEFAULT '',
  `TGL_REKAM` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `PETUGAS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_NO_BATAL`
--

DROP TABLE IF EXISTS `TR_NASKAH_NO_BATAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_NO_BATAL` (
  `ID` int(15) NOT NULL AUTO_INCREMENT,
  `NO_NASKAH` varchar(100) DEFAULT NULL,
  `ST_AKTIF` varchar(1) DEFAULT 'Y',
  `TGL_REKAM` datetime DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `KODE_JENIS_NASKAH` varchar(100) DEFAULT NULL,
  `KODE_KANTOR` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_PINDAH_ARSIP`
--

DROP TABLE IF EXISTS `TR_NASKAH_PINDAH_ARSIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_PINDAH_ARSIP` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PROSES` varchar(45) DEFAULT NULL,
  `ID_NASKAH` varchar(45) DEFAULT NULL,
  `ID_ARSIP` varchar(45) DEFAULT NULL,
  `PATH_KORESPONDENSI` varchar(1000) DEFAULT NULL,
  `HASH_KORESPONDENSI` longtext DEFAULT NULL,
  `PATH_ARSIP` varchar(1000) DEFAULT NULL,
  `HASH_ARSIP` longtext DEFAULT NULL,
  `ST_HAPUS_KORESPONDENSI` varchar(1) DEFAULT NULL,
  `PETUGAS_REKAM` varchar(45) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_NASKAH` (`ID_NASKAH`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_SIGN`
--

DROP TABLE IF EXISTS `TR_NASKAH_SIGN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_SIGN` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NASKAH` varchar(256) DEFAULT NULL,
  `NO_URUT` int(11) DEFAULT NULL,
  `NPK` varchar(100) DEFAULT NULL,
  `ST_SIGN` varchar(1) DEFAULT NULL,
  `TGL_SIGN` datetime DEFAULT NULL,
  `KODE_POINTER` varchar(100) DEFAULT NULL,
  `NAMA_FILE` varchar(1000) DEFAULT NULL,
  `PATH` longtext DEFAULT NULL,
  `EXTENSION` varchar(20) DEFAULT NULL,
  `HASH_FILE` longtext DEFAULT NULL,
  `HASH_FILE_INDUK` longtext DEFAULT NULL,
  `ST_ARSIP` varchar(1) DEFAULT NULL,
  `ST_PPS` varchar(1) DEFAULT NULL,
  `PPS_JABATAN` varchar(1024) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(100) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IX_01` (`ID_NASKAH`,`NPK`),
  KEY `IX_ID_NASKAH` (`ID_NASKAH`),
  KEY `IX_02` (`ID_NASKAH`,`NO_URUT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_TL`
--

DROP TABLE IF EXISTS `TR_NASKAH_TL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_TL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_NASKAH` varchar(256) DEFAULT NULL,
  `NO_URUT` int(11) DEFAULT NULL,
  `KODE_USER` varchar(10) DEFAULT NULL,
  `KODE_TL` varchar(10) DEFAULT NULL,
  `ST_TL` varchar(1) DEFAULT NULL,
  `TGL_TL` datetime DEFAULT NULL,
  `IS_READ` varchar(1) DEFAULT 'T',
  `IS_FAVORITE` varchar(1) DEFAULT 'T',
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `KODE_KANTOR` varchar(10) DEFAULT NULL,
  `NPK` varchar(10) DEFAULT NULL,
  `NAMA_JABATAN` longtext DEFAULT NULL,
  `NPK_DISPOSISI` varchar(45) DEFAULT NULL,
  `TGL_TERIMA` datetime DEFAULT NULL,
  `KETERANGAN` longtext DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `TR_NASKAH_TL_IDX1` (`ID_NASKAH`,`TGL_TERIMA`,`KODE_TL`) USING BTREE,
  KEY `TR_NASKAH_TL_IDX2` (`ID_NASKAH`,`NPK`,`NPK_DISPOSISI`) USING BTREE,
  KEY `TR_NASKAH_TL_IDX3` (`NPK_DISPOSISI`) USING BTREE,
  KEY `IX_ID_NASKAH` (`ID_NASKAH`),
  KEY `IX_01` (`ID_NASKAH`,`KODE_TL`,`TGL_TERIMA`),
  KEY `IX_KODE_TL` (`KODE_TL`),
  KEY `IX_TGL_TERIMA` (`TGL_TERIMA`),
  KEY `IX_02` (`ID_NASKAH`,`KODE_KANTOR`,`KODE_TL`,`NPK`,`TGL_TERIMA`),
  KEY `IX_KODE_KANTOR` (`KODE_KANTOR`),
  KEY `IX_NPK` (`NPK`),
  KEY `IX_03` (`ID_NASKAH`,`NPK`,`TGL_TERIMA`),
  KEY `IX_04` (`NPK`,`ID_NASKAH`),
  KEY `IX_06` (`NPK_DISPOSISI`,`ID_NASKAH`),
  KEY `IX_07` (`ID_NASKAH`,`KODE_KANTOR`,`ST_TL`),
  KEY `IX_05` (`KODE_TL`,`ID_NASKAH`,`TGL_TERIMA`),
  KEY `IX_ST_TL` (`ST_TL`),
  KEY `IX_09` (`NPK`,`KODE_TL`,`ID_NASKAH`),
  KEY `IX_16` (`ID_NASKAH`,`NO_URUT`,`KODE_TL`,`NPK`),
  KEY `IX_ID` (`ID`),
  KEY `IX_11` (`ID_NASKAH`,`KODE_TL`,`ST_TL`,`KODE_KANTOR`),
  KEY `IX_12` (`ID_NASKAH`,`NPK_DISPOSISI`,`NPK`,`NO_URUT`),
  KEY `IX_13` (`ID_NASKAH`,`KODE_TL`,`TGL_TERIMA`,`KODE_KANTOR`),
  KEY `IX_14` (`ID_NASKAH`,`KODE_TL`,`KODE_KANTOR`),
  KEY `IX_15` (`ID`,`KODE_TL`,`ID_NASKAH`,`KODE_KANTOR`),
  KEY `IX_NO_URUT` (`NO_URUT`),
  KEY `IX_22` (`ID_NASKAH`,`KODE_TL`,`ST_TL`),
  KEY `IX_17` (`KODE_TL`,`NPK`,`TGL_TERIMA`),
  KEY `IX_19` (`ID_NASKAH`,`KODE_TL`),
  KEY `IX_20` (`ID_NASKAH`,`NO_URUT`,`KODE_TL`),
  KEY `IX_21` (`ID_NASKAH`,`NO_URUT`),
  KEY `idx_naskah_masuk_tl` (`KODE_TL`,`NPK`,`TGL_TERIMA`),
  KEY `idx_naskah_tl_id_naskah_new` (`ID_NASKAH`,`KODE_KANTOR`,`KODE_TL`,`NPK`,`TGL_TERIMA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_TUNING`
--

DROP TABLE IF EXISTS `TR_NASKAH_TUNING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_TUNING` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `V_KODE_JENIS_NASKAH` int(11) DEFAULT NULL,
  `KODE_JENIS_NASKAH` varchar(10) DEFAULT NULL,
  `ID_NASKAH` varchar(256) DEFAULT NULL,
  `NO_NASKAH` varchar(100) DEFAULT NULL,
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` datetime DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  `AKTIF` varchar(1) DEFAULT NULL,
  `EXTENSION` varchar(20) DEFAULT NULL,
  `PATH` longtext DEFAULT NULL,
  `ST_DRAFT` varchar(1) DEFAULT NULL,
  `ST_SEND` varchar(1) DEFAULT NULL,
  `FORM_DATA` longtext DEFAULT NULL,
  `ATTACHMENT_DATA` longtext DEFAULT NULL,
  `TGL_NASKAH` datetime DEFAULT NULL,
  `KODE_KANTOR` varchar(10) DEFAULT NULL,
  `NPK` varchar(10) DEFAULT NULL,
  `NAMA_JABATAN` longtext DEFAULT NULL,
  `NAMA_FILE` varchar(1000) DEFAULT NULL,
  `ID_POINTER` varchar(256) DEFAULT NULL,
  `REQ_DATA_POINTER` longtext DEFAULT NULL,
  `REQ_URL_POINTER` longtext DEFAULT NULL,
  `ID_ARSIP` varchar(100) DEFAULT NULL,
  `KODE_POINTER` varchar(255) DEFAULT NULL,
  `SFDT` longtext DEFAULT NULL,
  `TGL_BATAL` datetime DEFAULT NULL,
  `PETUGAS_BATAL` varchar(10) DEFAULT NULL,
  `ST_BATAL` enum('Y','T') DEFAULT NULL,
  `ST_HAPUS` enum('Y','T') DEFAULT NULL,
  `TGL_HAPUS` datetime DEFAULT NULL,
  `KET_HAPUS` varchar(1000) DEFAULT NULL,
  `PETUGAS_HAPUS` varchar(10) DEFAULT NULL,
  `KET_BATAL` varchar(1000) DEFAULT NULL,
  `ST_MASAL` varchar(1) DEFAULT 'T',
  `ST_FILE_KONVENSIONAL` varchar(1) DEFAULT 'T',
  `NAMA_FILE_HIST1` varchar(1000) DEFAULT NULL,
  `EXTENSION_HIST1` varchar(20) DEFAULT NULL,
  `PATH_HIST1` longtext DEFAULT NULL,
  `ST_CUTOFf` enum('Y','T') DEFAULT NULL,
  `ID_CUTOFF` varchar(100) DEFAULT NULL,
  `JML_HALAMAN` int(5) DEFAULT 0,
  `TAHUN` varchar(4) NOT NULL,
  `BULAN` varchar(2) NOT NULL,
  PRIMARY KEY (`ID`,`TAHUN`,`BULAN`),
  UNIQUE KEY `ID_NASKAH` (`ID_NASKAH`) USING BTREE,
  KEY `TR_NASKAH_IDX2` (`ST_SEND`) USING BTREE,
  KEY `TR_NASKAH_IDX1` (`KODE_JENIS_NASKAH`,`V_KODE_JENIS_NASKAH`) USING BTREE,
  KEY `IX_01` (`ID_NASKAH`,`AKTIF`),
  KEY `IX_02` (`NPK`,`KODE_POINTER`,`ST_HAPUS`),
  KEY `IX_NPK` (`NPK`),
  KEY `IX_KODE_POINTER` (`KODE_POINTER`),
  KEY `IX_ST_HAPUS` (`ST_HAPUS`),
  KEY `IX_03` (`ST_HAPUS`,`ID_NASKAH`),
  KEY `IX_04` (`KODE_POINTER`,`ID_POINTER`,`ST_HAPUS`,`KODE_KANTOR`),
  KEY `IX_ID_POINTER` (`ID_POINTER`),
  KEY `IX_KODE_KANTOR` (`KODE_KANTOR`),
  KEY `IX_05` (`ID_NASKAH`,`NPK`),
  KEY `IX_KODE_JENIS_NASKAH` (`KODE_JENIS_NASKAH`),
  KEY `IX_06` (`KODE_POINTER`,`ID_POINTER`),
  KEY `IX_07` (`ID_NASKAH`,`ID_ARSIP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_NASKAH_TUNING3`
--

DROP TABLE IF EXISTS `TR_NASKAH_TUNING3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_NASKAH_TUNING3` (
  `ID` int(11) NOT NULL,
  `ITEM` varchar(45) DEFAULT NULL,
  `TAHUN` int(4) NOT NULL,
  `BULAN` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`TAHUN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_PEMINDAHAN_ARSIP_SYSTEM_LOG`
--

DROP TABLE IF EXISTS `TR_PEMINDAHAN_ARSIP_SYSTEM_LOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_PEMINDAHAN_ARSIP_SYSTEM_LOG` (
  `ID_PROSES` varchar(1000) NOT NULL,
  `TGL_PROSES` datetime DEFAULT NULL,
  `ST_PROSES` varchar(1) DEFAULT NULL,
  `LOG` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TR_TINDAK_LANJUT`
--

DROP TABLE IF EXISTS `TR_TINDAK_LANJUT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TR_TINDAK_LANJUT` (
  `ID_NASKAH` varchar(100) NOT NULL,
  `KODE_JENIS_TL` int(11) NOT NULL,
  `NO_URUT` int(11) NOT NULL,
  `KODE_USER` varchar(10) NOT NULL,
  `KODE_TL` varchar(10) DEFAULT NULL,
  `TGL_TL` datetime DEFAULT NULL,
  `KETERANGAN_TL` varchar(256) DEFAULT NULL,
  `IS_READ` varchar(1) DEFAULT 'T',
  `IS_FAVORITE` varchar(1) DEFAULT 'T',
  `ST_SIGN` varchar(1) DEFAULT 'T',
  `IS_SIGN` varchar(1) DEFAULT 'T',
  `ST_INISIAL` varchar(1) DEFAULT 'T',
  `IS_INISIAL` varchar(1) DEFAULT 'T',
  `TGL_REKAM` datetime DEFAULT NULL,
  `PETUGAS_REKAM` varchar(10) DEFAULT NULL,
  `TGL_UBAH` date DEFAULT NULL,
  `PETUGAS_UBAH` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID_NASKAH`,`KODE_JENIS_TL`,`NO_URUT`,`KODE_USER`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `XT_SESSION`
--

DROP TABLE IF EXISTS `XT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `XT_SESSION` (
  `ID` varchar(255) NOT NULL,
  `DT` datetime NOT NULL DEFAULT current_timestamp(),
  `IP` varchar(50) DEFAULT NULL,
  `UA` text DEFAULT NULL,
  `KODE_USER` varchar(50) DEFAULT NULL,
  `ST_AKTIF` char(1) DEFAULT 'Y',
  PRIMARY KEY (`ID`),
  KEY `IX_01` (`KODE_USER`,`DT`,`ST_AKTIF`),
  KEY `IX_02` (`KODE_USER`),
  KEY `IX_03` (`DT`),
  KEY `IX_04` (`ST_AKTIF`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_distance`
--

DROP TABLE IF EXISTS `document_distance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_distance` (
  `distance` decimal(15,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `document_tfidf`
--

DROP TABLE IF EXISTS `document_tfidf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document_tfidf` (
  `keyword` varchar(45) NOT NULL,
  `tf` longtext DEFAULT NULL,
  `df` decimal(15,5) DEFAULT NULL,
  `idf` decimal(15,5) DEFAULT NULL,
  `tfidf` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jabatan`
--

DROP TABLE IF EXISTS `jabatan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jabatan` (
  `position_id` varchar(100) NOT NULL,
  `unit_kantor_induk` varchar(100) DEFAULT NULL,
  `nama_jabatan` varchar(200) DEFAULT NULL,
  `position_level_rank` varchar(100) DEFAULT NULL,
  `struktural` varchar(100) DEFAULT NULL,
  `position_code` varchar(100) DEFAULT NULL,
  `nama_jabatan2` varchar(200) DEFAULT NULL,
  `unit_kantor` varchar(100) DEFAULT NULL,
  `nama_kantor` varchar(100) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `position_level` varchar(100) DEFAULT NULL,
  `jobstatuscode` varchar(100) DEFAULT NULL,
  `position_active` varchar(100) DEFAULT NULL,
  `position_flag` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `numbering_queue`
--

DROP TABLE IF EXISTS `numbering_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `numbering_queue` (
  `task_key` text DEFAULT NULL,
  `task_value` text DEFAULT NULL,
  `status` enum('pending','processing','completed') DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pegawai` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(20) DEFAULT NULL,
  `nik` varchar(100) DEFAULT NULL,
  `nama_jobtitle_2` varchar(200) DEFAULT NULL,
  `unit_kantor_induk` varchar(200) DEFAULT NULL,
  `nama_jobtitle` varchar(200) DEFAULT NULL,
  `position_level_rank` varchar(100) DEFAULT NULL,
  `struktural` varchar(100) DEFAULT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `tgl_lahir` datetime DEFAULT NULL,
  `mpp` datetime DEFAULT NULL,
  `mpp_done` datetime DEFAULT NULL,
  `job_title` varchar(200) DEFAULT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `golongan` varchar(10) DEFAULT NULL,
  `penempatan_kembali` datetime DEFAULT NULL,
  `tmt_pengangkatan` datetime DEFAULT NULL,
  `tmt_grade_terakhir` datetime DEFAULT NULL,
  `tmt_grade_terakhir2` datetime DEFAULT NULL,
  `tmt_mutasi_terakhir` datetime DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `unit_kantor` varchar(200) DEFAULT NULL,
  `bidang` varchar(100) DEFAULT NULL,
  `status_aktif` varchar(50) DEFAULT NULL,
  `nama_unit` varchar(100) DEFAULT NULL,
  `nama_jobtitle2` varchar(200) DEFAULT NULL,
  `nama_bidang` varchar(200) DEFAULT NULL,
  `position_name` varchar(200) DEFAULT NULL,
  `kelas` varchar(100) DEFAULT NULL,
  `position_level` varchar(100) DEFAULT NULL,
  `jobstatuscode` varchar(50) DEFAULT NULL,
  `employment_code` varchar(50) DEFAULT NULL,
  `employment_status` varchar(50) DEFAULT NULL,
  `position_active` varchar(10) DEFAULT NULL,
  `position_flag` varchar(10) DEFAULT NULL,
  `nama_jabatan_spv` varchar(200) DEFAULT NULL,
  `nama_jabatan_utama` varchar(200) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `temp_all_user`
--

DROP TABLE IF EXISTS `temp_all_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp_all_user` (
  `kode_user` varchar(20) NOT NULL,
  `passwd` varchar(50) DEFAULT 'AFD00E0396E1683C7A166D172CE629BB',
  `plain_pw` varchar(10) DEFAULT NULL,
  `npk` varchar(20) DEFAULT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `kode_kantor` varchar(10) DEFAULT NULL,
  `nama_kantor` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-03 20:15:32
